@echo off
title Detener demo rediseno
taskkill /IM cloudflared.exe /F >nul 2>&1
for /f "tokens=5" %%p in ('netstat -ano ^| findstr ":8099" ^| findstr LISTENING') do taskkill /PID %%p /F >nul 2>&1
echo Demo detenida. Ojo: esto cierra TODOS los tuneles de cloudflared, incluido el de WordPress.
pause

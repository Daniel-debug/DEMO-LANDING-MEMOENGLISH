@echo off
title Demo rediseno - English Club School
set PHP="C:\Users\el_da\Desktop\MemoEnglish\LOCAL_DEV\runtime\php\php.exe"
set CF="C:\Program Files (x86)\cloudflared\cloudflared.exe"
cd /d "%~dp0"
start "Servidor rediseno 8099" %PHP% -S 0.0.0.0:8099 -t .
timeout /t 2 /nobreak >nul
start "Tunel rediseno" %CF% tunnel --url http://127.0.0.1:8099
echo.
echo Se abrieron dos ventanas. La URL publica aparece en la ventana "Tunel rediseno".
echo Deja ambas abiertas mientras quieras que el enlace funcione.
echo.
pause

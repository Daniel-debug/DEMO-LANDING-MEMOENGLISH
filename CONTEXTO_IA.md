# Contexto para IA y nuevos colaboradores — Landing

Actualizado: 28 de octubre de 2026.

Landing pública de **English Club School / MemoEnglish**. Es una sola página estática (`index.html` con CSS y JS integrados) y las imágenes están en `img/`.

## Repositorio y publicación

- Carpeta: `C:\Users\el_da\Documents\GIT - VEGA- 2`
- `origin` → `Daniel-debug/DEMO-LANDING-MEMOENGLISH`, rama `main`. GitHub Pages publica en https://daniel-debug.github.io/DEMO-LANDING-MEMOENGLISH/
- Esta carpeta también tiene el remoto **`DEMO-MEMOENGLISH`** (la plataforma de reservas), solo para ver sus ramas en SourceTree. **Al hacer push de la landing, elegir `origin`.** La plataforma se trabaja en `C:\Users\el_da\Documents\git-vega` y su guía está en el `CONTEXTO_IA.md` de esa carpeta.

## Conexión con la plataforma

- "Inicia sesión" (encabezado y menú móvil) y "Acceso de alumnos" (pie) apuntan a https://daniel-debug.github.io/DEMO-MEMOENGLISH/ **en la misma pestaña**, sin `target="_blank"`. Así, el botón Atrás de la plataforma vuelve aquí.
- La plataforma enlaza de regreso a estas secciones: `#inicio`, `#metodo`, `#plataforma`, `#cursos`, `#precios` y `#maestros`. **Si se renombran esos `id`, hay que actualizar `LANDING_URL` y sus enlaces en `happy-path.js` de la plataforma.**
- Las llamadas a la acción de clase muestra y nivel van a WhatsApp (`wa.me/526442288102`).

## Ejecutar

- `INICIAR_DEMO.cmd`: sirve la carpeta con el PHP portátil de `Desktop\MemoEnglish\LOCAL_DEV` en el puerto 8099 y abre un túnel público de cloudflared.
- `DETENER_DEMO.cmd`: detiene la demo; cierra **todos** los túneles de cloudflared, incluido el de WordPress.

## Historial

| Commit | Cambio |
|---|---|
| `8625ae5` | Primer commit |
| `fd78b0a` | Archivos en la raíz y acceso de alumnos a la demo de reservas |
| `c093a6f` | Menú móvil: cerrar con la X, al tocar fuera o con Escape |
| `81cdd47` | La plataforma se abre en la misma pestaña |

## Pendientes

- [ ] Precios reales en `#precios`: hoy muestra "$— / mes" en Essential (8 clases, 1 reagendado), Pro (12, 2 reagendados) e Intensive (16, 3 reagendados). La plataforma usa $80, $120 y $160 USD de ejemplo y aún no usa esos nombres ni el límite de reagendados.
- [ ] Mantener alineados los textos del programa (144 clases, tres niveles, 1 mes de vigencia) con la plataforma.
- [ ] Revisar en dispositivos reales el ida y vuelta landing ↔ plataforma.

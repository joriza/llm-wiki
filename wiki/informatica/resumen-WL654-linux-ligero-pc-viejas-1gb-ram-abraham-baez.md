# WL-654 — Un sistema moderno para PC viejas con 1 GB de RAM y más de 20 apps (Abraham Francisco Baez)

- **Fuente**: `raw/informatica/2026-11-17-esto-es-una-total-locura-un-sistema-moderno-para-pc-viejas-con-1gb-de-ram-y-mas-.md`
- **Video**: https://www.youtube.com/watch?v=E9hQu-uogew · Canal: Abraham Francisco Baez · 2026-11-17 · 13:46 · subtítulos automáticos (ASR)
- **Tipo**: tutorial de instalación (1.ª fuente del canal en la wiki)
- **Dominio definitivo**: informatica (Linux ligero / resurrección de hardware — consolidación T17)

## Contenido

Tutorial paso a paso de instalación de una distribución Linux ligera —transcrita como «Lor OS» / `loros.org` (ASR; verificar el nombre exacto en la página antes de citar)— para revivir computadoras viejas:

- **Requisitos y descarga** ([01:13]): ISO de ~1 GB; ~465 MB de RAM en reposo; imagen «PC y ARM 64».
- **USB booteable** ([02:37]): Rufus (`rufus.ie`); MBR para equipos viejos, GPT para modernos; aviso de borrado de la USB.
- **Arranque y prueba live** ([04:48]–[07:00]): menú de booteo (F12 según marca; pantalla de referencia de teclas), arranque desde USB sin tocar el disco interno; ~676 MB de RAM en uso.
- **Instalación** ([07:00]–[08:31]): selector de idioma/teclado, borrado del disco con aviso explícito, swap hasta 8 GB como memoria virtual, usuario/contraseña; instalación completa en <7 minutos.
- **Tour de escritorio** ([08:52]–[12:14]): Wi-Fi, ajustes (apariencia, pantalla, Bluetooth, impresoras), gestor de archivos, apps integradas (Firefox, Chromium, monitor, terminal, oficina básica) — «más de 20 apps» del título; ~700 MB de RAM con las apps cargadas.
- **Requisitos finales** ([12:38]): <1 GB para probar; 4 GB recomendados para uso real; CPU 64 bits, 2 núcleos / 4 hilos.

## Evaluación

- Tutorial correcto y honesto en lo esencial: declara los requisitos realistas (4 GB recomendados, no 1 GB) en lugar de sobre-vender el titular; advierte dos veces sobre el borrado de datos (USB y disco); muestra la medición de RAM en vivo en tres puntos.
- Limitaciones: no explica **qué** es la distribución (base, entorno de escritorio, proyecto detrás) — el video es demostración pura; las cifras de RAM dependen del equipo y no se detalla el hardware de prueba; el nombre del sistema queda dudoso por el ASR.

## Cruces

- Hilo resurrección de hardware viejo con Linux ligero: candidata a cruzar con fuentes previas del mismo tema en la consolidación (T17).

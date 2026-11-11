# Resumen: Herramientas IA #12 — Creando vídeo con HyperFrames y OpenCode

- **Tipo**: resumen de fuente (tutorial: vídeo programático con HyperFrames + agente).
- **Canal**: Darellanodev (entidad pendiente de consolidación; también 39/57).
- **Publicado**: 2026-07-05. **Duración**: 15:06.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=jYawp25fCzc).
- **Raw**: [raw/inteligencia-artificial/2026-07-05-herramientas-ia-12-creando-video-con-hyperframes-y-opencode.md](../../raw/inteligencia-artificial/2026-07-05-herramientas-ia-12-creando-video-con-hyperframes-y-opencode.md) (subtítulos automáticos, transcripción literal).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]].
- **Disposición de la ingesta**: Nueva.

## Tesis central

**HyperFrames**: herramienta open source para editar y crear vídeo de forma **programática con HTML y JavaScript** sencillos — la alternativa a Remotion (que usa React) para quien no quiera una librería de componentes. La demo del canal sigue su patrón habitual: proyecto base manual mínimo (la «analogía del teatro»), y luego el agente (**OpenCode**, modelo gratuito Big Pickle) se encarga de las escenas complejas: dos textos que se juntan, tres escenas con timing, iconos y un contador animado. Export MP4 (Full HD, 60 fps) desde el editor web integrado.

## Recorrido del vídeo

- **[00:36-02:33] Requisitos**: Node.js y **FFmpeg** (descarga, descompresión y añadir `bin/` al PATH de Windows; verificar con `ffmpeg` en la terminal).
- **[02:04-03:24] Init**: `npx hyperframes init .` → plantilla `blank` → **instala un paquete de skills** (el init avisa: «revisa los skills antes de utilizar») y abre un **editor de vídeo en el navegador** con pistas y botón play. Primer commit del proyecto en Git.
- **[04:22-06:35] Concepto base (analogía del teatro)**: en `index.html`, cada elemento es un «actor» con `data-start` (entra en el tiempo 0) y `data-duration` (5 s en la obra); su «coreografía» se define en JavaScript (opacidad 0, `y: -50` fuera de pantalla, transición de 1 s) y el estado final es el CSS por defecto del elemento. Reproducción en el editor: el texto baja con fade y desaparece al cumplirse su duración.
- **[06:35-09:05] Prompt 1 con OpenCode**: «dos textos, Bienvenido a desde arriba y HyperFrames desde abajo, moviéndose hacia el centro en grande, 100-120 px, transición vistosa (ease/escala/rebote), animación de 2 s, visible el resto de los 10 s». El agente encuentra los skills «Hyper Frames Score» y «Hyper Frames Animation», edita `index.html` (dos elementos + dos instrucciones JS, `line 1`/`line 2`) y el resultado se reproduce con rebote centrado.
- **[09:32-13:07] Prompt 2 (tres escenas, 16 s)**: escena 1 (0-3 s, fade out 0,5 s, icono con rebote + texto); escena 2 (entrada desde lados opuestos); escena 3 (7-16 s) que **reutiliza la animación existente** del bloque bienvenida + icono con escala/rotación, y a partir del segundo 3 un **contador animado de 0 a 32.300** con easing tipo power («cuenta rápido al inicio y se desacelera») junto al texto «popularidad en GitHub». El agente planifica con lista de tareas (explorar assets, planificar composición/timing, escribir escenas, chequeo) — se ve pasar por el **compresor de contexto** («DCP», explicado en un vídeo anterior del canal).
- **[13:07-14:41] Export**: botón export → MP4, opciones de frame rate (elige 60 fps), resolución Full HD y calidad estándar; render con barra de progreso (960 frames) y resultado en `renders/`.

## Puntos clave

1. **Vídeo como código web**: actores HTML con `data-start`/`data-duration` + coreografía JS; «la analogía del teatro» hace entendible el modelo sin React [04:22-06:35].
2. **Skills nativas del init** (Score, Animation): el agente las descubre y las usa; el init recomienda revisarlas antes de usar [02:04-03:24, 07:52-08:20].
3. **OpenCode con modelo gratuito (Big Pickle)** ejecuta las escenas complejas: prompts detallados con timing explícito, reutilización de animaciones y easing especificado [06:35-13:07].
4. **Prompt como especificación**: duraciones, fades, easing y comportamiento final declarados en el prompt — el agente planifica con tareas y verifica [09:51-13:07].
5. **Export MP4 configurable** (fps, resolución, calidad) desde el propio editor [13:07-14:41].

## Notas sobre la fuente

- Nombres garbiñados que este resumen normaliza: «Hyper Frames/Hyperframes» → HyperFrames, «Open Code» → OpenCode, «FFMP/FFMPEG/FFMPG» → FFmpeg, «MPX» → npx, «Big Pickle» → Big Pickle (modelo gratuito de OpenCode, ya visto en 30/57), «DCP» → compresor de contexto (herramienta propia explicada en otro vídeo del canal), «comit/comites» → commit, «Kighat» → GitHub, «paz» → PATH, «fate out» → fade out, «toos/toús» → tasks/tareas.
- Cruce directo con [[resumen-herramientas-ia-2-video-remotion-opencode-darellanodev]] (39/57, mismo canal y mismo workflow con Remotion + OpenCode): HyperFrames es su alternativa sin React — consolidación conjunta pendiente en [[agentes-de-codigo]].
- Fuente 40/57 de la playlist «IA-Recursos» (video ID canónico `jYawp25fCzc`; el log del 2026-11-10 la llamaba «fuente 39»); la fuente que falló en W2 ya queda ingerida; raw por el fallback de subtítulos.

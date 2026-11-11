# Resumen: Clawdbot es una PUTA LOCURA: El asistente de IA que lo hace TODO

- **Tipo**: resumen de fuente (reseña-guía: agente personal de IA con acceso al ordenador).
- **Canal**: Inteligencia Artificial (página de entidad pendiente de consolidación).
- **Publicado**: 2026-01-28. **Duración**: 17:20.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=yLKuq6SpMfs).
- **Raw**: [raw/inteligencia-artificial/2026-01-28-clawdbot-es-una-locura-asistente-ia-inteligencia-artificial.md](../../raw/inteligencia-artificial/2026-01-28-clawdbot-es-una-locura-asistente-ia-inteligencia-artificial.md) (transcripción local generada con faster-whisper por bloqueo de timedtext; puede contener errores de reconocimiento).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (agentes personales, seguridad y prompt injection).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Presentación de **Clawdbot** (renombrado «Moldbot» tras la advertencia de Anthropic por la similitud con Claude, según el canal) tras unos días de uso: un agente personal con acceso al ordenador — crea carpetas, documentos Word, presentaciones, navega la web, programa con vibe coding — y cuya gran diferenciación es la **capa de mensajería**: se controla por WhatsApp, Telegram, Slack o la app que se quiera, «multiplicando la usabilidad» porque se le manda texto o voz desde cualquier sitio. Demostración estrella: la tarea nocturna de entender al propio usuario — descargar todo su canal de YouTube, transcribirlo con Whisper en local, crear una base de datos segmentada de sus opiniones y un buscador indexado.

## Recorrido del vídeo

- **[00:00-02:43] Demo de apertura**: «Clippy» (asistente personal del autor sobre Clawdbot) recibe la tarea por WhatsApp de hacer un short vertical con subtítulos del último vídeo del canal; mientras trabaja, el autor presenta la herramienta y su instalación (wizard en terminal; funciona mejor en macOS y Linux, desaconsejado en Windows).
- **[03:47-05:13] Seguridad de la instalación**: no instalarlo en el ordenador principal — el agente tiene acceso a todo (archivos, contraseñas; «si alucina podría borrarte archivos»). Opciones: Mac mini dedicado (~700 €) o VPS; el autor **desaconseja el VPS** («quienes lo instalan sin idea de programación acaban dejando ventanas abiertas») y recomienda máquina física aislada con correo, número de WhatsApp y calendario propios.
- **[05:13-06:27] La capa de mensajería**: conexión con WhatsApp/Telegram/Slack/Teams; se recibe el progreso del short por chat («el render se ha parado en el paso de recorte, lo estoy corrigiendo») y el resultado: un reel vertical generado de forma autónoma.
- **[07:45-11:25] Casos de uso nocturnos**: asistente personal (calendario, vuelos, resumir/editar/borrar correos — «tú decides el nivel de implicación»); documento Word con investigación web por voz desde WhatsApp (informe de 3 páginas sobre DHL como cliente potencial); y la tarea «más bestia»: aprender quién es el usuario descargando y transcribiendo todo su canal (el agente saltó los bloqueos anti-bot de YouTube «buscándose la vida») y montando una base de datos de sus opiniones con buscador.
- **[11:49-13:08] Uso real y comparación**: control desde las gafas Ray-Ban Meta por voz («lo más cercano a Jarvis»); en 4-5 días usa mucho menos ChatGPT — los GPTs se reproducen dentro como skills o apps con cara y voz.
- **[13:08-17:15] Los peligros (como prometido)**: **prompt injection** como riesgo principal — ejemplo: acceso a correo + claves bancarias + un email malicioso que se hace pasar por el usuario pidiendo una transferencia («si se hace suficientemente bien podría llegar a hacer eso»). El autor mantiene todo aislado (Mac mini, número y correo propios, solo lectura de calendario) y prevé que en 6-8 meses las plataformas comerciales (Gemini, Copilot, ChatGPT) replicarán esto «porque un tío desde su garaje les ha mostrado el camino de lo que debería haber sido Siri».

## Puntos clave

1. **Agente personal + mensajería = usabilidad**: el diferenciador no es el modelo sino interactuar por WhatsApp/Telegram desde cualquier sitio, por texto o voz [05:13-06:01].
2. **Tareas nocturnas autónomas**: shorts de vídeo, informes Word con investigación web, y aprendizaje del usuario con base de datos propia de sus opiniones [08:10-11:25].
3. **Aislamiento como protocolo de seguridad**: máquina dedicada, identidad propia (correo, número, calendario en solo lectura) y nada en el ordenador principal [03:47-05:13].
4. **Prompt injection con acceso real es el escenario de daño**: correo + banco + instrucciones maliciosas entrantes = transferencias no autorizadas [13:32-14:49].
5. **Contraste honesto**: «no es perfecto, tiene muchísimos bordes que pulir» — pero el uso de ChatGPT cae radicalmente [12:38-13:08].

## Notas sobre la fuente

- **Transcripción ASR local (faster-whisper small) por bloqueo de timedtext**: nombres garbiñados que este resumen normaliza: «Cloudbot/Clawd/Clot» → Clawdbot, «Moldbot» → renombrado posterior (actualmente OpenClaw), «Clippy/Clipi» → apodo del asistente del autor, «CloudCode» → Claude Code, «ryban meta» → Ray-Ban Meta, «Malman» → Sam Altman, «John Hernández» → probable Juan Hernández. A verificar si se eleva a página de entidad.
- Solapa directamente con la fuente 22/57 ([[resumen-que-es-clawdbot-futuro-asistentes-virtuales-dot-csv-lab]], mismo producto visto por Dot CSV Lab) y con el caso Antigravity (15/57) en la vertiente de seguridad: consolidación conjunta pendiente.
- Incluye patrocinio (CyberGhost VPN) entre [06:52] y [07:45], transcrito en el raw y excluido de la síntesis.
- Fuente 23/57 de la playlist «IA-Recursos» (video ID canónico `yLKuq6SpMfs`); primera fuente obtenida por la ruta audio + whisper en la sesión de reingreso.

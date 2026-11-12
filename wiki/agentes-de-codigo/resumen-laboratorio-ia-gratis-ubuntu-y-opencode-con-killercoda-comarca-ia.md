# Resumen: Laboratorio IA GRATIS — Ubuntu y OpenCode con Killercoda desde tu navegador

- **Tipo**: resumen de fuente (tutorial: laboratorio de IA en la nube con Killercoda + OpenCode).
- **Canal**: Comarca IA (Hugo Paredes; entidad pendiente de consolidación).
- **Publicado**: 2026-06-23. **Duración**: 09:19.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=r8bJpmw19_s).
- **Raw**: [raw/ia-uso-practico/2026-06-23-laboratorio-ia-gratis-ubuntu-y-opencode-con-killercoda-desde-tu-navega.md](../../raw/ia-uso-practico/2026-06-23-laboratorio-ia-gratis-ubuntu-y-opencode-con-killercoda-desde-tu-navega.md) (subtítulos automáticos, transcripción literal).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]].
- **Disposición de la ingesta**: Nueva.

## Tesis central

Montar un **laboratorio de IA gratuito y efímero** sin gastar recursos locales ni pagar APIs: un Ubuntu 24.04 LTS efímero en **Killercoda** (playground gratuito de 1 hora por sesión, renovable recargando la página) + **OpenCode** instalado con un `curl`, usando sus modelos 100 % gratuitos. Presentado como entorno de **pruebas y aprendizaje**, no de producción: al agotarse la hora, la máquina se borra entera.

## Recorrido del vídeo

- **[00:00-01:24] Propuesta**: para equipos con hardware limitado para modelos locales o sin presupuesto de API; todo corre en una pestaña de Chrome. OpenCode es el agente de terminal multi-proveedor con plan gratuito generoso, y también conectable a Ollama/LM Studio (quedan para vídeos siguientes del canal).
- **[01:49-03:10] Killercoda**: registro gratuito (Google); planes de pago ($9,99/mes o $69,99/año, suscripción de $30/mes) solo añaden extras; el tier gratuito da **1 hora por máquina**. Playgrounds: Ubuntu, Kubernetes, CKS, etc. Se elige Ubuntu 24.04.
- **[03:10-04:52] Instalación de OpenCode**: `curl` de instalación en la terminal, recarga de variables de entorno, crear y entrar a un directorio de proyecto (**requisito**: OpenCode exige estar dentro de un directorio) y lanzar `opencode`. Manual completo en comarca.pro/recursos.
- **[05:03-05:53] Límite de tiempo**: 1 hora gratuita por máquina; renovable recargando la página; el plan Plus extiende sesiones a 4 horas. Al acabarse, **se elimina todo** — solo apto para pruebas; producción → VPS, servidor local o PC propio.
- **[05:40-06:38] Modelos gratuitos de OpenCode**: 5 servicios gratuitos (Big Pickle, DeepSeek V4 Flash, MiMo 2.5 de Xiaomi, Nemotron 3 Ultra de Nvidia, y otro «Mini Code free»); el autor dice no haber agotado nunca los tokens gratuitos. Plan Go a $5 (cuota mayor) y OpenCode Zen (modelos de Claude, Gemini y OpenAI).
- **[06:38-08:38] Pruebas**: prompt 1 (script Python hola.py) con DeepSeek V4 Flash en nivel «high» — 5 s, ~4 % de la cuota; prompt 2 (script Bash info.sh con RAM total/disponible) con MiMo 2.5 — 6,2 s, y el script ejecutado informa de la memoria real de la VM (1,9 GB). Cierre: «el navegador convertido en laboratorio de IA gratuito», recursos locales intactos.

## Puntos clave

1. **Killercoda + OpenCode = laboratorio IA de coste cero**: Ubuntu 24.04 efímero (1 h) con el agente instalado por `curl` [00:00-04:52].
2. **Efímero por diseño**: se borra todo al acabar la hora (renovable) — plataforma de pruebas, nunca producción [05:03-05:40].
3. **Cuota gratuita de OpenCode suficiente para pruebas** (un script usó ~4 %): modelos gratuitos con niveles de esfuerzo («high») y seguimiento de coste en la UI [05:40-07:03].
4. **OpenCode exige directorio de proyecto** para arrancar — el paso de `mkdir` no es opcional [04:27].
5. Continuidad anunciada del canal: conectar OpenCode a **Ollama/LM Studio** para IA local privada en vídeos siguientes [06:20-08:38].

## Notas sobre la fuente

- Nombres garbiñados de los subtítulos que este resumen normaliza: «Killer Code/Killer Coda/Killercode» → **Killercoda**, «Open Coda/Open Code» → **OpenCode**, «el mismo 2.5 de Xiaomi» → probable **MiMo 2.5** (modelo de Xiaomi), «Nok Mini Code Free» → sin identificar con certeza (posible «Nemotron Mini» u otro modelo free de la lista de OpenCode; verificar contra la UI real). «Cloud» → Claude, «Open AI» → OpenAI.
- Cruza directamente con [[agentes-de-codigo]] (OpenCode ya cubierto por 38/57 [[resumen-herramientas-ia-2-video-remotion-opencode-darellanodev]]) y con la línea de laboratorios efímeros en la nube de [[resumen-comfyui-tutorial-completo-flux-dev-sd35-ia-paso-a-paso]] (GPU por hora en RunPod para imagen).
- Fuente 30/57 de la playlist «IA-Recursos» (video ID canónico `r8bJpmw19_s`); raw descargado por el fallback de subtítulos de `.atl/fetch_yt.py` (ruta literal, no ASR).

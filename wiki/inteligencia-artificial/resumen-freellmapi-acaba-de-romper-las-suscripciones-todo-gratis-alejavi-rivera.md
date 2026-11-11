# Resumen: ¡FreeLLMAPI acaba de romper las suscripciones de IA! TODO GRATIS y SIN límites

- **Tipo**: resumen de fuente.
- **Dominio**: `inteligencia-artificial/`.
- **Fuente original**: `raw/inteligencia-artificial/2026-09-17-freellmapi-acaba-de-romper-las-suscripciones-de-ia-todo-gratis-y-sin-l.md` (subtítulos automáticos, literal) — https://www.youtube.com/watch?v=7Oez8kmknOA — Alejavi Rivera, 2026-09-17 (30:51).
- **Enlaces**: [[resumen-crea-apps-ia-api-gratis-dev-knives]] (cobertura anterior de la misma herramienta) · [[agentes-de-codigo]] · [[resumen-deje-de-pagar-4-suscripciones-de-ia-por-estos-repos-fazt]]

## Qué es y por qué importa

**FreeLLMAPI** (desarrollada por «Tasmen Asmet», un empleado de Microsoft, según el transcript garbiño) unifica en una API y panel propio **solo modelos 100 % gratuitos**: +700 modelos compatibles, ~7,4 millones de tokens gratuitos al mes disponibles vía proveedores agregados. El enfoque diferencial frente a OpenRouter y similares: **extrae automáticamente únicamente los modelos gratuitos** al pegar una clave, sin necesidad de filtrar para evitar gastar créditos. Segundo video del lote dedicado a esta herramienta (ver [[resumen-crea-apps-ia-api-gratis-dev-knives]]); este entra más en análisis, priorización de modelos y despliegues.

## Instalación

- Versión 0.99 al momento de grabar (mediados de septiembre se lanzó el instalador fácil): DMG para Mac, exe/zip para Windows, y **apps móviles** (Android/iOS) para usarla sin ordenador.
- **Aplicación de escritorio nativa** bien diseñada; las páginas de precios del sitio solo cubren el plan de pago (~50 USD/año u pago único), cuyo único beneficio es el **catálogo en vivo** (la versión gratuita retrasa los modelos nuevos hasta 30 días).
- También desplegable en móvil y en **servidor/VPS con Docker** (el autor usa Hostinger sin patrocinio, aclarado en el vídeo): sigue funcionando 24/7 aunque los dispositivos locales se apaguen.

## Proveedores gratuitos a conectar

OpenRouter (~10 modelos gratuitos), **Google AI Studio**, **Grok** (razonamiento con tools, texto-a-voz, transcripción), Hugging Face, y proveedores con promociones activas (bonificaciones mensuales, créditos semanales, modelos premium regalados, DeepSeek V4.1 Flash días después de lanzarse). Consejo: **cuantos más proveedores conectados, mejor** — si un modelo falla, cambia automáticamente al siguiente. Opción de punto final personalizado para agregar **Ollama** local (privacidad) como un proveedor más.

## Playground y enrutamiento

- **Playground** tipo ChatGPT con todos los modelos conectados; por modelo muestra proveedor, límites, visión, y puntuaciones de **fiabilidad y velocidad** calculadas por uso propio.
- Tres modos: **selección automática** (elige el mejor para la tarea; ante fallo pasa al siguiente), **fusión** (la misma tarea a varios modelos en paralelo y un agente evaluador decide la mejor respuesta) y **estrategia de enrutamiento manual** (equilibrado por defecto; ponderar inteligencia o velocidad).
- Ejemplo real: pregunta en modo fusión resuelta por «GPT OS» (120 mil millones de parámetros según el transcript) con GLM 5.2, Gemini 3.6 y Kimi K3 involucrados.

## Conexión con agentes

- Sección «Agentes» con configuración automática de un comando para vincular la clave API unificada a **Claude Code**, Codex, Kimi, arneses tipo DeepSeek, etc.
- Demo con Claude CLI: verificando en el panel de análisis que las respuestas venían de Gemini 3 (Google) y Nemotron 3 (Nvidia), no de la suscripción Pro.
- Mapeo personalizado tipo Anthropic: **Opus → modelo potente**, Sonnet → GLM 5.2, Haiku → ligero; recomendación del modo automático si no importa el modelo concreto.

## Análisis y trazabilidad

Panel completo: tokens gratuitos restantes (~200 millones al inicio según el autor), consumo por modelo, tasa de éxito por proveedor y por modelo, latencia, ahorro estimado (lo probado «habría costado casi 15 USD»), solicitudes por herramienta (Claude Code 61), registros filtrables por éxito/error/canceladas. Se puede **desmarcar** un modelo cuya respuesta no guste y dejar de usarlo.

## Configuración avanzada

- **Compresión de conversaciones** para estirar los límites gratuitos: desactivada por defecto (evitar pérdida de contexto), estándar sin pérdidas o agresiva; recomendación empezar desactivada.
- Motores de reescritura experimentales, **perfiles de modelo** propios e integración vía **MCP**.

## Notas sobre la fuente

- Garbiñeos del transcript corregidos en el resumen: «Free LLMPI/LLMI gratis» = FreeLLMAPI; «Cloud/Cloudsonet/Cloud Code» = Claude/Claude Sonnet/Claude Code; «GitTunes» = GitHub; «Meet» = MIT; «Locker» = Linux; «Grock» = Grok; «Haging Face» = Hugging Face; «Antropía/GBT/Fable» = Anthropic/GPT/opinión del autor no verificada (estimación citada como tal); «Chemistry 3» = Gemini 3; «GPT 6 Sol» según lo pronunciado; «Investigación de Ventas» (proveedor) dudoso(?).
- Afiliación **Manus AI** (enlace especial del autor) en el bloque central — excluida de la síntesis.
- Autopromoción: programa intensivo de IA — excluida de la síntesis.
- El dato de «44.400 USD/mes equivalente» y «220 licencias» es la estimación del autor, citada como tal.

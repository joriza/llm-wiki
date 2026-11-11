# Resumen: Crea apps con IA usando esta API GRATIS

- **Tipo**: resumen de fuente (tutorial técnico de infraestructura/API).
- **Canal**: Dev Knives (página de entidad pendiente de consolidación).
- **Publicado**: 2026-07-15. **Duración**: 21:30.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=9o1TT3ie_9M).
- **Raw**: [raw/inteligencia-artificial/2026-07-15-crea-apps-ia-api-gratis-dev-knives.md](../../raw/inteligencia-artificial/2026-07-15-crea-apps-ia-api-gratis-dev-knives.md) (transcripción de subtítulos automáticos con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (FreeLLMAPI, agregación de APIs gratuitas, modo fusión con modelo juez, Coolify, integración OpenCode/Claude Code).
- **Disposición de la ingesta**: Nueva.

## Tesis central

**FreeLLMAPI** —repositorio de código abierto— recopila en una única API y panel de control a los proveedores que ofrecen modelos top en la nube de forma gratuita (Nvidia, Grok, Cerebras, Mistral, Google AI Studio, OpenRouter…), sin ejecutar nada en local. Su función estrella es el **modo fusión**: varios modelos responden en paralelo y un «modelo juez» sintetiza o elige la mejor respuesta, elevando la calidad de modelos modestos. El vídeo cubre instalación (Docker, npm, Electron, Coolify), configuración de claves, uso del panel y conexión con herramientas reales como OpenCode o Claude Code.

## Recorrido del vídeo

- **[00:00–04:12] Presentación**: el título «no hay clickbait»: tu propia API de IA gratis sin modelos locales; demostración rápida del modo fusión combinando cuatro respuestas (Ollama/Qwen, Grok…); los proveedores regalan poco uso «para que pruebes y te quedes», y la idea es juntarlos todos («poquito más poquito más es un muchito»); aviso: no funciona perfecto, «pero es gratis».
- **[04:12–06:29] Formas de instalarlo**: clonar + encryption key + Docker (Linux/Mac/Windows), desarrollo local con npm, imagen publicada en GCR con docker compose, y **aplicación de escritorio Electron** (exe/dmg) que al autor le falla al abrir en macOS.
- **[06:29–09:46] Instalación efectiva y despliegue**: Docker funciona; arranque en localhost:3001, creación de cuenta y **setup code**; el autor lo despliega en su servidor con **Coolify** (recurso desde repositorio público; el Docker Compose ya viene configurado, solo añadir la encryption key): «está securizada, es una API que tenéis siempre disponible».
- **[09:46–12:20] Panel de control**: añadir claves proveedor a proveedor (o importar JSON); ver modelos disponibles, cuota restante y el mejor modelo actual; clasificación por tipo (chat, embeddings, imagen, audio, fusión); activar/desactivar modelos a voluntad.
- **[12:20–14:54] Modo fusión en detalle**: automático o con panel explícito; elegir cuántos modelos responden; juez en «auto mejor disponible»; estrategias de síntesis (combinar todo o elegir la mejor); llamar a la API con el nombre **«fusión»** — «lo más clave de todo»; entorno de pruebas y analíticas de consumo de tokens.
- **[14:54–15:53] Modo premium**: 19 $/año (o ~40 $ de por vida) actualiza la lista de modelos gratuitos cada 1–2 días en vez de cada 30; opinión del autor: innecesario — «si quieres APIs gratis, pagar no es lo que buscas».
- **[15:53–19:50] Integración con agentes**: endpoint y API key propios; compatibilidad OpenAI; **OpenCode**: opencode.json con proveedor npm «openai compatible», URL (/v1) y modelo «auto» o «fusión»; **Claude Code**: asignación de Opus/Sonnet/Haiku a modelos concretos de la API y predeterminado en auto; proxy de salida opcional para no quemar siempre la misma IP; prueba real (HTML de suscripción) que responde en segundos con un modelo gratuito.
- **[19:50–21:30] Veredicto**: «es una maravilla» para salir de apuros; los proveedores gratis «se irán cayendo»; no usarlo para nada prioritario ni en producción; guía escrita en el blog del canal.

## Puntos clave

1. **Agregación de pruebas gratuitas**: una sola API compatible con OpenAI frente a docenas de proveedores dispersos, cada uno con sus límites [01:26-03:49].
2. **Modo fusión**: panel de modelos en paralelo + modelo juez que sintetiza; mejora modelos no top «por mucho menos coste» [11:51-13:39].
3. **Instalación flexible**: Docker, npm en local, Electron de escritorio, o Coolify en servidor propio (opción preferida del autor) [04:12-09:46].
4. **Integración directa con agentes de código**: OpenCode y Claude Code mapeando sus modelos a los gratuitos disponibles [15:53-17:11].
5. **Expectativas realistas**: disponibilidad irregular, lentitud y modelos que desaparecen; usar solo para tareas propias, no críticas [02:55, 20:11].

## Notas sobre la fuente

- Transcripción de subtítulos **automáticos** en español; garbiñados normalizados: «o llama cuen 3»→Ollama Qwen 3, «Grok con Q»→posible GroqCloud, Cloud Code→Claude Code, «pulea/pulearnos»→pull, Coincoder Next→nombre de proveedor tal cual el ASR, Deep Stral→posible DeepSeek/Mistral; se conserva el literal del autor «ya lo ha hecho seguramente un chino por ti» [03:23] como muestra de tono informal.
- **Sin patrocinios detectados**; sí crítica abierta al modo premium del propio proyecto analizado [14:54].
- El autor muestra su token de API en pantalla y promete regenerarlo; el endpoint de su despliegue aparece censurado.
- Fuente 40/57 de la playlist «IA-Recursos»; entidad de canal aplazada a consolidación.
- **Enlaces de consolidación (2026-11-11)**: [[agregacion-apis]].

# WL-624 — Openclaw vs Hermes: ¿cuál es MEJOR?

- **Fuente original**: `raw/wl/tramo-98/2026-11-17-openclaw-vs-hermes-cual-es-mejor.md` ([Vídeo](https://www.youtube.com/watch?v=jmqq0ocRvNo))
- **Canal**: Pelado Nerd (Pablo — 1.ª fuente; migración real tras 7 meses de uso de OpenClaw; veredicto: «ganó Hermes»)
- **Publicado**: 2026-11-17 · **Duración**: 24:53
- **Dominio**: agentes personales (candidato a agentes-de-codigo/self-hosting en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Comparativa práctica de uso real (no specs) tras migrar de OpenClaw a Hermes (Noose Research, v0.221 vs. OpenClaw 202609) en Raspberry Pi propias:

1. **Fundamentos rápidos**: agente = harness/cliente entre el usuario (WhatsApp/Telegram/web) y el LLM; agrega memoria, contexto y tools (búsqueda web, APIs, correo) para superar la estática del modelo. Ambos proyectos son open source instalables en hardware propio o conectables a modelos externos (OpenAI con cuenta ChatGPT de 20 $ sin API key, Ollama local, Anthropic).
2. **Instalación**: OpenClaw — simple pero «pelado»: sin búsqueda web por defecto (plugin DuckDuckGo/Brave aparte), sin navegador. Hermes — instalador desatendido que trae todo andando (incluye navegador que usa sin pedirlo). Bache de Hermes: la instalación intenta enganchar una cuenta de Noose Research (decir que no y seguir).
3. **Estructura**: ambos con directorio de memoria (archivos .md «recordá esto»); OpenClaw más fragmentado (memory.md, user.md, soul.md…), Hermes concentrado en soul.md; dashboards web y canales (WhatsApp/Telegram) equivalentes; ambos con MCP.
4. **Skills — la diferencia destacada**: OpenClaw crea skills solo cuando se lo pedís o las descargás del marketplace; **Hermes crea skills por sí solo** cada vez que detecta una tarea repetitiva y las reusa (ejemplo: skill de automatización de luces creada sola tras pedirle buscar switches). Carpeta con decenas de skills generándose sola.
5. **Migración**: Hermes detecta OpenClaw corriendo y ofrece importar (config, plugins, cronjobs, modelos — secretos con flag específico que «no me anduvo», reconfigurados a mano; WhatsApp requirió nuevo QR). 5-10 minutos en total.
6. **Uso diario — trade-off central**: Hermes es **más lento pero transparente** (muestra su pensamiento en vivo, manda mensajes de «working», cita cada mensaje con quote, usa encuestas para elegir respuesta, pide aprobación de comandos peligrosos con `/approve always` — su hardware dedicado «tiene rienda suelta»); OpenClaw era más rápido pero **silencioso** (5 minutos sin saber qué pasa). Queja: el pensamiento visible es global, no por usuario (Laura «no entiende qué está pasando»).
7. **Audio**: Hermes no responde en audio por defecto (solo si se lo pedís); plugin **GPT Live** (API de OpenAI) = conversación natural, rápida, bilingüe, con búsqueda web integrada en la respuesta hablada y combinación de dos preguntas en una sola respuesta — el momento «wow» del video (Lupe, la asistente).
8. **Detalles**: velocidad de cambio («salen versiones todos los días» — lo dicho hoy puede estar distinto en 5 días); steering vs. encolado de mensajes configurado con un comando que el agente mismo se autoconfiguró; cliente de escritorio/web de Hermes «más pulida». Nota final satírica: Hermes es pago en la tienda oficial y no se puede comprar desde Argentina («culpa de Javier M»).

## Señales de triage

- **Comparativa de uso real**: 7 meses de OpenClaw antes, migración completa documentada (incluyendo lo que falló: migrate-secrets), trade-off central bien articulado (lentitud+transparencia vs. velocidad+silencio) en vez de listado de features.
- Honestidad sobre la caducidad (versiones diarias, «puede que cuando veas el video ya cambió») — la comparativa queda fechada por versiones (Hermes 0.221 / OpenClaw 202609).
- **Patrocinio declarado**: HostGator VPS (bloque de ~1 min — excluido de la síntesis; señalado). Sesgo menor hacia Hermes pero reconoce ventajas de OpenClaw (velocidad, audio de respuesta configurable).
- ASR con garbiñeos corregidos solo aquí («Open Club/Clow/Clowt» → OpenClaw, «Germes» → Hermes, «Nouse Research» → probable Nous Research, «cool-fso» → curl/código de instalación, «Cubcon» → conferencia, «Steer» → steer de agentes); raw intacto.

## Cruces

- Consolidación aplazada: clúster agentes con WL-612 (OpenClaw — su video previo original) y WL-611/620 (RSC Brain — «miércoles» de memoria); skills que el agente crea solo ↔ WL-600/604; memoria en archivos .md ↔ patrón LLM Wiki.

## Veredicto de triage

Buena comparativa de consumo (7 meses de uso, migración documentada, trade-off lento-transparente vs. rápido-silencioso, skills auto-creadas como hallazgo). Patrocinio excluido y señalado; par natural con WL-612. Sin consolidación (aplazada).

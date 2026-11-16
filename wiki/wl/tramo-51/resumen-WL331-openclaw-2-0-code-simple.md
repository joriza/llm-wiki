# WL-331 — OpenClaw 2.0: la actualización que puede cambiarlo todo en la IA

- **Fuente original**: `raw/wl/tramo-51/2026-09-21-openclaw-2-0-la-actualizacion-que-puede-cambiarlo-todo-en-la-ia.md` ([vídeo](https://www.youtube.com/watch?v=mZAwl0XqlaY))
- **Canal**: CodeSimple
- **Publicado**: 2026-09-21 · **Duración**: 31:14 · **Ingesta**: 2026-11-16 (tramo 51)
- **Tipo**: demo/tutorial de producto (1.ª mano, en pantalla)
- **Dominios destino propuestos (consolidación aplazada)**: ia-uso-practico/agentes-de-codigo o ia-critica-y-fronteras

## Idea central

OpenClaw 2.0 (lanzamiento de la semana de grabación) convierte al agente personal en una **infraestructura continua**: el agente «existe antes de pedirle algo y sigue ahí después de terminar las tareas», en contraste con el modelo tarea-única de Claude Code o Codex. Sigue siendo código abierto (licencia MIT según el autor) y gratuito de usar. Recorrido en 7 casos de uso.

## Puntos clave

1. **Contexto**: OpenClaw (ASR lo garbiñea como «Openell/OpenClot/OpenCloud/OpenCla» — normalizado) nació en nov. 2025 y superó 100.000 estrellas en GitHub en dos meses; el autor atribuye a su demostración de capacidades agenciales la posterior adopción por OpenAI (Codex), Anthropic (Cowork) y Google (Spark). *(afirmación del autor, sin fuentes — señalada)*
2. **Instalación**: instaladores gráficos para Mac/Windows/Linux con onboarding; detecta apps de IA ya instaladas (ChatGPT, Claude) y reutiliza sus suscripciones, centralizando proveedores.
3. **Proveedores**: configuración de proveedores de modelos (OpenAI, Google/Gemini con clave API, modelos locales vía LM Studio/Ollama, Claude Code por CLI); libertad de elección como ventaja del código abierto.
4. **Seguridad**: sección «Secrets» para compartir claves con el agente sin exponerlas en texto plano.
5. **Voz**: modo conversación con transcripción de voz en tiempo real (requiere proveedor con STT).
6. **Interfaz**: widgets visuales dentro del chat (p. ej. comparador de modelos de IA con fuentes enlazadas y mapa velocidad/calidad), modo multijugador (sesiones colaborativas con distintos usuarios), división de pantalla y paneles fijables.
7. **Despliegue**: local, nube (VPS con Docker; demo con Hostinger — **patrocinio del video, excluido de este resumen**) o híbrido (app local + instancia en la nube vinculadas por token de gateway); «sesión en la nube» que sobrevive al fallo o apagado del dispositivo.
8. **Canales**: vinculación con WhatsApp, Telegram y otros (demo completa creando un bot de Telegram), comunicándose con el agente como con una persona.
9. **Memoria**: sesiones continuas multi-dispositivo, «memoria activa» (recupera contexto de conversaciones previas cuando detecta preguntas que lo requieren) y modo **dreaming** en tres fases (ligera: organiza notas a corto plazo; REM: refuerza clasificación de temas; profunda: registra hitos en un archivo Markdown). Transparencia total: la memoria es explorable y editable. *(paralelismo directo con el patrón LLM Wiki/obsidian-memoria de este repositorio)*
10. **Autonomía**: sección «laboratorio» donde el agente sugiere o crea sus propias habilidades a partir de las conversaciones; tareas cron/programadas y automatizaciones definidas por el propio agente (p. ej. «actualiza esto cada jueves»), con la salvedad de que en instalación local solo corren con el equipo encendido.
11. **Observabilidad**: desglose de uso (mensajes, tokens/min, coste, llamadas a herramientas), registros del sistema, laboratorio de funciones experimentales.
12. **Equipo de agentes**: múltiples agentes con nombre, icono, habilidades, plugins, canales y memoria propios, trabajando de forma complementaria.

## Fiebre del ASR

Nombres sistemáticamente distorsionados, normalizados solo aquí: «Openell/OpenClot/OpenCloud/OpenClouds/OpenCla» → **OpenClaw**; «Cloud/Cowork» → Claude; «Meet» → MIT (licencia); «MFP» → MCP; «Chrom» → cron; «Grock/ORC Router» → Grok/OpenRouter; «Lama» → Ollama; «KBM2» → KVM2 (plan VPS). Fechas y cifras de lanzamiento (Gemini 3.8 Flash, GPT-6 Astra «próximo») son las del 2026-09 de la grabación, no verificadas.

## Cruces

- [[agentes-de-codigo]] — ecosistema de agentes personales/coding; OpenClaw ya aparece como base de Pi en la página del concepto.
- [[obsidian-memoria-agentes]] — el modo dreaming con archivo MD de memorias es el mismo patrón de memoria persistente en Markdown.
- Resumen Clawdbot (ia-critica-y-fronteras) — historia temprana del mismo asistente personal.

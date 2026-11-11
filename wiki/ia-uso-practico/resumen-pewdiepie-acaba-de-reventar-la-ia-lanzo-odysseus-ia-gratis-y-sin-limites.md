# Resumen: ¡PewDiePie acaba de reventar la IA! Lanzó Odysseus, IA gratis y sin límites

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-06-07-pewdiepie-acaba-de-reventar-la-ia-lanzo-odysseus-ia-gratis-y-sin-limites.md` (video en español, **subtítulos manuales es-ES**) — https://www.youtube.com/watch?v=80o7xdT7ZiM — Alejavi Rivera, 2026-06-07 (32:44).
- **Nota**: fuente 19/58 del lote ia-local — cobertura del **lanzamiento** de Odysseus (3 días después de salir; la revisión crítica posterior es la fuente 18/58 de Pelado Nerd). El patrocinio (Kittel, diseño con IA) queda excluido de la síntesis.

## El lanzamiento

PewDiePie (Félix, el youtuber más grande del mundo durante años, >100M de seguidores) lanza **Odysseus**: un workspace de IA propio, open source, sin telemetría, gratuito e ilimitado, «para acabar con la dependencia de las grandes tecnológicas». Instalación en **una línea de comando** (+3 comandos Docker recomendados), y el truco de la era agéntica: se puede **delegar la instalación completa a un agente** (Google Antigravity, Claude Code, Codex) compartiéndole la URL del GitHub y tu dispositivo. En Apple Silicon conviene ejecutarlo directo (Docker no usa la GPU de Apple) — detalle que Pelado Nerd confirmó después como crítico para el Cookbook.

## Los 7 casos de uso de Alejavi (complementan la revisión de la fuente 18)

1. **Cookbook con escaneo de hardware**: la «forma más fácil que he visto nunca» — escanea tu equipo (Apple M3 Pro, 18 GB RAM) sin que se lo informes y recomienda modelos; DeepSeek R1 a un clic de descarga/ejecución; reutiliza modelos de LM Studio/Ollama exponiendo Ollama a la red (opción desmarcada por defecto).
2. **APIs múltiples**: OpenRouter (crédito gratis de 1 USD, **300+ modelos, filtrar «free»** para los gratuitos), Grok (16 modelos, incluye transcripción e imágenes) y los oficiales (Anthropic/OpenAI/Gemini).
3. **Chat, agente y Personas**: modos chat/agente; el agente controla el PC (listar descargas); creación de apps con previsualizador integrado (ojito); **Compare blind A/B con votación** (31B local vs OpenAI 120M); prefijo/sufijo automático de prompts («sé directo y conciso»); índice de creatividad; y la función que Alejavi destaca como única: **Personas** (agentes conversacionales tipo GPTs personalizados, traen Sócrates precargado) que se agrupan para **interactuar entre sí secuencialmente o en paralelo** — «un equipo completo comunicándose entre ellos y con vosotros».
4. **Deep Research** con el fix de búsqueda: los buscadores gratuitos por defecto fallaban → **Tavily** (1000 créditos gratis, test integrado, 10 resultados); su prueba: informe visual en 13 segundos (2 rondas, 4 búsquedas, 14 URLs), extensión adaptativa a la pregunta.
5. **Brain + Skills centralizados**: memorias visibles/editables («mi nombre es Aleji» → el agente lo recuerda **desde cualquier modelo o proveedor** — «adiós a entrenar cada plataforma»); skills autocreadas, editables, testeables y auditables.
6. **Tasks/Prompter**: tareas preconstruidas (clasificar eventos del calendario desde el mail, resumir correos — pausables una a una) y **Prompter**: prompts programados («las 3 noticias IA más importantes de ayer», diario a las 21:35, salida a sesión o email). Más notas con recordatorios, to-dos, dibujo y vista de calendario; chats auto-organizados en carpetas por IA.
7. **Visual y avanzado**: galería con editor «tipo Adobe» (recortar, expandir, inpainting con pincel, borrado por IA, removedor de fondo instalable a un clic); Library unificada (chats, documentos, investigaciones); **modo incógnito** (no guarda memoria de esa conversación); temas totalmente personalizables (constelaciones, lluvia, flow, estilos GPT/Claude); integraciones (MCPs incluidos, servidor de email propio con auto-respuestas); sistema de **usuarios para equipos** (email+contraseña por miembro); usable desde móvil Android/iPhone.

## Contraste entre las dos fuentes de Odysseus

La cobertura de lanzamiento (esta) es anterior y más entusiasta; la revisión de Pelado Nerd (fuente 18) es posterior, más crítica y documenta bugs (edición de imágenes, calendario Gmail, mail summaries intermitentes). Juntas dan el perfil completo: **la visión del producto y su estado real**.

---

**Ver también**: [[odysseus-ai]] (entidad-herramienta, consolidada con ambas fuentes) · [[alejavi-rivera]] (canal) · [[resumen-odysseus-ai-tiene-algo-increible]] (la revisión crítica posterior de Pelado Nerd).

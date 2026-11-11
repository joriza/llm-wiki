# Resumen: Odysseus AI tiene algo INCREIBLE

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-25-odysseus-ai-tiene-algo-increible.md` (video en español; transcripción literal por subtítulos automáticos, «Odiseus/Audacious»→Odysseus) — https://www.youtube.com/watch?v=gqgGPSd52E4 — Pelado Nerd, 2026-08-25 (25:34).
- **Nota**: fuente 18/58 del lote ia-local. El patrocinio (HostGator VPS) queda excluido de la síntesis. Pronunciamiento honesto: bugs documentados tal cual.

## Qué es Odysseus AI

El **workspace de IA open source creado por PewDiePie** («se cansó de que lo espiaran»): a diferencia de ChatGPT (un chat), es un **workspace con herramientas múltiples** para el trabajo diario con IA — chat, deep research, cliente de correo con IA, memorias visibles, cookbook de modelos locales, comparador de modelos, notas y tareas tipo cron. 100 % open source (GitHub, branches `dev` = última novedad / `main` = más estable; probó ambas).

## Instalación (documentada con sus trucos)

Docker compose en un servidor (también app nativa en Mac — que corre como servidor Node por una ventaja que el video revela después). Detalles de seguridad/ acceso: el compose **no expone el puerto al exterior** por defecto (bien para pruebas); la contraseña de admin se obtiene de `docker logs`; para acceder desde tu PC, **túnel reverso SSH** (`ssh -L 7000:localhost:7000`). El canal destaca el contraste con OpenCode: «configurar las cosas es extremadamente fácil» — sin clave de API si usás suscripción de ChatGPT (flujo OAuth con código).

## Lo que funciona bien

- **Cookbook** (el destacado del video): correr LLMs locales **sin instalar Ollama** — integrado; **detecta tu hardware automáticamente y puntúa los modelos compatibles** («good/perfect»; ejemplo: MacBook M5, 10 GB VRAM) — descarga/corrida/configuración con un clic. Corre **Ollama por debajo**. Truco crítico: la detección de hardware **solo funciona en modo nativo** — Docker virtualiza y oculta el hardware. Probado con Qwen 3.5 2B local: 61 tok/s con thinking activado.
- **Deep Research**: investigación profunda configurable (rounds, formato: producto/comparación/how-to/fact-check, motor de búsqueda, modelo) que corre en background y arma una **página presentable con fuentes** — el caso del dulce de leche quedó «hermosa», con posibilidad de discutir y refinar el resultado después.
- **Comparador de modelos**: blind A/B (mismo prompt a dos modelos sin revelar cuál es cuál, en paralelo o secuencial, con votación) — ChatGPT vs Qwen 3.5 2B local dibujando SVGs: velocidades comparables (53 vs 57 s), calidad del Qwen «habría que probar con uno más inteligente».
- **Mail con estilo propio**: cliente de correo integrado; respuestas redactadas por IA que **extraen tu estilo de tus mails enviados** («saludos, gracias», alternando español/inglés según el destinatario, frases cortas) — y tareas automáticas diarias (resumen de correos, drafts sin enviar).

## Lo que NO funciona (probado en ambas branches)

- **Edición de imágenes**: la galería es linda, pero el editor («quiero que el almohadón sea verde» → le agregó pelo al astronauta; servidor devuelve 400) **nunca funcionó** — ni en main ni en dev, ni cambiando el modelo de visión a Qwen.
- **Calendario con Gmail**: pegado el link CalDAV, «no hay forma» — tampoco funcionó.
- **Resúmenes de correo**: «a veces funciona, a veces no», sin tirar error (branch main).

## La tesis que destaca el video

Las **memorias visibles**: a diferencia de un servicio cerrado, podés ver exactamente qué sabe Odysseus de vos, ordenarlo y borrarlo. Y la facilidad de configuración como el rasgo que «a muchos proyectos de IA les falta» — el app te dice «tenés que agregar un modelo», un botón, y anda.

## Cruces en la wiki

El cookbook es un corredor más de [[ia-local-texto]] (Ollama/LM Studio/llama.cpp — Odysseus usa Ollama por debajo) con la ventaja única de la **detección y puntuación de hardware** que complementa [[hardware-para-ia-local]]; el deep research y el comparador blind A/B son alternativas llave-en-mano a los flujos de [[agentes-de-codigo]].

---

**Ver también**: [[odysseus-ai]] (entidad-herramienta) · [[ia-local-texto]] (el cookbook corre Ollama por debajo) · [[hardware-para-ia-local]] (su detección y puntuación de hardware complementa el criterio) · [[agentes-de-codigo]] (deep research y comparador blind A/B como alternativas llave-en-mano).

# WL-742 — LLM Wiki: tu segundo cerebro digital

- **ID**: WL-742 · **Índice del cache**: 34/35 (relevo 7 FINAL, tramo 105).
- **Fuente original**: `raw/ia-critica-y-fronteras/2026-04-30-llm-wiki-tu-segundo-cerebro-digital.md` (subtítulos automáticos; garbiñeos ASR señalados abajo, normalizados solo aquí).
- **Dominio definitivo**: `ia-critica-y-fronteras` (consolidación T25, tramo 105)
- **Video**: [llm wiki tu segundo cerebro digital](https://www.youtube.com/watch?v=ZRddDLqTXq0) — **El Interés Ilustrado** (canal nuevo ×1), 2026-04-30, 22:44.
- **Enlaces**: [[obsidian-memoria-agentes]] (página canónica del patrón) · [[agentes-de-codigo]] · espejo: [[resumen-WL611-rsc-brain-llm-wiki-vs-rag-eric-risco]].

## Tesis

Demo en pantalla de la idea de Karpathy (garbiñeo ASR: «Andrés Carpati»): la memoria de un LLM es cara en tokens, así que en lugar de reinyectar las fuentes originales («supergordas») en cada consulta, un agente las procesa **una sola vez** en una wiki personal enlazada — y las consultas se responden solo desde la wiki procesada.

## Desarrollo

- **El patrón** ([00:35]–[03:44]): raw con las fuentes intactas → el agente las procesa → wiki con conceptos, entidades y fichas; las preguntas se resuelven sobre los conceptos, no sobre los libros; ahorro de tokens y respuestas «más al grano». El canal publica un repositorio base en GitHub (garbiñeo: «Hitub») con AGENTS.md (garbiñeo: «agents.m»), skills de ingesta/consulta/mantenimiento, workflows y plantillas de fichas.
- **Separación de roles** ([05:05]): Obsidian es **solo el visor** (grafo, búsqueda, edición manual de fichas); la interacción con el modelo ocurre en un agente de terminal — Claude Code (garbiñeo: «Cloud Code»), Antigravity u OpenCode — que es «el cerebro» que organiza la información.
- **Demo de ingesta punta a punta** ([12:32]–[17:27]): URL de un vídeo de YouTube de 40 min sobre Autodesk → script Python descarga la transcripción con formato de fecha a `raw/` (que las reglas prohíben usar para consultas) → el agente crea el resumen-fuente (~40 líneas desde ~4.000), la ficha de entidad de la empresa y clasifica según las instrucciones; log e index registran cada cambio.
- **Programabilidad** ([07:01], [18:56]): porque el cerebro es un agente de código, pedirle «inserta la gráfica de los últimos 5 años de este ticker en su ficha» termina en un script Python (`plot_quotes`) que se ejecuta y edita la wiki — el usuario es quien mantiene la wiki hablando.
- **Cierre** ([21:09]): útil para cualquier especialización; cuanto más specialistes las fuentes que le des, más coherentes las respuestas con TUS datos; ejemplo de re-etiquetado masivo de fichas por categorías de Peter Lynch con una orden.

## Valoración

No aporta teoría nueva — es la demostración casera más literal que la wiki tiene del **patrón LLM Wiki que este repositorio ya aplica** (raw/ + wiki/ + index + log + AGENTS.md + skills + scripts de ingesta, incluyendo la ingesta de playlists de YouTube con transcripción a `raw/`). Su valor es confirmar por tercera vía independiente (tras WL-611/WL-620 y el curso de Holamundo WL-326) que el patrón se está difundiendo como práctica de consumo, con la misma arquitectura y las mismas reglas (consultar solo desde la wiki, nunca desde raw). Nota: el vídeo es de abril de 2026 pero el «tweet de Karpathy» que cita parece reciente al momento de grabar; la fecha de publicación de la idea queda imprecisa en la fuente.

## Cruces

- [[obsidian-memoria-agentes]] — el patrón completo (raw → wiki, agente como bibliotecario, Obsidian como visor) demostrado por un tercer implementador independiente.
- [[agentes-de-codigo]] — AGENTS.md, skills, workflows y scripts como infraestructura del agente personal.

# Resumen: La irrazonable eficacia del HTML: por qué el equipo de Claude Code ya casi no usa Markdown

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-11-03-la-irrazonable-eficacia-del-html-claude-code-articulator-es.md` (video en español; subtítulos manuales, transcripción literal; versión divulgativa del artículo «The unreasonable effectiveness of HTML» de Thariq Shihipar, equipo de Claude Code/Anthropic) — https://www.youtube.com/watch?v=MBWwn15rmXU — Articulator ES, 2026-11-03 (12:11).
- **Nota**: fuente 14/18 de la playlist «IA-Nuevas formas de trabajo». El contenido técnico es del artículo original de Thariq; el video es su divulgación en español. Cruce directo con la práctica de la wiki misma y con gentle-design (artboards HTML).

## Por qué deja Markdown (6 razones de Thariq)

1. **Densidad de información**: HTML representa tipos que Markdown solo aproxima con trucos — tablas reales, diseño con CSS, ilustraciones SVG, código resaltado, interacción con JS, diagramas de flujo, datos espaciales, imágenes. Sin HTML el modelo recurre a diagramas ASCII o «su favorito: aproximar colores con caracteres Unicode» (paleta de colores como bloques de puntitos grises). «Casi no hay información que Claude pueda leer y que no se pueda representar con HTML».
2. **Claridad visual**: los planes/especificaciones crecen; en la práctica no lee más de **100 líneas de Markdown** (y no consigue que nadie más las lea). Un HTML organizado con pestañas, ilustraciones, enlaces y adaptable a móvil «es el mismo contenido, pero pensado para leerlo, no para hacer scroll».
3. **Se comparte fácil**: Markdown se manda como adjunto; HTML se sube a S3 y se comparte por enlace — «la probabilidad de que alguien lea de verdad tu spec o tu PR es muchísimo mayor».
4. **Interacción en dos sentidos**: deslizadores para ajustar diseño/opciones de algoritmo y **un botón que copia los cambios como prompt** para pegarlos de vuelta en Claude Code.
5. **El contexto**: la razón de hacerlo con Claude Code (y no en la web de Claude o Claude Design) es que lee mucho contexto — archivos, MCP (Slack, Linear), navegador con Claude in Chrome, historial de Git. Ejemplo: para el artículo le pidió buscar todos los HTML generados, agruparlos por tipo y generar un HTML-diagrama de cada tipo.
6. **Es divertido**: se siente más implicado; «solo por eso ya merece la pena».

## Cómo empezar (sin skill)

No convierte el artículo en «una skill de HTML»: basta pedir «hazme un archivo/artefacto HTML». El truco está en saber **qué debe hacer el archivo y cómo lo vas a usar**. Recomienda pedirlo desde cero cada vez para aprender, y solo con el tiempo crear una skill.

## Las 4 familias de uso (su galería)

1. **Specs, planificación y exploración**: en lugar de un plan en Markdown, una **red de archivos HTML** — lluvia de ideas con opciones distintas → profundizar en una (maquetas, fragmentos) → plan de implementación con maquetas, flujo de datos y código clave → sesión nueva que implementa leyendo esos archivos (y el agente verificador los lee: «entiende mucho mejor qué se necesita»). Prompt de ejemplo: «generá seis enfoques muy distintos en cuadrícula en un solo HTML; etiquetá cada uno con lo que sacrifica».
2. **Revisar y entender código**: cambios con anotaciones al margen, hallazgos coloreados por gravedad, diagramas de flujo — «a menudo mejor que la vista de cambios de GitHub»; ya añade un explicador HTML a cada PR suyo.
3. **Diseño y prototipos**: Claude Design se basa en HTML por expresivo aunque el producto final no sea web (boceto HTML → implementación en React/Swift); prototipar interacciones con deslizadores + exportar parámetros; documentar el sistema de diseño (colores, tipografías, espaciados).
4. **Informes, investigación y aprendizaje**: informes desde Slack/código/Git/web; explicadores interactivos; presentaciones con SVG; informe desde el historial de Git. El **editor desechable**: un único HTML hecho para un dato concreto (no producto ni herramienta) — repriorizar 30 tickets de Linear como tarjetas arrastrables en 4 columnas con exportación del orden + justificación por columna; editor de feature flags con dependencias y aviso de conflictos + «copiar diferencias»; afinador de prompts de sistema (variables resaltadas, ejemplos en vivo, contador de tokens). **El truco: terminar siempre con una exportación** (copiar como JSON / copiar como prompt).

## Preguntas frecuentes (respuestas de Thariq)

- ¿Gasta más tokens? Sí (Markdown gasta menos), pero se lee; en conjunto el resultado es mejor, y con ventana de 1M de tokens de Opus «casi no se nota».
- ¿Tarda más? Sí: **2-4×** que Markdown; para él compensa.
- ¿Control de versiones? **Su mayor inconveniente**: los diffs de HTML tienen mucho ruido y cuestan de revisar.
- ¿Markdown todavía? «Casi nunca» — reconoce ser un «maximalista del HTML».
- ¿Que no quede feo? Plugin de diseño front-end; y un único archivo con el sistema de diseño de tu empresa como referencia para todos los demás.

## La razón de fondo

Al dejar de leer los planes a fondo temía tener que dejar decidir a Claude; con HTML pasó lo contrario: **se siente más dentro del bucle que nunca**. Resumen del video: «Markdown se queda corto cuando los agentes escriben más de lo que podemos leer» — el HTML aporta densidad, claridad, enlaces compartibles, interacción y contexto, y te devuelve al bucle.

## Cruces

- Conecta con la fuente 4/18 (Ruiz: «tu lenguaje principal ya no es Python ni TypeScript, es Markdown») — este artículo es la evolución/contrapunto: el lenguaje de especificación pasa de Markdown a HTML cuando los agentes generan más de lo que el humano lee.
- Es la práctica nativa de gentle-design (artboards HTML bajo `design/`) y del flujo artifacts de la fuente 6/18 (Fazt, skill design de Claude).
- El «editor desechable con exportación» es una variante de UI del patrón verificación (la interfaz convierte juicio humano en prompt de vuelta).

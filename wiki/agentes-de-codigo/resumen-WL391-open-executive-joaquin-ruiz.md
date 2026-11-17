# WL-391 — La IA que sustituye a tu jefe, no a ti ¿funciona?

- **Fuente original**: `raw/agentes-de-codigo/2026-09-12-la-ia-que-sustituye-a-tu-jefe-no-a-ti-funciona.md`
- **Canal**: Joaquín Ruiz — IA para Desarrolladores
- **Publicado**: 2026-09-12 · **Duración**: 18:14
- **Video**: [`fSmJYsyz6kU`](https://www.youtube.com/watch?v=fSmJYsyz6kU) · WL-391 (índice 79 del cache, 4.584 entradas)

## Qué trata

Prueba en primera persona de **Open Executive**, un «equipo directivo virtual» de código abierto que salió en portada de Hacker News con la historia de un CEO despedido por IA y reemplazado a su vez por IA: 8 especialistas (CEO, CFO, CPO, counsel, COO, CMO…) que no escriben código ni abren tickets — **preparan decisiones**, bajo un orquestador que enruta por tool-use en paralelo, con contexto de una base de conocimiento precargada (ChromaDB + embeddings locales) y los documentos de la empresa en colección separada, sintetizados en una única voz.

- **Ingeniería notable**: tiene evals — 29 escenarios sobre los 8 dominios, puntuados por un modelo juez en 5 dimensiones (coherencia del rol, precisión de dominio, uso del contexto, calidad del enrutado, accionabilidad); la CI tumba el PR si la media baja de 3,5/5 o alguna dimensión cae >10 % — «este CEO sintético tiene test de regresión». Requiere Python 3.11+, OAuth de Google para login y acepta API de Anthropic o modelos locales.
- **Metodología de prueba deliberada**: 4 preguntas con datos omitidos a propósito y trampas internas, para medir si el sistema detecta lo que falta o rellena huecos por su cuenta («el fallo que más caro sale cuando le das a un agente una decisión de verdad»). Tesis del autor: el salto de calidad no está en pedir mejor sino en **especificar antes de ejecutar** (spec-driven development).
- **Resultados**: 1) subir su libro de 29 a 89 € → rechazo argumentado con su propia prioridad declarada (alcance), reencuadre de posicionamiento (de libros a cursos/certificaciones) y método (probar antes de triplicar precio); propone segmentar en vez de sustituir. 2) repartir 8 h semanales entre 5.º libro, más vídeos o curso de pago → orden defendido (6 h canal, 2 libro, curso fuera: no se sostiene) + sugerencia de preguntar a la audiencia antes de decidir. 3) canal nuevo competidor → «cambia lo que vigilar, no lo que hacer»: no entrar en carrera de producción, 15 min/semana de vigilancia, no desviar el calendario. 4) análisis de retorno por horas → se **niega a inventar datos** que nadie registró, pide las horas reales, y luego clasifica actividades acumulativas (canal, libros) vs lineales (docencia, trabajo) — protege los libros usando la prioridad declarada, contra la expectativa del autor.
- **Dos conclusiones**: decide mejor de lo esperado (no dice lo que uno quiere oír, no inventa datos, usa las prioridades contra ti) **pero da el veredicto sin el acta** — la discusión entre especialistas es inobservable, y lo que no puede medir desaparece de la ecuación.
- **Marco**: datos de Challenger, Gray & Christmas — IA motivo más citado en despidos de EE. UU. por 5.º mes consecutivo (~11.000 en julio; >112.000 en lo que va de 2026, ~1/4 del total vs 54.000 en todo 2025); el propio video advierte que son autodeclaraciones empresariales sin verificación y que la IA se usa como motivo cómodo para recortes que se habrían hecho igual. La capa ejecutiva es, en teoría, la más automatizable: trabaja con documentos, señales y decisiones.

## Señales de triage

- Review práctica de 1.ª mano con el repositorio enlazable; las cifras de despidos son de 2.ª mano (consultora, autodeclaradas) — limitación señalada por el propio video (buena higiene de fuentes).
- Contenido didáctico constante del canal (suscripción ~10k, libros propios) — excluido de la síntesis; los datos del alta eran del propio autor para poder juzgar la verdad de las respuestas (buen diseño de prueba).
- Subtítulos manuales: ASR mínimo («enrrutado»→enrutado, «chromaDB»→ChromaDB).

## Cruces y consolidación (deferida — L12)

- Dominio destino: `ia-uso-practico/` (prueba de herramienta) con ventana a `ia-critica-y-fronteras` (despidos por IA, automatización de la capa directiva).
- Cruces: delegacion-cognitiva-ia, spec-driven development (concepto candidato WL-211), evals/juez-modelo ↔ benchmarks WL-248, [[inferencia-local]] (funciona con modelos locales); tema «IA sustituye al jefe» ↔ WL-279/330.

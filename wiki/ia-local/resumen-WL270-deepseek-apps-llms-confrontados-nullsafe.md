# WL-270 — «Aprende a crear aplicaciones con DeepSeek y Técnicas con LLMs confrontadas» (NullSafe Architect)

- **Fuente original**: `raw/ia-local/2025-02-17-aprende-a-crear-aplicaciones-con-deepseek-y-tecnicas-con-llms-confrontadas.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=40rc2-QBQ5g · Canal NullSafe Architect · Publicado 2025-02-17 · 29:42 · Subtítulos automáticos es
- **Tramo**: 39, fuente útil 3/5 (posición 82 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/ia-local (consolidar con el cluster WL-239/240/253/254 y con [[deepseek-harness]] existente)

## Qué es

Tutorial práctico de IA local: se integra DeepSeek R1 Destilado **Qwen 14B** en el agente SQL que el canal ya había construido (descarga con Docker sobre **Cortex sin GPU, solo CPU**), se adapta el parser para separar el bloque de razonamiento `<think>` de la respuesta final, y se cierran **tres técnicas de LLMs confrontados** para endurecer aplicaciones con LLM.

## Contenido

- **Modelo**: los «DeepSeek» usados son destilados sobre Qwen/Llama; el 14B rinde bien en CPU; el 70B no arrancó en su máquina y el 32B quedó sin probar (limitaciones de hardware declaradas).
- **Carácter del modelo**: cada LLM tiene comportamiento propio — el R1 destilado es verboso (explica todo el proceso antes de responder), más lento, pero permite inspeccionar el razonamiento; el autor advierte que **esa trazabilidad no garantiza consistencia**: nadie asegura que la respuesta derive realmente del razonamiento mostrado.
- **Ajustes de código**: cambio de `model` y limpieza adicional del scraper de SQL para extraer el bloque `<think>` y caracteres de formato; dos peticiones por pregunta (razonamiento + SQL) ⇒ notablemente más lento.
- **Prueba anti-alucinación**: pregunta por «la facturación de Repsol 2024» — fuera de la base de datos — y el modelo responde correctamente «no» con razonamiento en vez de inventar una consulta.
- **Tres técnicas de LLMs confrontados**:
  1. **Verificación por consenso**: lanzar la petición en paralelo a varios LLM (con contextos distintos) y quedarse con la mejor respuesta; rápido para el usuario pero más costoso en recursos.
  2. **Detección de anomalías**: un segundo LLM audita la respuesta (p. ej., ¿habla de la competencia?) y la devuelve a regenerar si no pasa; permite modelos especializados por tarea.
  3. **Generación y adición iterativa**: refinar en serie la respuesta paso a paso (sintetizar, filtrar) — añade latencia pero depura la salida.
- **Opinión sobre el hype de DeepSeek** (bloque extenso): en local no hay espionaje; comparación con TikTok; el perjudicado real es OpenAI/EE. UU. y su apuesta de sanciones a chips; para el resto es una ganancia (modelo fuerte liberado). Llamada al pensamiento crítico frente a intereses mediáticos/corporativos.

## Salvedades de triage

- Demo de primera mano ejecutada en pantalla (punto fuerte), pero con marco comunitario explícito: llamadas repetidas a likes/compartir, repositorio GitHub con estrellas, concurso al que compite su proyecto — el contenido tutorial es real pero el encuadre es promocional.
- La comparativa TikTok/privacidad y la lectura geopolítica son **opinión del autor**, no fuente factual; señalado.
- Afirma que en la aplicación las respuestas salen «en inglés» sin explicar por qué — detalle sin resolver.
- Duración de ejecución en CPU muy alta (la descarga y cada consulta tardan minutos) — coste de la demo no cuantificado.

## Cruces sugeridos

- [[deepseek-harness]] (WL-23/24/25/27) — mismo tema DeepSeek local.
- Cluster IA local: WL-206, WL-239, WL-240, WL-253, WL-254; [[llama-cpp]], [[cognix]].
- Técnicas multi-LLM: cruza con WL-241 (REA) y el tema «evaluación/consenso» de WL-249.

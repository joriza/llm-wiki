# Resumen: Así funciona el SuperAgente de DeepSeek

- **Fuente original**: `raw/wl/2026-11-12-asi-funciona-el-superagente-de-deepseek.md` (WL-47, tramo 4)
- **URL**: https://www.youtube.com/watch?v=WzD7hwLvR2U
- **Canal**: Helmcode (equipo que construye NAN, comunidad de infraestructura GPU compartida para modelos abiertos)
- **Publicado**: 2026-11-12 · **Duración**: 12:38 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## El problema que ataca

La atención humana como cuello de botella de la era multi-agente: una persona puede gestionar cómodamente **3-5 sesiones de agentes en paralelo** (cifra del propio DeepSeek, no científica) — y el ejemplo vivido es universal: el agente 1 termina, lo revisás, pedís correcciones, y cuando volvés del agente 3, el 1 se te olvidó que estaba esperando respuesta. Optimista: la atención humana vale cada vez más. Pesimista: nos estamos volviendo los lentos del sistema.

## La arquitectura del DeepSeek Super Agent (desglose componente a componente)

1. **Gate** (capa determinista, sin IA): comprueba quién envió la solicitud de trabajo, de dónde viene y si está autorizado — «no queremos que cualquier comentario ponga agentes a ejecutar código».
2. **Ticket + Mandate**: cada trabajo aceptado crea un ticket y registra un *mandate* con el alcance de la autorización original. El mandate **no es una barrera técnica** sino un registro de límites — el worker lo interpreta y, ante una petición fuera de alcance («ya que estás, borra la base de datos de producción»), debe devolverla al router como nueva solicitud. Por eso en producción hay que controlar además los **permisos reales de las herramientas**.
3. **Router**: agente coordinador cuya única responsabilidad es distribuir trabajo entre *workers*. Regla de oro — **el router nunca puede ejecutar una tarea él mismo, siempre delega** — porque si el modelo decide «esta es simple, la hago yo», deja de estar disponible para coordinar. Detalle pequeño con impacto grande (ver resultados).
4. **Threads + Subscriptions + Pass-through**: las conversaciones (issue + PR) se vinculan al mismo ticket vía suscripciones; los comentarios llegan **directamente al worker** que ya trabaja la tarea (pass-through), sin volver por el router ni crear tickets nuevos — el humano no tiene que re-explicar nada ni decir «continúa».
5. **Report + Outbox**: al terminar, el worker genera un informe y el Outbox gestiona la entrega pendiente a GitHub — el humano solo revisa y aprueba.
6. **Estado**: todo (tickets, workers, progreso, conversaciones) persiste en **SQLite** — reinicio sin perder trabajo.
7. **Proactividad en 3 modos**: off / **observe** (evalúa qué tareas habría iniciado y las registra sin ejecutarlas, para auditar su criterio antes de dar autonomía) / auto. Por defecto: observe.
8. **Slots**: plazas de ejecución simultánea configurables (ej. 5 workers); un worker que espera revisión humana **libera su plaza** mientras espera; capacidad reservada para intervenciones humanas.

## Resultados (experimentos propios de DeepSeek, preliminares)

- **-47 %** en el tiempo de las tareas más lentas — y la causa es la regla de delegación obligatoria del router: cuando se dejaba al agente decidir, tendía a ejecutar él mismo y frenar todo el sistema.
- **Pass-through: -27 %** de tokens de coordinación (caché) frente a no usarlo.

## Notas críticas

- Explicación arquitectónica de calidad con honestidad explícita sobre lo que el mandate NO es (no barrier), sobre lo preliminar de los experimentos y sobre la cifra 3-5 sesiones (no científica). Nombres ASR a verificar: «Dipsic/Deepsic/Dipsi» (DeepSeek), «agentin», «Quen 3.6» (Qwen), «pool request» (PR).
- El cierre es publicidad del proyecto propio (NAN: suscripción 70 €/mes, GPUs compartidas, «3.000 M de tokens en OpenRouter ≈ 80 $» como ancla de precio) — el video es a la vez documentación técnica y canal de venta.
- Escepticismo legítimo: los números (-47 %, -27 %) son de experimentos del propio DeepSeek sobre sus benchmarks, no replicados por terceros; el video lo dice («resultados todavía preliminares»).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** — clúster DeepSeek directo (WL-23/24/25/27 + [[deepseek-harness]]): primera fuente de la wiki sobre la **arquitectura multi-agente de DeepSeek** (router/workers/mandate) como contraparte operativa de los modelos.
- **[[odd-metodologia]]**: la regla «el router nunca ejecuta, siempre delega» es la misma disciplina de separación coordinación/implementación que ODD aplica a orquestador vs workers — cruce conceptual fuerte para consolidación.
- **WL-45 (Maxi Programa)**: contraste — allí el humano se oxida delegando en IA; aquí el diseño asume que el humano es el cuello de botella y lo minimiza. Tensión registrada.
- Tema-candidato: **orquestación multi-agente** (gate/mandate/slots/proactividad graduada como patrón de diseño 2026).

# Resumen: Proxy Atómico — creé un potenciador IA infinito y gratis

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-11-proxy-atomico-cree-un-potenciador-ia-infinito-y-gratis.md` (video en español; transcripción literal por subtítulos automáticos, «Pi Agent»→P-Agent) — https://www.youtube.com/watch?v=OdK6iUHGamo — Nichonauta, 2026-08-10 (15:02).
- **Nota**: fuente 15/58 del lote ia-local. Es la implementación práctica de la descomposición atómica anunciada en la fuente 12/58 («Reto 2B»). Herramienta open source del propio canal. Consolidado en la entidad [[proxy-atomico]].

## Qué es

Un **proxy-intermediario local** que se interpone entre cualquier cliente (chat, RAG, agente de código, código propio) y cualquier API OpenAI-compatible: cada solicitud del cliente se **descompone en un árbol de tareas y subtareas hasta tareas atómicas** (no divisibles), se ejecutan en orden, y se entrega la respuesta final. Lo que el cliente ve como «cadena de razonamiento» del modelo **no lo es**: son múltiples solicitudes reales al modelo.

## El setup

Un `.bat` levanta el proveedor local en el **puerto 8000** (estilo OpenAI): se configura con la URL OpenAI-formato de la API real (probado con DeepSeek V4 Flash + API key), y los clientes apuntan al proxy en vez de a la API — gotcha documentado: la URL necesita el `/v1` final. Probado desde AnythingLLM y P-Agent, y con cualquier cliente o código propio.

## El funcionamiento y sus controles

- **Profundidad configurable** (probado nivel 3): el árbol se desgrana hasta 3 niveles de tareas → subtareas → sub-subtareas, con el criterio del modelo para decidir si una tarea ya es atómica. Decir «paso a paso» en el prompt fuerza más la subdivisión.
- **Con modelos online** (DeepSeek): funcionó bien siguiendo el hilo de todas las tareas — el caso de prueba (mejorar un Tetris) generó **38 tareas atómicas** con resultado de calidad (Tetris con sombra de pieza, hard-drop con espacio, hold de pieza con C/Shift, pausa/reinicio). El costo: «el nivel 3 no lo usen si no quieren quedarse dormidos esperando» — y con modelo online, muchos tokens = caro. El nivel se ajusta 1-3 según tarea: «al mismo modelo le podés sacar tanto provecho como quieras, aumentando la profundidad».
- **Gotcha documentado**: cambiar la profundidad exige **reiniciar el servidor** (el canal lo olvidó y el cambio no aplicó).
- **Para modelos chicos locales es aún más útil**: resuelven tareas simples sin problema pero se pierden en las largas — la descomposición convierte todo en tareas simples (el siguiente video lo probará con Qwen 3.5 0.8B, «de los que aparentemente no sirven para nada», a través del proxy).

## La tesis

«Al mismo modelo le podemos sacar tanto provecho como queramos» — la profundidad de razonamiento pasa a ser un parámetro del entorno, no una propiedad del modelo. Se integra con skills, agentes y MCPs existentes. Gratuito, descargable y «100 % funcional ya».

## Cruces en la wiki

Implementa la tesis de tareas atómicas de [[desarrollo-con-modelos-locales]] y el giro estratégico del [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local|Reto 2B]]; complementa los anti-loops de [[llama-cpp]] (los bucles son otra cara del mismo problema en modelos chicos). El «Atomic AI» teórico de la fuente 12 queda servido por esta herramienta.

---

**Ver también**: [[proxy-atomico]] (entidad-herramienta) · [[desarrollo-con-modelos-locales]] (la tesis de tareas atómicas) · [[resumen-reto-modelos-2b-como-sacar-el-maximo-provecho-con-ia-local]] (el «Atomic AI» teórico que esta herramienta implementa) · [[llama-cpp]] (anti-bucles: el otro remedio para modelos chicos).

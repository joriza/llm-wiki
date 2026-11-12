# Resumen: DeepSeek Harness 🚀 conectar modelos locales de llama.cpp para programar con IA

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-08-14-deepseek-harness-conectar-modelos-locales-de-llama-cpp-para-programar-con-ia.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=nYsJn7Fbj_c — Nichonauta, 2026-08-14 (14:38).
- **Nota**: fuente 25/58 del lote ia-local (entrada 30 del playlist). Segunda fuente sobre [[deepseek-harness]]: esta vez como cliente de un **proveedor personalizado llama.cpp**, no vía la integración nativa con Ollama de la fuente 24.

## Proveedor personalizado: llama.cpp como backend del Harness

El Harness trae proveedores precargados (incluido el oficial DeepSeek) y está «preparado para funcionar con **tres tipos de API**»: completions y responses de OpenAI + messages de Anthropic. Configurar llama.cpp es directo: sin API key (es local), los modelos se detectan automáticamente (también se añaden a mano y se renombran). Banco de pruebas: **Qwen 3.5 9B** local en GPU, con visión y 131.000 tokens de contexto. Cambiar de modelo por el selector es fácil — la contra: con muchos proveedores y modelos la lista «va a ser interminable» (con pocos, perfecta).

## La trampa de la UI: visión que existe pero no se puede activar

El Harness responde que el modelo «no soporta imágenes». **Es falso**: el mismo Qwen en llama.cpp procesa y describe la imagen sin problema. Con los pocos ajustes de la configuración simple no hay forma de activarla; habría que editar la configuración del proveedor (ventana de contexto total, si es razonador, si tiene visión — algún parámetro tipo `input`, a revisar en la documentación oficial). El canal lo deja pendiente: le interesaba ver el comportamiento con un proveedor local «de fábrica».

## Modos agénticos: como tener varios programas en uno

Los modos del Harness funcionan «como si tuviéramos distintos programas instalados» — algo estilo OpenCode, algo estilo Hermes, algo estilo Pi Agent. La idea clave: **un modelo puede rendir mejor en un modo que en otro aunque ambos sean de código**. Modo código por defecto, cambiable por conversación; además: modo plan (genera el plan, se aprueba y pasa a implementación), modo solo lectura y modo con acceso total dentro/fuera del proyecto.

## Qué dio cada prueba (Qwen 3.5 9B)

- **Modo código — «analiza el proyecto»**: arranca mal (falla 4 veces seguidas leyendo archivos que **se inventó**: no existen), se recupera y entrega un análisis excelente y compacto: estructura, pipeline, qué archivos se generarían al ejecutarlo, orden de ejecución, tecnologías, reglas de edición. «No solo sabe qué archivos existen, sino cuáles se generarían y para qué sirve cada cosa».
- **Modo minimal — misma tarea**: falla más rápido (intenta comandos Linux/Mac en Windows) y **se rinde**. Anticipándole «estamos en Windows, usa comandos de Windows» mejora pero sigue fallando comandos. Diagnóstico del canal: no es del agente sino de la **adaptación modelo↔agente**.
- **Modo plan — videojuego estilo Battle City** (test de seguir instrucciones específicas — hasta la paleta de colores del canal —, no de saber hacer juegos; todo en un único archivo y sin recursos externos): lee plan.md a la primera, produce el plan definitivo bien estructurado, aprobación → implementación (~23k tokens de contexto ocupados; una sola respuesta superó los 12.000 tokens generados; 13 minutos de trabajo). Resultado: juego **semi-funcional** — menú, controles WASD y sonido funcionan, pero un menú no se quita y el juego no se ve. El modelo, sin navegador ni visión dentro del arnés, reporta éxito igual («seguramente dice: sí, todo funciona perfecto») — la verificación visual es la brecha; se resolvería iterando, mejor aún de forma automática.

Detalle de UI poco común en entornos agénticos: el Harness muestra **tokens de entrada/salida, tok/s promedio y cuánto quedó en caché**.

## Veredicto y el gancho para el siguiente video

«Me está gustando mucho este arnés» — para desarrollo y también como chat general; varios modos agénticos; se instala con **un solo comando npm** sin tantas dependencias; funciona desde el navegador (el canal lo buscaba en línea de comandos o app de escritorio). El siguiente paso anunciado: combinarlo con **Atomic Decomposition / Atomic AI** — el proxy intermedio que gasta más tokens por solicitud a cambio de más calidad, ideal para modelos chicos locales: «les falta algo de inteligencia, pero nos sobran tokens, son ilimitados» → [[proxy-atomico]].

## Cruces en la wiki

Entidad: [[deepseek-harness]] (ampliada con esta fuente). El modelo probado: [[qwen]]; el backend: [[llama-cpp]]; el complemento anunciado: [[proxy-atomico]]; el contexto del Reto 2B: [[desarrollo-con-modelos-locales]]. Canal: [[nichonauta]].

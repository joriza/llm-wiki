# DeepSeek Harness

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `agentes-de-codigo`.
- **Actualizado**: 2026-11-11 (fuente 25/58 del lote ia-local — la entrada 30 del playlist anunciada como ampliación ya procesada).
- **Fuentes**: [[resumen-nuevo-deepseek-harness-completamente-gratis-usando-gemma-4]] · [[resumen-deepseek-harness-conectar-modelos-locales-de-llama-cpp-para-programar-con-ia]] · [[resumen-WL270-deepseek-apps-llms-confrontados-nullsafe]] (WL-270, T48 2026-11-16: DeepSeek R1 destilado Qwen 14B en CPU vía Cortex dentro de un agente SQL existente + tres técnicas de LLMs confrontados; canal NullSafe Architect, texto plano por umbral) · [[resumen-WL295-deepseek-v41-flash-arquitectura-codesimple]] (WL-295, T49 2026-11-16: análisis arquitectónico de V4.1 Flash — engram, CED, caché KV 437× menor, atención dispersa; 2.ª mano del paper, señalado).

**DeepSeek Harness** es el agente-harness **open source de DeepSeek**: «el cuerpo» de un sistema de IA — se encarga de ejecutar tareas y proyectos — mientras el «cerebro» (el modelo) se elige aparte. Se abre con una línea de terminal y trae **integración nativa con Ollama** (pregunta el modelo al lanzar y ofrece instalarlo si falta) además de proveedores cloud (OpenRouter/OpenAI/Anthropic) y Ollama cloud de pago.

## Setup local 100 % gratuito (según la fuente)

Ollama desktop + CLI → `ollama pull gemma4` (12B ~8 GB; 26B ~20 GB; 31B) → contexto en Ollama a 128k-256k → comando de integración nativa o `ollama launch deepseek harness` → elegir modelo. Modelos adicionales vía «buscar otros modelos disponibles» o desde Hugging Face. Benchmarks de Gemma 4 citados por el canal (no verificados): herramientas 86,4 %, código 80 %, LiveCodeBench 2150, matemáticas ~90 %.

## El hallazgo clave: el preset optimizado (6× menos tokens)

El preset estándar del Harness inyecta muchas órdenes y «gasta una locura» — caso medido: **10 min, 500.000 tokens entrada + 30.000 salida**. La solución: un **agent preset propio («local data preset»)** con «superficie de herramientas reducida y reglas de operación de la persona» minimizadas y enfocadas a una tarea. Mismo caso: **4 min, 80.000 entrada + 12.000 salida**, resultado igual o más legible.

Reglas operativas del preset que funcionan:

- Acceso **Workspace Write** (no completo — con acceso completo «da vueltas, gasta más y toca cosas que no debe»).
- Crear los presets con un modelo potente (con uno gratuito «da 1000 vueltas»).
- Instalación: descomprimir en `users/<usuario>/.dsh/deepseek harness/agent presets/` + reiniciar.

## Conexión a llama.cpp y modos agénticos (fuente 25, Nichonauta)

Como cliente de un **proveedor personalizado llama.cpp** ([[qwen]] 3.5 9B local con visión y 131k de contexto): soporta **tres tipos de API** (completions/responses de OpenAI + messages de Anthropic), sin API key para modelos locales, lista automática de modelos (añadibles y renombrables a mano). Cambiar de modelo por el selector es fácil, aunque con muchos proveedores la lista «va a ser interminable».

- **Limitación de la UI**: con la configuración simple no se puede activar la visión del modelo local — el Harness dice «no soporta imágenes» siendo falso (el mismo modelo sí lo hace en [[llama-cpp]]). Requeriría editar la configuración del proveedor (ventana de contexto, si es razonador, visión — parámetro tipo `input`, según la documentación oficial).
- **Modos agénticos = programas distintos** (estilo OpenCode/Hermes/Pi Agent): un mismo modelo rinde distinto por modo aunque ambos sean de código. Modo código por defecto (cambiable por conversación); además modo plan (aprobación → implementación), solo lectura y acceso total.
- **Pruebas con Qwen 3.5 9B**: modo código falla al inicio (inventa archivos) pero se recupera con un análisis excelente del proyecto; modo minimal intenta comandos Linux/Mac en Windows y se rinde (decirle «estamos en Windows» mejora a medias) — el factor es la **adaptación modelo↔agente**, no el arnés.
- **Extras**: la UI muestra tokens entrada/salida, tok/s promedio y caché («poco común»); instalación con un comando npm; funciona desde el navegador. Veredicto del canal: «me está gustando mucho este arnés». Teaser: combinarlo con [[proxy-atomico]] (más tokens por solicitud a cambio de calidad — ideal para modelos chicos locales).

## Casos de uso probados (Gemma 4 26B local, gratis)

Auditoría de facturación (informe + cartas de reclamación por cliente), análisis de negocio (ganancias/pérdidas por categoría con resumen ejecutivo) y limpieza de base de datos (inválidos listados, CSV limpio generado por el agente) — cada uno en 10-20 minutos, costo cero. Filosofía: «hace un año todo esto costaba dinero — ahora solo cuesta paciencia».

## Cruces en la wiki

Capa agéntica sobre [[ia-local-texto]] (Ollama como runner del cerebro) o sobre un proveedor personalizado [[llama-cpp]]; el cerebro elegido, [[gemma-4]] o [[qwen]]; el espíritu anti-plomería de [[codigo-de-plomeria]]; el stack de [[desarrollo-con-modelos-locales]]; el complemento anunciado por el canal, [[proxy-atomico]].

## Caso IoT/voz (fuente consolidación relevo 2 del pedido L35 — WL-400)

[[resumen-WL400-alexa-esp32-deepseek-harness-programador-novato]] (Programador Novato, `ia-uso-practico/`): el Harness como intérprete de intención de un asistente de voz casero ~10 USD — ESP32+KY-037 graba ≤2 s → Whisper local transcribe → prompt de sistema en el servidor Python («interpreta la orden exacta, devuelve solo JSON válido sin markdown», acciones acotadas, lista vacía si nada aplica) → ejecución en actuadores (servo de válvula, LED, sensor ultrasónico de tinaco). Demo en vivo con fallas corregidas reformulando; audio sin capa de seguridad en LAN — gap señalado (cruce WL-147). Primera fuente del corpus que usa el Harness **fuera del escritorio**, como cerebro de propósito acotado ([[delegacion-cognitiva-ia]] tangencial, [[inferencia-local]]).

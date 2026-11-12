# Desarrollo con modelos locales: el workflow diario

- **Tipo**: página de concepto.
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 3/58 del lote ia-local).
- **Fuentes**: [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]] · [[resumen-desarrollo-con-modelos-ia-muy-pequenos-como-programar-con-gema-4-e2b-y-qwen-3-5-]] (fuente 17 — la prueba agéntica).

## El criterio rector: encaje 100 % en GPU

El modelo a elegir no es «el más inteligente» sino **el más grande que quepa 100 % en GPU, mínimo a 4 bits** — los modelos que requieren CPU/RAM son más capaces pero más lentos, y en desarrollo diario la velocidad de generación *y de procesamiento del prompt* es lo que importa. Complementos: dejar ≥1 GB de VRAM libre (picos de un segundo matan el proceso), variante MTP del modelo (medido: +40 % de tok/s en texto, más en código), KV cache a q8_0 (TurboQuant: ~99 % de calidad a mitad de memoria), mmproj si se quiere visión. Geografía de tamaños de la familia Qwen: 0.8B/2B/4B/9B/27B/35B-A3B/122B/397B — para desarrollo con hardware de hogar, el 9B en Q4 suele ser el techo.

## El stack del workflow

1. **Motor**: [[llama-cpp]] directo (LM Studio se basa en una versión vieja/limitada y su automaticidad divide el hardware de forma subóptima); `.bat` por modelo con el comando afinado una sola vez.
2. **Agente**: OpenCode (o Claude Code/Codex/P-Agent) conectado al endpoint OpenAI-compatible local — URL `127.0.0.1:8080/v1`, key y nombre de modelo arbitrarios.
3. **MCPs que compensan el tamaño chico**: Context 7 (documentación actualizada — el modelo pequeño «sabe lo típico» como Bootstrap pero no lo nuevo), Playwright (que el agente pruebe en el navegador e itere solo, con visión), Brave Search.
4. **Fallback honesto**: cuota gratuita diaria de modelos de pago del propio agente para lo que el local no alcanza.

## Las lecciones del uso real (medidas en el video)

- La calidad de salida es **proporcional a la especificación**: con un prompt vago el modelo genera rápido pero deja contenido vacío (no inventa).
- **Iterar es el método**: «no es para que te haga un Minecraft a la primera, es para trabajar» — crear, corregir, volver.
- **No pedir 50 cambios de una sola vez**: el experimento «máximo de animaciones» (7.000 tokens, 1.215 líneas reescritas) terminó «horrible».
- Lo que el humano arregla a mano (pegar el HTML del elemento problemático) lo resolvería el propio agente con MCP Playwright + visión: **dotar de ojos y documentación al modelo chico lo compensa**.
- Verificación manual puntual: responsive en teléfono/iPad mini.

## Por qué a pesar de todo local

**Tokens ilimitados, gratuitos, rápidos y privados** — el costo por iteración es cero, y el desarrollo real consiste precisamente en iterar mucho. Los modelos de pago como fallback puntual, no como base.

## Cruces en la wiki

Motor y comando: [[llama-cpp]] · el stack de producto con clientes de pago: [[micro-saas-con-python]] · la filosofía de API gratuita/local: [[agregacion-apis]] · la tesis compartida del dominio: «la IA es copiloto y genera bien solo cuando vos sabés qué pedirle y cómo verificarlo».

## Hallazgos agénticos con modelos 2B (fuente 17)

La prueba agéntica real en OpenCode (landing con Bootstrap, ambos modelos 2B en Q4/131k) confirmó el patrón con matices nuevos:

- **Lo que sí**: generación completa de proyectos multi-archivo a 150-170 tok/s dentro del contexto grande del agente; uso correcto de herramientas; diagnóstico colaborativo multi-modelo (Gemma analiza el bug, Qwen confirma y corrige — ambos acertaron a la primera).
- **El gap de conocimiento** (no de habilidad): los 2B no recuerdan bien Bootstrap actual (iconos inexistentes, imágenes fantasma) → **MCP Context 7** como remedio directo: «ayuda a cualquier modelo, ningún modelo sabe lo actual».
- **Los contextos largos degradan la edición**: varias correcciones fallaron editando archivos/clases equivocadas o «diciendo que lo hicieron» sin cambiar nada; la que funcionó se logró en **conversación nueva** (contexto limpio).
- **Soluciones globales vs parches**: los modelos chicos tienden a corregir elemento por elemento; el humano pide la solución global (todos los elementos con ese fondo → texto claro) porque parchear uno a uno «no tiene sentido».
- **Truco de visión vía herramienta**: un modelo que «no puede ver imágenes» logró hacerlo leyendo la ruta con la herramienta `read` — la capacidad puede estar detrás de una herramienta.
- **Verificar tras cada cambio**: «dijo que lo hizo correctamente y no cambió nada» es normal — o el humano verifica, o se le da Playwright para auto-verificarse.

# Resumen: IA Local, programación con agentes. Gratis, privado y en cualquier PC

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo`.
- **Fuente original**: `raw/agentes-de-codigo/2026-11-10-ia-local-programacion-agentes-gratis-privado-cualquier-pc.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Pi/P agente de P»→Pi, «Header»→Herdr, «Lazy Beam»→Lazygit, «Joy»→Joi, «cuentres.6»→Qwen 3.6, «MSP»→MCP) — https://www.youtube.com/watch?v=21RgOoFI5XI — HolaMundo, 2026-11-10 (53:46).
- **Nota**: fuente 58/58 del lote ia-local (entrada 58, última del playlist). Guía completa end-to-end: teoría (densos/MoE/cuantización), LM Studio, modelos recomendados por caso de uso, MCP Exa (búsqueda web), VS Code Copilot + Pi agent, ingeniería agéntica con skills backlog/story en Herdr, benchmarks de velocidad GPU offload vs CPU.

## La tesis: no necesitas el modelo más inteligente para desarrollar software

- No todas las tareas requieren la misma capacidad; pasado un umbral, los modelos más grandes "ya no aportan tanto valor".
- Un proyecto existente **ya contiene decisiones** (patrones, tipos, tests) que guían al agente — no hay que volver a tomarlas.
- Tareas acotadas con objetivo y criterios claros + contexto claro = el agente no adivina.
- **La capacidad (hardware) importa**: "un modelo que no sigue instrucciones no te sirve, aunque tengas buen proceso".
- Revisar siempre cada tarea que le des al modelo.

## Ventajas y límites de la IA local

| Ventajas | Desventajas |
|----------|-------------|
| Sin API/suscripción; sin depender de subsidios de terceros | Costos reales: hardware, electricidad |
| Aprovecha tu hardware; control de dónde se procesan datos | Tiempo de configuración ("punto dulce" por máquina) |
| Trabajo sin conexión; experimentar con modelos nuevos | Mantenimiento continuo |
| **Privacidad**: PCI Compliance → solo locales; sin restricción → híbrido (nube para lo difícil, local para el día a día) | Compromisos velocidad/memoria/calidad |

- Con buena GPU + modelo adecuado: **>100 tok/s** = desarrollo "prácticamente instantáneo".

## Teoría: densos vs MoE vs cuantización

- **Densos**: todos los parámetros por token (2B → cada token = 2.000M operaciones); más parámetros ≈ más inteligente (regla general) pero **linealmente más lentos**.
- **MoE**: 35B totales pero activa solo ~3B por token → velocidad de modelo chico con conocimiento de modelo grande. **Preferirlos con GPU limitada** (mitad en GPU, mitad en RAM → 20-60 tok/s).
- **Cuantización**: 60 GB → 6 GB manteniendo calidad. **Punto intermedio recomendado: Q4** (Q3 funciona bien en algunos modelos, pero por regla general preferir Q4).

## Hardware: inferencia CPU vs GPU

- GPU ≫ CPU en velocidad.
- Modelo **denso**: debe pesar menos que la VRAM (si desborda a RAM, la velocidad cae "por mucho").
- Modelo **MoE**: mitad GPU + mitad RAM → velocidades decentes (20-60 tok/s).
- GPU integrada o poca VRAM: no es bloqueante, existen alternativas.

## LM Studio (gestor de modelos elegido)

- **No confundir con Bionic**: nueva app del mismo sitio para agentes en tu computador; LM Studio es la herramienta para gestionar/servir/tunear modelos.
- Activar **modo desarrollador** (engranaje → developer) para ver Model Server.
- **Model Search**: marca en verde "cabe completo en GPU", opción "partial GPU offload", rojo "probablemente muy grande para tu máquina"; **pulgar arriba = cuantización recomendada** para tu máquina.
- **Chat**: GPU offload slider (mitad modelo GPU/resto RAM), contexto (10-20k para chatear, ~50k para investigación web).
- **Truco KV cache**: habilitar opción y bajar KV de F16 → **Q8**: misma calidad, **~1 GB menos de VRAM** que se asigna a contexto.
- **Model Server**: sin autenticación para uso local/casa; activar **Just in time model loading** (descarga tras 60 min) + **only keep last JIT loaded model** (un solo modelo cargado a la vez — al cambiar de modelo, descarga el anterior).

## Velocidad medida (Gemma 4 E4B, 8B params, Q4_K_M 6 GB)

| Configuración | Velocidad |
|---------------|-----------|
| GPU offload 20 (mitad) | **18 tok/s** |
| GPU offload 30 | **28 tok/s** |
| **Modelo completo en VRAM** | **104 tok/s** ("prácticamente instantáneo") |

## Modelos recomendados por caso de uso

| Modelo | Uso recomendado |
|--------|-----------------|
| **Gemma 4 E4B** (8B, Q4_K_M) | **Chatear/razonar**: pros/contras, entender problemas, iteración rápida; escribe con emojis (bien formateado); conclusiones "las mismas que Claude Opus o ChatGPT"; **no** para programar directo |
| **Gemma 4 12B** (7.2 GB) | Desarrollo agéntico moderado; no para "constrúyeme una app entera" |
| **Qwen 3.6 35B A3B MTP** | **Modelo diario del desarrollador** (si puedes ejecutarlo); variante MTP |
| **Qwen 3.5 2B** | Sorprende para su tamaño; tareas limitadas |
| **LFM 2.5 24B A2B** | **Implementación de código**: sigue instrucciones y patrones; **183.78 tok/s con modelo completo en VRAM** (sin MTP!) |
| **Bonsai, Flint, Qwen 3.8 27B** | Mencionados en su biblioteca |

## MCP Exa: búsqueda web para modelos locales

- Buscar "MCP Exa LM Studio" → instalar servidor MCP (pop-up copia la config).
- Demo con Gemma 4 E4B: "busca noticias IA noviembre 2026" → razona ("no puedo buscar fecha futura" — corte de entrenamiento), busca online, genera reporte estructurado con links.
- **Truco System Prompt**: prompt personalizado guardado en integraciones → "responder de memoria siempre que tenga la información; si no, buscar en internet con las herramientas disponibles".

## VS Code + Copilot con modelos locales

- Extensión **LM Studio** → panel Copilot cambia a "Local" → modos **Agent / Ask / Plan**.
- "Me gusta estar siempre entre Ask y Plan; no paso a Agent hasta tener el plan definido" — porque los modelos locales no son frontera.
- **Conversar en inglés**: "tienden a comportarse mejor, fueron entrenados así" (funcionan en español también).
- Demo (proyecto Bitly, Joi schemas): modo Plan → "crea user.js schema basado en link.js (ID, email, password, username)" → plan correcto, start implementation → creó también user store + rutas (extras lógicos no pedidos); le faltó el schema → "te faltó crear schemas/user.js" → lo crea bien.

## Pi agent + plugin LM Studio

- `pi install npm:@mundo/pi-lm-studio` (aprox) → `/model` lista modelos LM Studio junto a los de llama.cpp.
- Mismo ejercicio user schema: **alucinó con Mongoose** (proyecto usa Joi) → corrección "primero lee link.js, no usamos Mongoose" → "se pegó una alucinada más o menos grande" → resultado final correcto y completo (validaciones Joi: email formato/mensaje/trim/required, username alfanumérico 3-30, password regex 6-30, exports create/update).
- **Lección**: modelos pequeños son "sumamente poderosos para el tamaño que tienen" pero alucinan → **tareas acotadas: "haz esto, no hagas nada más"**.

## Ingeniería agéntica con modelos pequeños (Herdr + skills)

- Setup: **Herdr** con 2 pestañas — Pi (Gemma 4 E4B) + código (Lazygit); "puedo ver el código y también a mi agente".
- **Skill `backlog`** (formato historias de usuario): feature "links protegidos, solo el creador puede modificarlos" → hace preguntas de acotamiento (multiinquilino? no; roles? no; sync? no; offline? no) → genera backlog.
- **Skill `story`**: trabaja la historia 1 → criterios de aceptación → "crea un plan de implementación a nivel de detalle para que un subagente pueda tomarlo" → objetivo, prerrequisitos, **pasos técnicos por capa** (endpoint POST /api/links, validación seguridad primero), roadmap, iconografía.
- "No levantó un subagente porque estamos en Pi" → sugerencia: skill que levante otra instancia de Pi para explorar el proyecto.
- Luego: "define un listado de tareas y plan de implementación con el contexto que ya tienes" → plan final.
- **Cambio de modelo para implementar**: Gemma E4B planifica/razona → **Qwen 3.6 35B MTP** (o LFM 2.5 24B A2B si no corre) implementa.

## Velocidades LFM 2.5 24B A2B

| Configuración | Velocidad |
|---------------|-----------|
| GPU offload parcial (5.37 GB) + ctx 60k + KV Q8 | **32 tok/s** |
| **Modelo completo en VRAM** | **183.78 tok/s** (sin MTP!) |
| Casi todo en CPU | **26 tok/s** |
| CPU puro | **22 tok/s** ("sigue siendo razonable") |

- "No hay excusas para no usar modelos locales": sin RAM suficiente, baja cuantización hasta uno ejecutable.

## Cruces en la wiki

- Entidad: [[holamundo]] (fuente 2 en el lote; guía end-to-end IA local para desarrollo).
- Entidad: [[lm-studio]] (gestor modelos; model server JIT + only-last-loaded; KV Q8 trick; MCP Exa; extensión VS Code Copilot local).
- Entidad: [[pi-agent]] (plugin LM Studio, `/model`; skills backlog/story; alucinaciones corregibles).
- Entidad: Herdr (multiplexor: Pi + Lazygit lado a lado).
- Modelo: [[gemma-4]] (E4B razonamiento/chat; 12B agéntico moderado; 18→104 tok/s según offload).
- Modelo: [[qwen]] (3.6 35B A3B MTP diario; 3.5 2B sorprende; 3.8 27B).
- Modelo: [[lfm]] (2.5 24B A2B implementación código; 183.78 tok/s VRAM completa).
- Concepto: [[ia-local-texto]] (tareas acotadas + contexto claro; híbrido nube/local; PCI Compliance → solo local).
- Concepto: [[multiplexores-agentes]] (Herdr 2 pestañas).
- Relacionado: fuente 33/58 (Pi Agent setup end-to-end); fuente 45/58 (automatización Python arnés); fuente 49-50/58 (MinAgent); fuente 32/58 (pila 5 capas: LM Studio escritorio).
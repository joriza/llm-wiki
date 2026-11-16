# Inferencia local (motores, caché y presupuesto de memoria)

- **Tipo**: página de concepto (clúster transversal).
- **Dominio**: `ia-local/` (creada en la consolidación T40 de los tramos 28-37, 2026-11-15).
- **Fuentes (5, umbral ≥2)**: [[resumen-WL206-qwen-3-8-flash-next-gpu-enorme]] (WL-206, Jorge Marfil — arquitectura MoE que saca la tabla de embeddings de la VRAM) · [[resumen-WL239-motor-de-inferencia-codesimple]] (WL-239, CodeSimple — qué es un motor de inferencia: llama.cpp, vLLM, SGLang, TensorRT-LLM) · [[resumen-WL240-cache-expertos-llama-cpp-cognix]] (WL-240, Cognix — hot expert cache MoE en llama.cpp) · [[resumen-WL253-strata-qwen38-flash-cognix]] (WL-253, Cognix — Strata, motor de una sola arquitectura con prefill 8×) · [[resumen-WL254-16gb-vram-master-derecho-cognix]] (WL-254, Cognix — presupuesto de VRAM: pesos + caché KV). Cruce vecino: [[resumen-WL209-nvidia-elimina-la-rtx-5090]] (WL-209, compra de GPU por GB de contexto, no por nombre de placa).

El clúster reúne las fuentes que explican **qué pasa entre el modelo y tu GPU cuando generas tokens**, y por qué «¿corre en mi placa?» no tiene respuesta de sí/no:

- **La capa motor** (WL-239): el modelo es la partitura, el motor la ejecuta — llama.cpp (cuantización + mmap, IA en hardware común), vLLM (PagedAttention contra los 60-80 % de memoria desperdiciada + continuous batching), SGLang (prefix caching en árbol) y TensorRT-LLM (integración vertical NVIDIA); las features convergen y el frente nuevo son los agentes long-context.
- **La caché como protagonista** (WL-240, WL-254): la VRAM se agota por la **caché KV**, que crece con la conversación (~64 KB/token en Qwen 3.8 27B) — por eso el mismo archivo rinde 64k de contexto en una 5060 Ti y 262k en una 5090; el hot expert cache de llama.cpp trata la VRAM como caché LRU de expertos MoE (1,62×-2,2× en benchmarks oficiales).
- **La logística del prefill** (WL-253): Strata reordena el pipeline (bloques de 6144 tokens + prefetch DMA + división GPU/PCIe/CPU por capa + MTP) y multiplica ×8 el prefill de llama.cpp — la métrica que importa en agentes; Cognix porta las optimizaciones a un fork de llama.cpp (120→620 tok/s).
- **La arquitectura como ahorro** (WL-206): Qwen 3.8 Flash Next activa 125 B parámetros pero deja la tabla de embeddings (51 B) en SSD/RAM — «ya no necesitás una GPU enorme»; el umbral baja a 64 GB de RAM de sistema.

**Actualización T48 (2026-11-16)**: [[resumen-WL283-compilar-llama-cpp-comparativa-nichonauta]] (WL-283, Nichonauta) añade la capa **runtime compilado vs precompilado**: compilar llama.cpp con CUDA vía agente Codex da ~5 % de ganancia (~9,5 vs ~9,2 tok/s, RTX 3060) — la velocidad la domina el tamaño del modelo frente a la VRAM, no el binario. Cruce agéntico: la compilación la ejecuta un agente de código con toolchain local sin sudo ([[agentes-de-codigo]]).

**Actualización T49 (2026-11-16)**: [[resumen-WL290-qwen38-vs-qwen36-nichonauta]] (WL-290, Nichonauta) añade la variable **presupuesto de esfuerzo de razonamiento**: Qwen 3.8 Flash Next cuantizado no supera a Qwen 3.6 BF16 con esfuerzo bajo — «el modelo no es malo, la cuantización tampoco, pero para funcionar bien requiere mucho razonamiento»; entre 3.6 a 4 bits y a 16 bits casi no hay diferencia. El costo real de la inferencia local no es solo la memoria: es también el presupuesto de cadena de razonamiento (cruce con [[percepcion-de-regresion-de-modelos]]).

**Tesis transversal**: el costo de la inferencia local no lo fija el tamaño del modelo sino la **jerarquía de memoria** (SSD→RAM→VRAM) y el presupuesto de contexto: «comprá los GB de tu contexto, no el nombre de la placa» (WL-209).

**Ver también**: [[llama-cpp]] · [[strata]] · [[hardware-para-ia-local]] · [[desarrollo-con-modelos-locales]] · [[qwen]] · [[cognix]] (canal dominante del clúster).

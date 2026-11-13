# Resumen: Probé Todos los 4 Bits de Qwen3.8-27B — Este es el Mejor para tu GPU

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-09-02-probe-todos-los-4-bits-de-qwen3-8-27b-este-es-el-mejor-para-tu-gpu.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «KB»→KV, «NBF P4»→NF4) — https://www.youtube.com/watch?v=cNgD4JDNLd4 — Cognix, 2026-09-02 (08:31).
- **Nota**: fuente 35/58 del lote ia-local (entrada 40 del playlist). Cuarta fuente del canal **Cognix** (3ª en ia-uso-practico). Análisis técnico profundo: **«4 bits» no es una etiqueta única** — precisión numérica ≠ algoritmo de cuantización ≠ formato contenedor ≠ kernel de inferencia.

## El engaño silencioso: «4 bits» ≠ una sola cosa

Un modelo de 27B parámetros a 16 bits = ~55 GB pesos. La compresión es obligatoria, pero **cuatro variables determinan el resultado real**:

| Variable | Qué es | Ejemplos |
|----------|--------|----------|
| **1. Precisión numérica** | Tipo de dato | FP8, INT4, NF4 (NBF P4) |
| **2. Algoritmo de cuantización** | Método matemático de redondeo | AWQ, GPTQ, calibración por matriz de importancia |
| **3. Formato de contenedor** | Empaquetado en disco | GGUF, EXL2, EXL3 |
| **4. Kernel de inferencia** | Código bajo nivel (CUDA/Metal) que ejecuta la multiplicación | llama.cpp, EXLlama, VLLM, SGLang, TensorRT-LLM, MLX |

**GGUF no es un algoritmo** — es solo el empaque. La calidad final = precisión × algoritmo × contenedor × kernel × hardware.

## Qwen 3.8-27B: arquitectura híbrida que cambia la KV cache

- 64 capas totales: **16 atención completa clásica** + **48 atención lineal con compuertas**.
- Solo las 16 capas de atención completa generan KV cache clásica: 4 cabezales × dim 256 = **32,768 valores/token = 64 KB/token a 16 bits**.
- **Caché real según contexto**:
  - 32k tokens → ~2 GB
  - 128k tokens → ~8 GB
  - 262,144 tokens (límite nativo) → **16 GB solo KV cache** (sin pesos).
- KV a 8 bits → 8.5 GB; KV a 4 bits → 4.5 GB.
- **Conclusión práctica**: un archivo de 14 GB «4 bits» cabe en 16 GB VRAM **solo con contexto corto**; documentos largos / base de código → desborda a RAM del sistema → velocidad cae en picada.

## Recetas dinámicas Unsloth (UD-Q4): la evolución de la cuantización

- **Antes**: misma reducción a todo el modelo (estático).
- **Ahora (UD v3)**: **datos de calibración** identifican capas sensibles → se conservan en mayor precisión; capas no críticas → compresión agresiva.
- Calibración: **45 → 200+ fragmentos**; combina **hasta 14 tipos de cuantización** en un solo archivo.
- **Variantes medidas**:
  - `UD_Q4_XS`: 14.3 GB disco
  - `UD_Q4_K_XL`: 17.6 GB disco
  - `UD_Q3_K_XL`: 13.1 GB (protege proyecciones de atención críticas, sacrifica precisión general)

## Hardware real: qué formato elegir según tu GPU

| Hardware | Formato óptimo | Por qué |
|----------|----------------|---------|
| **Nvidia serie 30/40 (Ampere/Ada)** | **EXL3** (cuantización vectorial) | Velocidades top para usuario único; en RTX 3090 24 GB: build 4 bits (capas críticas 8 bits + KV 8 bits) = 22 GB con ctx 196k → **43+ tok/s ctx corto, 30+ tok/s >100k ctx** |
| **Nvidia Blackwell (serie 50)** | **NF4** (native 4-bit tensor cores) | Multiplica directo en 4 bits sin descomprimir; calidad: 77.26 vs 77.50 (Blue Pro), 88.08 vs 88.79 (GP Coa) — imperceptible; ganancia real de velocidad |
| **Apple Silicon (memoria unificada)** | **MLX 4-bit groups of 64** | En Mac 32 GB → ~15 GB unificada, espacio de sobra |
| **Producción empresarial (multi-GPU, concurrencia)** | **AWQ/GPTQ** sobre **VLLM/SGLang** | Estándar de la industria |

## El modelo de 1.71 bits ≠ Qwen 3.8 más comprimido

Ese récord (<6 GB) parte de **una versión anterior** de Qwen y usa **reentrenamiento completo a baja precisión** (no cuantización post-entrenamiento). Categoría distinta.

## Impacto macro: costo por token → electricidad

Modelo razonamiento híbrido 27B abierto corriendo en **RTX 3090 usada ($500) o workstation media** → **presiona precios cloud**. Cuando costo/token ≈ electricidad local, el mercado se mueve.

## Regla de decisión práctica

> **«Una etiqueta 4/8 bits ya no describe nada por sí sola. Lo que importa: cómo se distribuye la precisión dentro de la red, qué tan bien encaja con los núcleos de tu tarjeta específica, y si te alcanza la memoria para el contexto que realmente necesitas. No busques el archivo más pequeño, busca el que de verdad calza con tu hardware.»**

## Cruces en la wiki

Entidad: [[cognix]] (4ª fuente del canal; 3ª en ia-uso-practico). Modelo: [[qwen]] (Qwen 3.8-27B arquitectura híbrida, KV cache masiva). Hardware: [[hardware-para-ia-local]] (VRAM vs contexto, EXL3/NF4/MLX por GPU). Formatos: GGUF, EXL3, NF4. Cuantización: Unsloth UD recetas dinámicas.
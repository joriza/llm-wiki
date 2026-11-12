# Resumen: Estás Usando el Motor de IA Equivocado… y Esta es la Razón

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-09-06-estas-usando-el-motor-de-ia-equivocado-y-esta-es-la-razon.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «voellm»→vLLM, «Goof»→modelo, «Vellum»→vLLM, «KB»→KV) — https://www.youtube.com/watch?v=DAlkCwhIIoY — Cognix, 2026-09-06 (18:20).
- **Nota**: fuente 32/58 del lote ia-local (entrada 37 del playlist). Segunda fuente del canal **Cognix** en el lote (la anterior: historia de lenguajes). Análisis estructural de la pila de inferencia local (5 capas) y por qué comparar herramientas solo por tok/s es engañoso.

## La pila de 5 capas de la inferencia local

| Capa | Qué es | Ejemplos |
|------|--------|----------|
| **1. Formato del modelo** | Representación de parámetros / cuantización | GGUF, EXL3, FP8, SafeTensors |
| **2. Runtime / entorno de ejecución** | Kernels matemáticos (CPU/GPU) | llama.cpp (C/C++), MLX, ExLlama |
| **3. Motores de inferencia (servidor)** | Agrupación de solicitudes, gestión KV cache, concurrencia | vLLM, SGLang, TensorRT-LLM |
| **4. Gestión del modelo** | Descarga, versiones, procesos, API sencilla | Ollama (puerto 11434), LM Studio (backend intercambiable) |
| **5. Interfaz de usuario** | App gráfica: chat, docs, tools | LM Studio, Open WebUI, AnythingLLM |

**Punto clave**: las herramientas no nacieron para el mismo problema → comparar solo tok/s ignora la capa que cada una resuelve.

## Herramienta por herramienta: para qué sirve cada una

| Herramienta | Capa principal | Cuándo usarla |
|------------|----------------|---------------|
| **llama.cpp** | Runtime (2) + servidor ligero (3) | Máxima flexibilidad hardware (Metal/CUDA/CPU), **repartir modelo entre GPU y RAM** (offload granular), control de bajo nivel, 1-2 usuarios. MIT license. |
| **Ollama** | Gestión (4) + API | **Simplicidad extrema**: `ollama pull/run`, API local (puerto 11434), contextos auto según VRAM (<24 GB → 4k, 24-48 → 32k, ≥48 → 256k). Menos control granular. |
| **LM Studio** | UI (5) + backends intercambiables (2) | Experiencia de escritorio completa (buscar, descargar, chat, docs, tools). Backends: llama.cpp (GGUF) o MLX (Apple). Propietario (importa en redistribución). |
| **vLLM** | Motor servidor (3) | **Concurrencia alta**: PagedAttention (bloques KV como memoria virtual), prefix caching, tensor parallelism, multi-GPU. Ventaja aparece con **múltiples solicitudes simultáneas**, no en 1 usuario. |
| **SGLang** | Motor servidor (3) | **Radix Attention**: reutiliza estados/cachés cuando solicitudes comparten contexto (system prompt grande + tools + conversación). Ideal para **agentes y flujos estructurados**. |
| **TensorRT-LLM** | Runtime especializado (2) | Nvidia only, optimizaciones agresivas para producción. Complejidad alta (versiones CUDA, drivers, dependencias). |
| **ExLlama** | Runtime especializado (2) | Nvidia + formatos cuantizados GPU-nativos (EXL3). Velocidad altísima **si el modelo cabe en VRAM**. |
| **MLX** | Runtime (2) | **Apple Silicon nativo** (memoria unificada CPU/GPU). No copiar configuraciones de PC Nvidia. |
| **Free Token / Calibri** | Experimental (MoE) | **MoE gigantes en hardware doméstico**: pesos parciales en GPU (caché dinámica), expertos en RAM (Free Token) o jerarquía GPU→RAM→NVMe (Calibri). Rompen barrera VRAM, pero **capacidad ≠ rendimiento** (ancho de banda/latencia del storage). |

## El error de los benchmarks caseros

Comparar vLLM vs llama.cpp en **una sola conversación** es como comparar un auto deportivo vs un autobús transportando **una persona**. El auto gana, pero el autobús no nació para eso. Lo que mide tok/s en 1 request ignora para qué se diseñó cada motor (concurrencia, agentes, MoE offload, etc.).

## Regla de decisión (resumen del video)

- **Flexibilidad GPU+RAM / offload granular / 1-2 usuarios** → **llama.cpp**
- **API local cero-fricción / descargar-correr** → **Ollama**
- **Escritorio todo-en-uno / chat + docs + tools** → **LM Studio**
- **Múltiples GPU / muchas solicitudes simultáneas** → **vLLM / SGLang**
- **Producción Nvidia / optimizaciones extremas** → **TensorRT-LLM**
- **Apple Silicon / memoria unificada** → **MLX**
- **MoE gigantes / VRAM limitada** → **Free Token / Calibri** (experimentales)

## Cruces en la wiki

Entidades principales: [[llama-cpp]], [[ia-local-texto]] (Ollama/LM Studio como runners), [[hardware-para-ia-local]] (VRAM vs RAM, MoE offload). Motores servidor: vLLM, SGLang (nuevos), TensorRT-LLM. Canales: [[cognix]] (2ª fuente). Formatos: GGUF, EXL3, SafeTensors.
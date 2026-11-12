# Resumen: Llama.cpp — cómo instalar IA local y modelos GGUF en tu PC

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-local/2026-07-06-llama-cpp-como-instalar-ia-local-y-modelos-gguf-en-tu-pc.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos normalizados solo aquí: «Yama CPP»→llama.cpp, «Qen»→Qwen, «KVK/KVCH»→KV cache) — https://www.youtube.com/watch?v=fkxXgdZdxv8 — Nichonauta, 2026-07-06 (53:30).
- **Nota**: fuente 2/58 del lote ia-local. Tutorial técnico completo de 53 minutos — consolidado en la entidad [[llama-cpp]]. Hardware del caso: RTX 3060 de 12 GB.

## Instalación: binarios precompilados, sin ansiedad de actualización

De GitHub (`ggml-org/llama.cpp` → Releases) se descarga **el build precompilado para tu hardware**: CUDA 12/13 (NVIDIA), Vulkan (NVIDIA/AMD/Intel) o CPU puro — y si la versión CUDA/Vulkan no encuentra GPU, **hace fallback automático a CPU**. Las librerías CUDA se descargan aparte y se descomprimen junto al ejecutable. Consejo contra la FOMO: las versiones salen cada poco tiempo, pero cada actualización apunta a hardware/modelos específicos — «si tu modelo funciona, no necesitas la última».

## GGUF: el formato que lo hace versátil

Los modelos se descargan de Hugging Face en formato **GGUF**: soportan **cuantización** (de 16 bits a 8/6/4 bits — pierde algo de precisión, ahorra mucho almacenamiento y gana velocidad), **partición GPU/CPU** (la parte que no cabe en VRAM va a CPU/RAM) y hasta **visión** (el encoder de imágenes, archivo `mmproj` aparte, típicamente BF16). El equipo de **Unsloth** cuantiza y sube las variantes más usadas — revisar su colección antes de descargar. Criterio del canal para elegir variante: descargas sostenidas en el último mes (no tendencia pasajera) = modelo probado; y el tamaño adecuado al hardware propio (el Qwen 3.5 4B es de los más descargados porque «casi cualquier hardware lo ejecuta»). Cuantización típica: UD-Q4_K_XL (2,91 GB vs 8,42 GB del modelo completo).

## Uso básico: llama-server

El punto de entrada habitual es **`llama-server`**: chat web propio para pruebas + **endpoint OpenAI-compatible** en local (`http://127.0.0.1:8080/v1`) conectable desde Open WebUI, AnythingLLM, GitHub Copilot, OpenCode, Codex o código Python. Carga manual artesanal: `llama-server -m modelo.gguf --mmproj vision.gguf` — sin flags, llama.cpp **auto-aprovecha toda la VRAM** (cargó 4 slots paralelos y 216k tokens de contexto por su cuenta) y por defecto incluye la cadena de razonamiento.

## El comando «bueno» (.bat por modelo) y sus optimizaciones

Guardar el comando en un **`.bat` por modelo** (doble clic = servidor arriba; con salto de línea final para que se ejecute). El comando completo del tutorial, pieza por pieza:

- **`-c 131072`**: ventana de contexto explícita (131k tokens).
- **KV cache a 8 bits** (`-ctk q8_0 -ctv q8_0`): mitad de memoria con ~99 % de calidad vía atención rotativa estilo TurboQuant (paper de Google).
- **MTP / decodificación especulativa**: los modelos Qwen 3.5/3.6 traen un **submodelo borrador (MTP) incluido** que predice los siguientes tokens y el modelo grande solo valida — «solo puede dar respuestas que el grande daría», cero pérdida de calidad, +velocidad (73→80-100 tok/s, sobre todo en código). Gemma 4 lo trae como **archivo aparte** (flag `-md`). Cuidados: indicar cuántos tokens predecir (2 — «más puede salir muy bien o muy mal») y su propia KV cache a 8 bits. Trampa documentada: algunas subidas cuantizadas **quitaban el MTP** (antes llama.cpp no lo soportaba) — si falla, descargar la variante «-MTP-GGUF» del mismo autor.
- **Slots paralelos** (`-np 4`): 4 respuestas simultáneas (OpenCode + chat + …); la velocidad individual baja pero la suma de tokens/segundo sube; con la KV cache unificada consumen como una sola.
- **Sampling de Qwen**: los parámetros de muestreo recomendados por el equipo de Qwen para uso agéntico/razonamiento en 3.5/3.6.
- **Visión**: `--image-min-tokens 1024` para que cada imagen ocupe el mínimo que el modelo entienda bien.
- **Cache de conversaciones en RAM**: cambiar de conversación no reprocesa — se recarga de RAM a GPU.
- **Alias del modelo** (`-a`): nombre legible para los clientes que se conectan.

Depuración: si el `.bat` se cierra sin mostrar el error, ejecutarlo desde un `cmd` abierto — la ventana persiste y muestra el fallo (en el ejemplo: MTP ausente en el GGUF descargado).

## Modelos que no caben en GPU: MoE y la partición CPU/GPU

El Qwen 3.6 35B-A3B (22 GB en cuantización MXFP4-MoE) **no cabe completo en 12 GB de VRAM**, pero es una **mezcla de expertos (MoE)**: 35B de parámetros con solo **3B activos** por token — aunque los expertos vivan en CPU/RAM, la velocidad sigue siendo usable (~26 tok/s). Control fino: **`--n-cpu-moe N`** mueve los expertos de las últimas N capas a CPU (alto = más VRAM libre; bajo = más velocidad) — ajustar hasta llenar la GPU; el atajo `--override-tensor`/`-ot` equivalente mueve *todos* los expertos a CPU. Comparativa final del canal: el 4B da 70-100 tok/s; el 35B-A3B ~26-29 tok/s con capacidad muy superior.

## Conexión con el resto del ecosistema

El endpoint OpenAI-compatible conecta **OpenCode** (`proveedor personalizado` + URL local + nombre de modelo + API key cualquiera) — mientras OpenCode genera código, el chat web responde otra cosa en paralelo (los logs muestran los múltiples slots con IDs distintos). Cruces en la wiki: es el motor que [[ia-local-texto]] describía como alternativa a Ollama/LM Studio; los clientes agénticos están consolidados en [[agentes-de-codigo]].

---

**Ver también**: [[llama-cpp]] (entidad-herramienta, tutorial consolidado) · [[ia-local-texto]] (Ollama/LM Studio) · [[agentes-de-codigo]] (clientes que consumen el endpoint).

# WL-781 · Ejecuta Modelos LLM Enormes En Tu Portátil Patata (AirLLM)

| | |
|---|---|
| **Canal** | Jorge Marfil |
| **Fecha del vídeo** | 2026-11-28 |
| **Duración** | 41:08 |
| **Raw** | [raw/ia-local/2026-11-28-ejecuta-modelos-llm-enormes-en-tu-portatil-patata-airllm.md](../../raw/ia-local/2026-11-28-ejecuta-modelos-llm-enormes-en-tu-portatil-patata-airllm.md) |
| **Dominio definitivo** | `ia-local` (consolidación T37, tramo 110) |

## Qué trata

Análisis técnico y desmontaje cuantitativo del titular viral sobre AirLLM (que el canal pronuncia con garbiñeos ASR variados — «LLaMA», «RLM», «RLLM», «A RLLM», «Lama» — todos AirLLM): la librería Python que promete correr un LLM de 405B o incluso Kimi K3 de 2,8 billones de parámetros en una gráfica de 4 GB sin cuantizar. El autor leyó el README, las release notes, las incidencias de GitHub y parte del código, y separa lo que se sostiene de lo que el titular calla.

## El truco y su precio

- **Idea**: partir el modelo en un archivo por capa y traer solo una capa a la vez desde el disco a la VRAM (metáfora de la cocina: encimera = VRAM, despensa = RAM, trastero = SSD). El pico de 3,72 GB con Kimi K3 está medido en las notas de la v3.1.0 — pero contra el modelo completo de 1,56 TB y sobre una RTX 6000 Ada de 48 GB.
- **disk bound**: cada token necesita releer TODAS las capas. La cuenta central del vídeo: segundos por token ≈ GB del modelo ÷ GB/s del disco (un suelo, el mejor caso). Con Llama 3.1 405B (811,7 GB en BF16, 126 capas): 54,8 s/token con un 9100 Pro, 108,9 con un 990 Pro, 231,9 con PCIe 3.0. Una respuesta de 400 tokens ≈ 6,1–25,8 horas.
- **La caché de página cambia todo**: si el modelo cabe en la RAM libre, los tokens siguientes salen de la despensa (caso medido en GitHub: 2 min → 13 s por token, 9× más rápido, solo cambiando de dónde salían los datos). Con 405B no cabe en casi ninguna RAM doméstica (la mayoría tiene 8-16 GB).
- **El pasillo PCIe**: aunque el modelo quepa en RAM, AirLLM sigue moviendo cada capa RAM→VRAM por un camino ~5,7× más estrecho que RAM→CPU; si cabe en RAM, llama.cpp/Ollama suelen ser más rápidos.
- **Limpieza por capa**: AirLLM ejecuta garbage collection + recorte + vaciado de caché de GPU tras cada capa y cada token; el cambio aceptado el 23-11 (v4.0.1, `clean_memory_per_layer`) midió 123,3 s → 7,8 s para 32 tokens (≈16×) con la misma respuesta y pico de VRAM.
- **La compresión miente**: el README promete «hasta 3× más rápido» con 4/8 bits; medido en una Grace Blackwell con Qwen 2.5 32B: 13,3 s/token sin comprimir, 50,5 con 8 bits (3,8× más lento) y 106,7 con 4 bits (8× más lento) — hay que descomprimir cada capa y se pierde la precarga. La promesa viene de 2023, con discos lentos.

## Lo que el titular cuenta mal

1. Comparar el número del README con tu gráfica: dice si el modelo **carga**, no cuánto tardas.
2. «Sin cuantizar» solo en sentido estrecho: DeepSeek V3 viene en FP8 y Kimi K3 en MXFP4 de fábrica (~4,46 bits/parámetro).
3. Llama 405B: el cuaderno enlazado usa una versión en 4 bits de 215,6 GB y no publica un solo tiempo; todos los segundos/token del vídeo son divisiones propias del autor.
4. Los «64 GB de RAM» que se atribuyen a Kimi K3 salen en realidad de las notas de Qwen 3.5 Flash Next 125B.
5. Kimi K3 real: 15 min de arranque y **292 segundos por token** (0,003 tokens/s) — una respuesta de 400 tokens ≈ 32,4 horas. La carga por expertos (16 de 896 activos, ~1 GB por capa) solo existe en AirLLM para Kimi; con DeepSeek V3 carga la capa entera (92,4 s/token).

## Alternativas y para quién sirve

- **DeltaFin** (Rust, MIT): Kimi K3 completo a 3,4 s/token en un M1 Max (84,7× menos espera que AirLLM, máquinas distintas); un fork con 4 SSD + modelo borrador (speculative decoding con K3 Spark de 6,6 GB) llega a 1 token/s en un M5 Max 128 GB — 400 tokens en ~6,7 min. **Colibri** (C, Apache 2.0, 53,4 mil estrellas): GLM 5.2 de 744B a 10-20 s/token en un portátil de 25 GB, 1,83 tok/s en un Ryzen AI Max+395 con 128 GB.
- **Casos donde AirLLM sí encaja**: procesamiento por lotes (50 prompts a la vez bajó de 35 a 5,3 s/token, el viaje se reparte), LoRA en streaming (125B en <6 GB VRAM), curiosidad puntual de una respuesta corta, y **privacidad** — el único motivo que las cuentas dejan intacto.
- **Límites duros**: en Mac solo arquitecturas estilo Llama/Mistral (Kimi K3 ni DeepSeek dan error antes de descargar); sin modo servidor ni endpoint compatible con OpenAI (un agente a 292 s/token: una tarea de 200 pasos ≈ 1 mes); Kimi K3 exige entorno exacto (Flash Attention, PyTorch CUDA 12, Transformers 4.56); cuenta con el doble de disco del modelo (original + capas ≈ 1,62 TB con 405B, aunque generar solo lee y no desgasta el SSD).

## Veredicto del canal

La regla final: **GB del modelo ÷ GB/s de tu disco = segundos por token**. Si el modelo cabe en tu RAM libre, usa llama.cpp/Ollama; si la división da más de unas pocas horas para una respuesta de 300 palabras, la API (la misma respuesta de Kimi K3 cuesta 0,6 céntimos vía Moonshot) gana — salvo que tus datos no puedan salir de casa.

## Valoración

La mejor pieza técnica del tramo hasta ahora: metodología reproducible (divide tu propia cuenta), fuentes verificables (release notes, incidencias con fechas y hardware, mediciones de terceros identificadas como tales) y desmontaje del marketing de README con datos. 8.ª fuente del canal ([[jorge-marfil]] actualizada en la consolidación T37). Cableado desde el resumen: [[ia-uso-practico]], la familia de IA local ([[llama-cpp]], [[hardware-para-ia-local]], [[por-que-ia-local]], [[desarrollo-con-modelos-locales]], [[panorama-herramientas-open-source-ia]]) y el hilo de límites/eficiencia de la inferencia local ([[inferencia-local]]).

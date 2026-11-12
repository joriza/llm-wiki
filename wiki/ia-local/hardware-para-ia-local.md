# Hardware para IA local

- **Tipo**: página de concepto.
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-11 (fuente 27/58 del lote ia-local — irá creciendo con las fuentes de hardware del lote).
- **Fuentes**: [[resumen-ia-local-con-llama-cpp-funciona-en-una-pc-de-4-gb-ram]] · [[resumen-gpu-40gb-como-usar-tu-gpu-integrada-para-ia-con-llama-cpp]] (fuente 21 — la iGPU como «VRAM barata») · [[resumen-827-no-necesitas-una-gpu-de-3000-para-ia-local]].

## La lección fundamental: velocidad de memoria > capacidad de memoria

El experimento de la mini laptop de 4 GB (fanless, Windows, CPU sencilla, sin GPU dedicada): Gemma 4 E2B en Q2 → **0,41 tok/s** procesando el prompt; Qwen 3.5 0.8B en Q2 (455 MB) → **0,24 tok/s** — «peor siendo más chico». Conclusión medida: **el cuello de botella no es que el modelo quepa, sino el ancho de banda de la RAM y la potencia del CPU**. Por eso **una GPU viene de lujo**: su VRAM, aunque de menor capacidad, es órdenes de magnitud más rápida — el criterio «encaje 100 % en GPU» de [[desarrollo-con-modelos-locales]] existe por esto.

## Reglas extraídas

- **Piso realista**: una PC de 4 GB RAM sin GPU dedicada es inutilizable para LLMs, incluso con modelos de 0.8B y cuantización Q2 — y Windows + navegador ya consumen la mitad de esa memoria (Linux liberaría parte).
- **GPU dedicada aunque sea chico**: VRAM rápida > RAM grande y lenta.
- **Workaround válido**: `llama-server --host` para servir por red y usar el navegador de otra PC — la máquina débil solo ejecuta.
- Los modelos ultra-chicos (SmallLM 0.135B) sacrifican justo lo que hace útil a un LLM: idiomas, visión, razonamiento, herramientas, contexto.

## Absorción del cierre del lote (fuentes 39, 43-48, 51, 55-57 — consolidación 2026-11-11)

**Las reglas de compra (CodeSimple, fuentes 43 y 47):**

- **La GPU como materia prima**: ≥16 GB de VRAM se revaloriza, ≤12 GB se deprecia (eBay, 50k anuncios ene-jun 2026); la DRAM subió +172 % en 2025 porque los data centers se llevan hasta el 70 % de la producción. Memoria soldada (DGX Spark, Mac Studio) = prima de escasez irrevendible (Mac Studio M3 Ultra: -89 % en trade-in). Regla: *«compra la tarjeta que un desconocido te quitaría de las manos en una tarde, o no compres nada»*. Equilibrio comprar vs alquilar: ~14 años de uso al 100 %.
- **Benchmarks miden decodificación; la espera real es preprocesamiento** (94 % del tiempo con 8.5k tokens de contexto). En MoE (la corriente principal en 128 GB) la ventaja de ancho de banda del Mac Studio cae de 2.26× a 1.25×; en prefill AMD gana o empata. AMD mejora **gratis por software** (Hip Blast: 5→36 TFLOPs; kernels Ken 3.6: decodificación ×2, prefill ×3, 147 s→58 s) mientras Apple cobra chip nuevo. Trampas: mini PC baratos con bus a mitad de velocidad por firmware y ROCm roto — las cajas que funcionan (Minisforum MSS1 Max, Framework Desktop) cuestan $600-1000 más, y esa diferencia ES el producto.

**La concurrencia (Cognix, fuente 44):** un usuario = GPU ociosa; continuous batching multiplica throughput ×13 a costa de latencia individual; el cuello real es la **KV cache** (~40 GB/cliente a 128k contexto; 2×RTX Pro 6000 chocan en 3 requests de 64k); RAM compra asientos. Economía: 16×H200 = $0.30/M tokens vs DeepSeek Flash $0.28 — el precio lo fija quien tiene utilización perfecta; excepciones: residencia de datos, fine-tuning propio.

**Mac Studio vs suscripción (Cognix, fuente 39):** Max 128 GB $5.1k punto dulce; Ultra 256 GB para MoE; $20-60/mes → olvida lo local; el costo oculto del local es tiempo.

**MoE gigantes en GPU chica (fuentes 51, 55-56):** [[strata]] (caché de expertos adaptativa + CPU/GPU pipeline + lectura por chunks → 125B a 24 tok/s en una 5070) y el enfoque de [[llama-cpp]] (expertos en RAM vía mmap + tabla n-grams en SSD — ver [[qwen]] 3.8 Flash Next). La regla transversal: **«si no cabe en la despensa (RAM), no corre — cuenta GB de RAM antes de mirar la gráfica»**; ajuste gratis: 1 hilo por núcleo (+48 %).

**La salida sin hardware (fuentes 48, 57):** Kaggle GPU T4×2 gratis (30 h/semana) + Ollama + túnel Cloudflare — para aprender/experimentar, no para producción (ver [[agregacion-apis]]).

Reglas previas (PC de 4 GB, iGPU 40 GB, botiquín 827) se mantienen abajo.

## El truco de la iGPU como «VRAM barata» (fuente 21)

Una GPU integrada (Ryzen 5 5600G) con 64 GB de RAM: 16 GB asignados como mínimo en BIOS + mitad del resto = **~40 GB disponibles para modelos** vía build Vulkan de llama.cpp (`--device N` para que solo vea la iGPU). La regla que destila: la RAM es más lenta que la VRAM **pero los cálculos matriciales los hace la GPU** — mejor que CPU puro. Resultados: Ling 3.0 Tiny 8B-A1B (MoE) a >20 tok/s; Qwen 3.5 9B denso a ~7 tok/s (11,2 GB). **El caso ideal de la iGPU son los MoE** (todo cabe en un dispositivo y solo se activa una parte por token — el ancho de banda de RAM ni se nota); los densos grandes van bien con modelo borrador. Además: más barato que VRAM dedicada equivalente, menos calor, menos consumo, y el CPU queda libre. Anunciado: 128 GB de RAM → >64 GB de iGPU → modelos de 100B 100 % en GPU.

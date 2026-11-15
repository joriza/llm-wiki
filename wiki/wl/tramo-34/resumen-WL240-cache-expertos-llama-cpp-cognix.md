# WL-240 — Esta nueva CACHÉ hace que la IA local sea 2 VECES más rápida

- **Fuente original**: `raw/wl/tramo-34/2026-10-13-esta-nueva-cache-hace-que-la-ia-local-sea-2-veces-mas-rapida.md`
- **Video**: [Esta nueva CACHÉ hace que la IA local sea 2 VECES más rápida](https://www.youtube.com/watch?v=Ac_imYXldYo)
- **Canal**: Cognix · **Publicado**: 2026-10-13 · **Duración**: 11:12 · **Ingesta**: 2026-11-15 (tramo 34)

## Qué trata

Explicación técnica del **caché de expertos calientes (hot expert cache)** integrado en llama.cpp (7 de octubre, según el video) para acelerar la inferencia local de modelos MoE cuyo tamaño supera la VRAM:

1. **El problema**: en modelos MoE (p. ej. una config de Qwen «3.8 Flash Next» con 512 expertos, 10 activados por token), cuando el modelo excede la VRAM llama.cpp mantiene parte en RAM del sistema; el enrutador puede elegir expertos residentes en RAM → lectura por CPU + transferencia PCIe → la GPU espera. El cuello de botella real pasa a ser el ancho de banda de RAM/PCIe, no la GPU.
2. **La idea**: en vez de colocar capas completas en VRAM (ineficiente para MoE — el token usa un puñado de expertos por capa), reservar parte de la VRAM como **caché LRU por capa de expertos individuales** frecuentemente usados. Fundamento empírico: análisis de >54.000 registros de enrutamiento — sin lista fija de «expertos populares» útil, pero con **fuerte localidad temporal** (hit-rate simulado ~67 % con 64 entradas, ~81 % con 128).
3. **Resultados oficiales** (Qwen 3.8 Flash Next Q40, ~94 GB): RTX 4090 de 25 → 39,4/40,7 tok/s (1,62×, caché ~6,4 GB); RTX 5090 de 30,8 → 54,5 (6,4 GB) → **67,8 tok/s (2,2×, caché ~18,6 GB)**, con ~89 % de hits.
4. **El fork experimental multi-GPU**: llena la VRAM libre con entradas de caché, expulsión más inteligente, solapa cómputo CPU/GPU y optimiza planificador/kernels. Con GLM «5.3 Flash» (8 de 288 expertos por token): 2× RTX 3090 + 125 GB DDR4, modelo de 132 GB pasó de ~4 a >10 tok/s (2,5×); Qwen de 28 → 47 tok/s y ~60 con decodificación especulativa MTP.
5. **Advertencias** (bien señaladas por el video): no es una duplicación universal — depende de modelo/VRAM/RAM/PCIe/caché; modelos densos que caben en GPU no mejoran; el prefill puede incluso empeorar; la versión oficial es single-GPU y lotes pequeños, el multi-GPU sigue siendo fork.
6. **La tesis de fondo**: la inferencia local se mueve hacia una **jerarquía de memoria** clásica (SSD→RAM→VRAM con streaming de expertos y caché decidiendo qué subir). La pregunta correcta ya no es «¿entra el modelo en mi GPU?» sino «¿puede el motor predecir qué partes deben estar ahora en la GPU?» — vía para modelos enormes en hardware de consumo.

## Observaciones de triage

- Divulgación técnica de primera mano sobre cambios de llama.cpp recientes, con cifras de benchmark atribuidas («pruebas oficiales», integración del 7 de octubre) pero **sin enlaces a PR/issues del repo** — verificar en consolidación contra github.com/ggml-org/llama.cpp.
- Nombres de modelos con ruido de ASR: «Qwen 3,8 Flash Next» (probablemente Qwen3-Next), «GLM 5,3 flash», «RTX 3091» (¿2× RTX 3090?), «Q40» (¿Q4_0?) — normalizados solo aquí.
- Matiz honesto: el propio video aclara los límites del truco y la distinción oficial/fork.
- Canal Cognix ya con fuentes previas (WL-154, seguridad IA local) — candidato a entidad de canal en consolidación.

## Cruces (en texto plano, candidatas)

- [[llama-cpp]] (entidad existente — cablear en consolidación), [[hardware-para-ia-local]], [[cognix]] (entidad de canal candidata), WL-154 (Cognix, seguridad IA local), WL-239 (motores de inferencia — mismo eje MoE/VRAM/RAM), WL-206/209 (IA local).

## Dominio destino sugerido (pendiente de consolidación)

- **ia-uso-practico/ia-local** — optimización de inferencia local MoE en llama.cpp.

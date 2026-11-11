# Resumen: GPU 40GB — cómo usar tu GPU INTEGRADA para IA con llama.cpp

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-24-gpu-40gb-como-usar-tu-gpu-integrada-para-ia-con-llama-cpp.md` (video en español; transcripción literal por subtítulos automáticos, «link»→Ling, «RockM»→ROCm) — https://www.youtube.com/watch?v=4ZZT0ZTAJAI — Nichonauta, 2026-08-24 (11:41).
- **Nota**: fuente 21/58 del lote ia-local. Consolidado en [[hardware-para-ia-local]] — el truco de la GPU integrada como «VRAM barata».

## El truco: la iGPU como dispositivo de 40 GB

El Ryzen 5 5600G incluye una GPU integrada que **funciona a partir de la RAM**: con 64 GB totales, asignando un mínimo de 16 GB en la BIOS (que desaparecen de la RAM normal) y permitiendo que tome la mitad del resto, la iGPU queda con **~40 GB disponibles para modelos**. Clave conceptual: la RAM es más lenta que la VRAM, **pero los cálculos matriciales los hace la GPU** — mejor que CPU puro para LLMs. Comparado con una GPU dedicada de igual capacidad: **más económico** (la RAM cuesta menos que la VRAM), menos calor y menos consumo.

## Configuración y control

- llama.cpp build **Vulkan** (la iGPU Radeon es compatible también con ROCm sin soporte oficial; «Vulkan comúnmente funciona mejor — lo mejor es probar»).
- **`--device N`**: hace visible solo la iGPU — sin él, habría que indicar el dispositivo para cada pieza (modelo, borrador, mmproj, KV cache) por separado.
- Regla del sistema: dejar ~1 GB libre por los picos.

## Los resultados medidos (iGPU sola, sin GPU dedicada)

| Modelo | Tipo | Resultado |
| --- | --- | --- |
| Ling 3.0 Tiny 8B-A1B | **MoE** (1B activo) | **>20 tok/s** — «genial»: el modelo completo cabe en un solo dispositivo GPU y al activar solo una parte, el ancho de banda de RAM ni se nota |
| Gemma 4 E2B (denso 2B) | Denso | Funciona bien, ajustando MTP a la iGPU |
| Qwen 3.5 2B | Denso | Funciona; técnicas de borrador múltiples posibles («tenemos mucha VRAM, básicamente») |
| Qwen 3.5 9B (denso, sin MTP — descargó la variante sin él) | Denso grande | 11,2 GB, **~7 tok/s** |

## La regla de oro que destila

**«Principalmente modelos mezcla de expertos grandes van a funcionar muy bien; y los densos grandes también, si les ponemos modelo borrador».** El caso ideal para la iGPU es MoE (todo cabe en un dispositivo GPU y solo se activa una parte por token), y para densos grandes el borrador compensa. Además, el CPU queda libre para hacer otras cosas en la PC mientras la iGPU procesa.

## El anuncio

Próximo video: 2×32 GB adicionales → **128 GB totales → >64 GB de «VRAM» de iGPU** → modelos de 100B de parámetros 100 % en GPU; comparativa CPU vs iGPU vs iGPU+dedicada combinadas.

---

**Ver también**: [[hardware-para-ia-local]] (el truco de la iGPU consolidado) · [[llama-cpp]] (Vulkan, --device) · [[lfm]] (Ling 3.0 Tiny, el MoE probado en la iGPU).

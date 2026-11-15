# Resumen — El chip de IBM de 12 nm ridiculiza a Nvidia de 4 nm (NorthPole)

- **Fuente original**: `raw/wl/tramo-25/2026-10-18-el-chip-de-ibm-de-12-nm-ridiculiza-a-nvidia-de-4-nm.md` (video `aGFaZF81Fz8`, canal Marfil Lab, 2026-10-18, 25:50, subtítulos automáticos)
- **Dominio provisional**: wl (tramo-25) — consolidación diferida (L12)

## Tesis

NorthPole, el chip de inferencia de IBM Research (Almaden), supera en eficiencia energética y latencia a GPUs mucho más modernas (H100 de 4 nm) no por un proceso de fabricación mejor sino por arquitectura: memoria y cálculo integrados en el mismo silicio, eliminando el cuello de botella de Von Neumann. El análisis revisa las fuentes primarias (Science 2023, artículo HPE 2024, artículo del «armario» 2025) y matiza qué números se sostienen y cuáles son «la foto desde el mejor ángulo».

## Puntos clave

- **El problema**: cuello de botella de Von Neumann — la energía se va en mover datos entre memoria y procesador; el ancho de banda memoria-cálculo crece a la mitad del ritmo del cómputo (IBM: eficiencia ×3 cada 2 años vs. pasillo ×~1,4), así que en una década el «cocinero» se hace 243× más rápido y el «pasillo» solo ~10×.
- **La solución de NorthPole**: todos los pesos viven dentro del chip (192 MB de SRAM en 256 núcleos, ancho de banda interno de 13 TB/s), 12 nm con 22.000 M de transistores en 795 mm², solo ~400 MHz; control estático precalculado por compilador, sin predicción de saltos. Diseñado SOLO para inferencia: entrenamiento y reajuste se hacen en GPUs.
- **Números clave y sus matices**: en ResNet 50, 25× más imágenes/segundo/watio y 22× menos latencia frente a una GPU comparable de 12 nm; el famoso 72,7× tokens/watio frente a H100 es con lote 1 (las GPUs compiten en su punto débil), las GPUs corrieron activaciones a 16 bits por falta de kernels 4-bit, y la energía se midió igual para todos los tamaños de lote por limitación instrumental.
- **El armario 2025**: 288 tarjetas (115 peta-ops a 4 bits), 730 kg; Granite 3.3 8B a 4 bits: ~31.000 tokens/s con 28 usuarios; los «30 kW para 3 instancias» son extrapolación (medido: 10 kW por instancia en 84 tarjetas); subir el contexto fuerza a elegir entre contexto largo y número de usuarios porque la cache KV debe caber dentro.
- **Letra pequeña**: requiere cuantizar y reajustar cada modelo en GPUs (hasta 2 semanas en 8 H100 para 8B); GPT-4 no cabe; sigue siendo prototipo de investigación sin precio ni ficha de producto (el chip comercial que IBM sí vende es otro: Aspire); la prensa lo da por estancado desde 2023-24 aunque el artículo del armario es de 2025.
- **Veredicto del autor**: en la forma de trabajar «ridiculiza» a las GPUs, pero es una cocina de pruebas; la idea de dejar los pesos junto al cálculo es la lección duradera — el coste de usar IA no depende solo del nanómetro.

## Advertencias de triage

- Fuente secundaria de divulgación técnica con lectura de papers por parte del autor (cifras recalcadas y corregidas por él mismo); las comparativas provienen de mediciones de IBM, sin réplica independiente. Mismo canal que WL-189 (Marfil Lab), candidato a entidad de canal en consolidación.
- Sin patrocinios detectados; llamada a suscripción excluida.

## Cruces potenciales (consolidación diferida)

- WL-189 (Marfil Lab, NCM/Hybrid Reasoning Agents), WL-122 (TPU vs GPU), WL-144 (motor sin imanes — mismo patrón «arquitectura vs proceso»), [[hardware-para-ia-local]], [[agentes-de-codigo]].

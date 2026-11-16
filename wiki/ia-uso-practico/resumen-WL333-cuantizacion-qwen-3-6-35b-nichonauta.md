# WL-333 — Cuantización de Modelos de IA 🚀 ¿Realmente se Pierde CALIDAD?

- **Fuente original**: `raw/ia-uso-practico/2026-09-23-cuantizacion-de-modelos-de-ia-realmente-se-pierde-calidad.md` ([vídeo](https://www.youtube.com/watch?v=SyLPqEO0YUU))
- **Canal**: Nichonauta
- **Publicado**: 2026-09-23 · **Duración**: 10:06 · **Ingesta**: 2026-11-16 (tramo 51)
- **Tipo**: benchmark comparativo de 1.ª mano (pruebas en pantalla del propio autor)
- **Dominios destino propuestos (consolidación aplazada)**: ia-uso-practico/ia-local o general (hardware IA local)

## Idea central

Comparación empírica de **Qwen 3.6 35B-A3B** (MoE con ~3B activos) sin cuantizar (BF16) vs cuantizado a **Q4_K_XL con KV-cache en Q8**, ambos con MTP (predicción multi-token) y visión multimodal — respondiendo si la cuantización «realmente pierde calidad». Respuesta: se pierde **detalle**, no tanto exactitud.

## Configuración de la prueba

- Sin cuantizar (modelo + visión en BF16): 67 GB en disco, 8,66 GB de VRAM (expertos MoE en CPU/RAM, atención en RTX 3060 12 GB), ~79 GB de RAM total, ventana de contexto 131k tokens, **13-14 tok/s**.
- Cuantizado Q4 (visión sigue en BF16, KV-cache Q8): ~22 GB en disco, 11 GB de VRAM, 27 GB de RAM, **>40 tok/s** en respuestas largas de código.

## Tareas comparadas (todas generativas/código)

1. **SVG animado planeta+sol**: ambos cumplen; el sin cuantizar añade más detalle (hasta una luna no pedida).
2. **Olas animadas**: cuantizado dibuja olas sin animación; sin cuantizar ni las dibuja — error repartido, con más detalle en el grande.
3. **Reloj**: cuantizado sin animación y números desordenados; sin cuantizar números mejor acomodados, sin animación.
4. **Pelota rebotando**: ambos con animaciones poco convincentes.
5. **Crecimiento de planta**: ambos funcionan; más detalle en el sin cuantizar.
6. **«¿Por qué el cielo es azul?»**: respuestas equivalentes y correctas.
7. **Landing page HTML5**: ambos correctos, diseños distintos — sin ventaja clara de calidad.
8. **Reloj analógico con hora real**: cuantizado falla el modo claro; sin cuantizar funciona perfecto — el autor nota estilos/respuestas «nuevas» que nunca había visto en el modelo porque siempre lo usó cuantizado.
9. **Simulador de fluidos**: ambos interesantes pero imperfectos, comportamientos distintos.
10. **Calculadora con historial**: ambos funcionan; el sin cuantizar deja un botón mal puesto.

## Conclusión del autor

La diferencia se nota **mucho más en tamaño (22 vs 67 GB, y 3× velocidad) que en calidad**: el Q4 no se equivoca «mucho más» bajo estas pruebas — a veces falla uno, a veces el otro — pero el modelo sin cuantizar produce sistemáticamente **más detalle y mejor acabado**, sin necesariamente seguir mejor el prompt. Matiz honesto: con una sola corrida por tarea no hay repetición estadística; es una comparación cualitativa de demostración.

## Notas de fuente

- ASR garbiñeado normalizado solo aquí: «Quen» → **Qwen**; «KXL» → **Q4_K_XL**; «KVCH/KVK/KV caché» → **KV-cache**; «mm Pro/MTP» (multi-token prediction); «SUVG» → **SVG**; «Slot Q4» → GGUF Q4; «V RAM» → VRAM; «promptisar» → prompts.
- Sin patrocinios visibles.

## Cruces

- WL-102 (Jorge Marfil, «la trampa de calidad del Q4») — la contraparte rigurosa: este video llega cualitativamente a la misma conclusión (el Q4 «casi empata», pero hay diferencias reales que las medias esconden).
- Cluster IA local: [[hardware-para-ia-local]], [[qwen]], [[llama-cpp]], WL-108 (IA local para programar), WL-252ff (cluster deepseek-harness/minagent).

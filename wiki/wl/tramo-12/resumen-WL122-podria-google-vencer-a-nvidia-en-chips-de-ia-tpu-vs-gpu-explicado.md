# WL-122 — ¿Podría Google vencer a Nvidia en chips de IA? TPU vs GPU explicado

- **Fuente original**: `raw/wl/tramo-12/2026-10-31-podria-google-vencer-a-nvidia-en-chips-de-ia-tpu-vs-gpu-explicado.md` (`rpjIeRUCwpE`, [Marfil Lab](https://www.youtube.com/watch?v=rpjIeRUCwpE), 2026-10-31, 30:46).
- **Canal**: Marfil Lab
- **Publicado**: 2026-10-31
- **Tipo**: divulgación técnica-económica (hardware de IA)

## Qué trata

Análisis de si las TPU de Google pueden disputar el dominio de Nvidia en chips de IA, motivado por los dos acuerdos de Anthropic de finales de 2025: hasta un millón de TPUs de Google (octubre) y, 26 días después, 30.000 M$ de capacidad en Azure con sistemas Grace Blackwell/Vera Rubin de Nvidia, más inversiones de Nvidia (10.000 M$) y Microsoft (5.000 M$).

## Puntos clave

- **Origen de la TPU (2013)**: Jeff Dean y equipo calculan que servir búsqueda por voz con redes neuronales a cientos de millones de usuarios (3 min/día) obligaría a duplicar los centros de datos de Google. La idea de un chip propio databa de 2006; en 2013 se volvió urgente.
- **TPU vs GPU**: la GPU es un enjambre de núcleos flexibles que compiten por la memoria (analogía: cocina con miles de cocineros que van a la cámara frigorífica); la TPU es un arreglo matricial fijo — 65.536 celdas en la v1 — donde los pesos residen en las celdas y los datos fluyen de celda en celda (cadena de montaje). Primera TPU: 15–30× más rápida y 30–80× más operaciones por vatio que GPU/CPU de su época; diseñada, verificada y en producción en 15 meses (22 días del chip de prueba a producción).
- **Google no vende, alquila**: desde Cloud TPU (2018), las TPUs solo se alquilan vía Google Cloud. Clientes de primera fila: Apple (modelo servidor entrenado en 8.192 TPU v4, informe 2024), Anthropic (1 GW de Ironwood en 2026; Broadcom proyecta 5 GW de TPU 8i en 2027 y hasta 10 GW en 2028) y Meta (alquiler en 2026, compra directa negociada para 2027). Alphabet reconoció por primera vez ingresos por ventas de sistemas TPU en T2 2026; Google Cloud creció un 103% hasta 30.700 M$ en el trimestre de octubre 2026.
- **El foso de Nvidia es CUDA**: presentado en 2006, es el «ancho de vía» del ecosistema — PyTorch creció con CUDA dentro y migrar cuesta semanas. Respuesta de Google: PyTorch/XLA (Torch TPU, publicado 2026 con Meta), con 98% de los modelos más descargados de Hugging Face corriendo sin romperse y 97% con números idénticos a GPU; límites reconocidos (un proceso por TPU, tamaños estáticos).
- **La era de la inferencia**: la inferencia ya superó al entrenamiento como mayor carga de los centros de datos (PyTorch Foundation, 2026). Ironwood (TPU v7, 2025, primera diseñada para inferencia): 192 GB de HBM por chip (6×), 7,37 TB/s de ancho de banda (4,5×), hasta 9.216 chips refrigerados por líquido; la memoria sigue siendo posible cuello de botella (lectura de pesos por token).
- **Nvidia no está quieta**: Tensor Cores desde V100, armarios completos (GB200 NVL72: 72 GPU + 36 Grace como una sola GPU), y la compra-licencia de activos de inferencia de Groq (diciembre 2025, ~20.000 M$ según inversores; su fundador Jonathan Ross provino del equipo original de la TPU).
- **El precio por hora engaña**: una máquina más barata por hora pero más lenta puede costar más al terminar el trabajo. La ventaja real de Google es el margen (una B200 cuesta ~6.400 $ de fabricación frente a 30–40 k$ de precio, según Epoch AI y Huang), pero las comparaciones «80%/2,7× más rendimiento por dólar» de Google son contra su propia TPU anterior, no contra Nvidia. La única prueba válida: correr el modelo propio en ambos y comparar la factura final.
- **Nadie se casa con nadie**: Anthropic usa tres plataformas (TPU, Trainium, GPU) y asigna cada trabajo al chip que mejor le va; Google, a su vez, ofrecerá Vera Rubin en su nube. Huang resta: «Anthropic es un caso único, no una tendencia» — aunque Nvidia factura 89.000 M$ en centros de datos en un trimestre (117% interanual, ~1.000 M$/día), casi el triple de Google Cloud entero.
- **Veredicto**: «ganar» no es que Nvidia desaparezca, sino que la TPU entre en la lista de opciones de cada cliente grande — lo que ya ocurre (Apple, Anthropic, Meta). Para particulares nada cambia (en casa sigue siendo GPU); para equipos que alquilan cómputo, la regla práctica es probar el propio modelo en ambos y mirar la factura final.

## Citas útiles

- [00:00] Anuncio Anthropic–Google: hasta 1 millón de chips, >1 GW a lo largo de 2026.
- [06:19] Primera TPU: 65.536 celdas; pesos residentes en las celdas.
- [13:14] PyTorch/XLA: 4.821/4.917 modelos top de Hugging Face sin romperse.
- [21:25] Ejemplo del precio por hora que engaña (10 $×100 h vs 7 $×160 h).
- [28:02] Nvidia data center: 89.000 M$/trimestre (~1.000 M$/día).

## Decisiones de triage

- Dominio destino previsto: `general` (hardware/industria de IA; alternativamente `ia-uso-practico/hardware` — decisión de consolidación, S4 sin dominios nuevos).
- Cruce natural con fuentes de costo energético/hardware de IA (WL-120) y con las fuentes Anthropic/CUDA ya en la wiki; diferido a consolidación (L12).
- Los «garbiñeos» del ASR (Cloud=Claude, Iron Bot/Iron Bud=Ironwood, Grok=Groq, Swing=Swope, Torch TPU=PyTorch/XLA) se normalizan SOLO en este resumen.

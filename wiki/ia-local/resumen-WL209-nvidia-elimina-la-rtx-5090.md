# WL-209 · NVIDIA elimina la RTX 5090… ¿Qué GPU deberías comprar AHORA?

- **Fuente original**: `raw/ia-local/2026-10-17-nvidia-elimina-la-rtx-5090-que-gpu-deberias-comprar-ahora.md`
- **Video**: [NVIDIA elimina la RTX 5090… ¿Qué GPU deberías comprar AHORA?](https://www.youtube.com/watch?v=SpPYUVjVaTg)
- **Canal**: Cognix
- **Publicado**: 2026-10-17 · **Duración**: 23:57 · **Ingesta**: 2026-11-15 (tramo 29, formato dominio pendiente de consolidación)
- **Marco**: análisis de compra con datos de rastreadores públicos de precios y benchmarks citados de terceros; números no verificados de forma independiente por el canal.

## Qué trata

Análisis crítico del reporte (no confirmado por Nvidia) de que Nvidia termina la producción de la RTX 5090, y de si conviene comprar una GPU de 32 GB ahora. El canal compara precios reales contra el precio de lista, benchmarks de modelos locales (Qwen 3 27B cuantizado) y alternativas de 32 GB (par de 5060 Ti, Radeon AI Pro R9700, Arc Pro B70, 3090 usada), y concluye con una regla general: comprar los gigabytes que usa tu contexto, no el nombre de la placa.

## Puntos clave

- **El reporte**: dos filtradores de hardware afirman que Nvidia deja de vender todas las 5090 (incluidas las de China) y que el chip GB202 pasaría íntegro a la línea profesional; la GeForce tope pasaría a ser una 5080 de 24 GB. Nvidia no lo confirmó; un segundo medio lo califica de afirmación sin verificar. Los medios coinciden en que el stock de tiendas no desaparecerá de un día para otro.
- **Precios reales vs lista**: precio de lista 1.999 USD; listados reales de octubre van de ~4.200 USD (en tienda, solo en persona) a 7.443,99 USD (Amazon, tercerista) y 6.500 €+ en Europa — 3,72 veces el precio de lista en el caso extremo, ~233 USD por GB. Casos de estafa documentados (42 compradores de Amazon recibieron una riñonera por 999 USD).
- **Rendimiento citado (Qwen 3 27B 4-bit, conversación corta)**: 5090 ~75 tok/s, 4090 46, 3090 40; ancho de banda de memoria 1792 GB/s de la 5090 frente a ≤1008 de las anteriores. Con contexto grande la ventaja desaparece o se invierte: a 64k tokens la 5090 cae a 26 tok/s y la 3090 mantiene 34.
- **La memoria manda, no el nombre**: el uso de VRAM del modelo crece con el contexto (22 GB con 64k tokens, 26 con 128k, ~34 con 256k); "32 GB es el mínimo" es cierta pero engañosa — comprás GB para el contexto que usás.
- **Alternativas**: par de 5060 Ti (32 GB por ~1.450 USD) logra 72 tok/s solo con motores con predicción de múltiples tokens (22 sin ello; ancho de banda 448 GB/s cada una); Radeon AI Pro R9700 (32 GB, lista 1.299 USD) ~32 tok/s, 111 con MTP; Arc Pro B70 de Intel (32 GB, lista 959 USD) con leve ventaja sobre la AMD en velocidad/consumo según un probador; 3090 usada (24 GB) desde ~1.460 USD sigue siendo la opción simple que "simplemente funciona".
- **Cuenta de amortización**: contra un plan de IA de 20 USD/mes, una 5090 nueva a precio de Amazon equivale a ~31 años de suscripción; el par de 5060 Ti a ~6 años. Conclusión del canal: para quien paga un plan, no cierra; si el trabajo depende de GPU local, compra ahora; si ya tenés una, protegéla.
- **Contexto estructural**: <8 % de los ingresos de Nvidia no es IA; el mismo chip en placas Pro (5500 con 84 GB, 6000 con 96 GB a 15.599 USD) rinde mucho más — el precio de la gama consumo lo fijan compradores empresariales que puja por los mismos chips (fotos de pallets de 5090 minoristas destinadas a servidores).

## Observaciones de triage

- Fuente secundaria de divulgación: los benchmarks y precios son citados de rastreadores y análisis de terceros; el canal hace un recálculo de amortización propio. Ningún dato verificado contra fuentes primarias.
- Canal Cognix ya con presencia en la wiki (WL-154 seguridad IA local) — entidad candidata en consolidación.
- Cruces previstos: hardware para IA local ([[hardware-para-ia-local]], WL-192 NorthPole, WL-189 NCM/Stanford, WL-122 TPU vs GPU, WL-144 motor sin imanes como caso de misma lógica de mercado), señal de mercado de que el chip de consumo migra a IA (WL-204 electrónica/automotriz distinto eje).
- Dominio previsto: ia-uso-practico/ia-local o general (hardware) — consolidación diferida, S4: no se crean dominios nuevos.

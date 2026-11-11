# Hardware para IA local

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 4/58 del lote ia-local — irá creciendo con las fuentes de hardware del lote).
- **Fuentes**: [[resumen-ia-local-con-llama-cpp-funciona-en-una-pc-de-4-gb-ram]].

## La lección fundamental: velocidad de memoria > capacidad de memoria

El experimento de la mini laptop de 4 GB (fanless, Windows, CPU sencilla, sin GPU dedicada): Gemma 4 E2B en Q2 → **0,41 tok/s** procesando el prompt; Qwen 3.5 0.8B en Q2 (455 MB) → **0,24 tok/s** — «peor siendo más chico». Conclusión medida: **el cuello de botella no es que el modelo quepa, sino el ancho de banda de la RAM y la potencia del CPU**. Por eso **una GPU viene de lujo**: su VRAM, aunque de menor capacidad, es órdenes de magnitud más rápida — el criterio «encaje 100 % en GPU» de [[desarrollo-con-modelos-locales]] existe por esto.

## Reglas extraídas

- **Piso realista**: una PC de 4 GB RAM sin GPU dedicada es inutilizable para LLMs, incluso con modelos de 0.8B y cuantización Q2 — y Windows + navegador ya consumen la mitad de esa memoria (Linux liberaría parte).
- **GPU dedicada aunque sea chico**: VRAM rápida > RAM grande y lenta.
- **Workaround válido**: `llama-server --host` para servir por red y usar el navegador de otra PC — la máquina débil solo ejecuta.
- Los modelos ultra-chicos (SmallLM 0.135B) sacrifican justo lo que hace útil a un LLM: idiomas, visión, razonamiento, herramientas, contexto.

## Fuentes de hardware pendientes de absorber (del mismo lote)

GPU integrada de 40 GB (26), «no necesitas GPU de 3000 €» (32), CPU sin GPU (35), guía de hardware antes de comprar (43), cientos de usuarios concurrentes (44), Mac Studio vs $200/mes (39) y vs AMD AI PC (47), Kaggle GPU gratis (48), servidor 32 GB VRAM gratis (57).

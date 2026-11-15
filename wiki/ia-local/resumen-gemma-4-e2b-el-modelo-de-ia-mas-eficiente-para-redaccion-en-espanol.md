# Resumen: Gemma 4 E2B — el modelo de IA más eficiente para redacción en español

- **Tipo**: resumen de fuente.
- **Dominio**: `modelos-llm-locales`.
- **Fuente original**: `raw/modelos-llm-locales/2026-08-07-gemma-4-e2b-el-modelo-de-ia-mas-eficiente-para-redaccion-en-espanol.md` (video en español; transcripción automática llegada traducida al inglés con duplicación de ASR — normalizada solo aquí; el ASR garbla «Gemma 4 E2B» como «Gemma 2 2B») — https://www.youtube.com/watch?v=yeyKPVQuiNA — Nichonauta, 2026-08-07.
- **Nota**: fuente 10/58 del lote ia-local. **Metadatos del raw UNKNOWN** (atribución a Nichonauta inferida del contenido: continuación directa de sus fuentes previas). Consolidado en [[gemma-4]].

## El contexto: la alternativa al Qwen 3.5 2B

El Qwen 3.5 2B era su recomendación mínima universal (contexto grande, CoT opcional, visión de imagen/vídeo, 100+ idiomas, herramientas), pero tiene dos problemas: a veces entra en **loops infinitos** y **no escribe lo mejor en español**. La alternativa: **Gemma 4 E2B**.

## El truco de contabilidad: 5,1B totales, ~2B activos

El E2B declara **5,1B de parámetros totales** porque es *any-to-any* (acepta texto, imágenes, vídeo y audio como entrada — único de su tamaño con audio), pero **solo ~2B están activos para texto**: el resto son los encoders de visión/audio, activos solo cuando se usan. En runtime consume como — o menos que — un 2B tradicional.

## La medición estrella: disco vs memoria en ejecución

- **En disco**: los archivos de Gemma 4 E2B (modelo QAT + mmproj + MTP en Q4) pesan **más** que los del Qwen 3.5 2B (5,1B totales vs 2B).
- **En ejecución**: Gemma 4 E2B consume **3,6 GB** contra **6,4 GB del Qwen 3.5 2B** — casi la mitad — con calidad a 4 bits práctica idéntica a 16 bits gracias al **QAT** de Google (post-entrenamiento que prepara el modelo para cuantizarse; combinado con la cuantización dinámica Q4_K_M de llama.cpp: «99,999 %»).
- El MTP va en **archivo aparte en Q4** — «no pierde calidad por ser Q4: solo predice; el modelo grande acepta, rechaza o regenera» — y en su hardware **acelera más que el MTP de Qwen** (valor del draft: 4; «encontrar el valor exacto para tu hardware»).

## Perfil de calidad

Escribe mejor en prácticamente cualquier idioma, se expresa y estructura mejor, **menos faltas de ortografía y palabras inventadas en español**, y entra menos en loops de razonamiento infinito (pasan en todos los modelos, pero menos aquí que en los Qwen chicos — coherente con la fuente 9).

## Dónde gana Qwen (honestidad del canal)

Generación de código (según el tipo), **uso de herramientas** (Gemma puede, pero peor) y a veces visión de imágenes. Posicionamiento: Gemma para redacción/escritura/edición/traducción (el estilo de los modelos Anthropic/Google); Qwen para razonamiento y temas complejos. Excelente para **RAG**.

## La anécdota que dimensiona el salto

Hace un año el canal **vivía** generando textos con Gemma 2 4B (sin CoT); este Gemma 4 E2B es similar y en muchos casos **superior al Gemma 2 27B** de aquella generación.

## Cruces en la wiki

Actualiza la entidad [[gemma-4]] (que ya documentaba la actualización de la fuente 5); contraparte de [[qwen]] (su familia 3.5 es el comparado); se integra al workflow de [[desarrollo-con-modelos-locales]] y al bloque de modelos chicos junto a [[lfm]].

---

**Ver también**: [[gemma-4]] (entidad-modelo, actualizada con esta fuente) · [[qwen]] (el comparado) · [[desarrollo-con-modelos-locales]] · [[lfm]] (peer de modelos chicos).

# WL-428 — Gemma 4 E4B: ¿Es realmente más inteligente que el E2B?

- **Fuente original**: `raw/wl/tramo-70/2026-09-05-gemma-4-e4b-es-realmente-mas-inteligente-que-el-e2b.md`
- **Video**: [Gemma 4 E4B: ¿Es realmente más inteligente que el E2B?](https://www.youtube.com/watch?v=NYcH2wHmzNQ)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-04 · **Duración**: 07:27 · **Idioma**: es (subtítulos automáticos)
- **Tramo**: 70 (relevo 10/12, pedido L34) · **Dominio previsto**: ia-uso-practico / ia-local

## Qué trata

Demo práctica de **inferencia local**: prueba del **Gemma 4 E4B** (GGUF QAT de Google, cuantizado a 4 bits) en llama.cpp, comparado contra el **Gemma 4 E2B** probado en el video anterior del mismo canal — la pregunta es si el doble de tamaño se traduce en inteligencia perceptible.

## Setup y rendimiento

- Descarga: GGUF Q4_K_XL + mmproj (visión F16) + MTP (multitoken prediction, ~60 MB) — **4,9 GB en disco, ~6,1 GB en RAM** con contexto completo.
- Multimodal: texto, imagen, video, audio, herramientas, cadena de razonamiento, 140+ idiomas, MTP para acelerar tokens.
- Velocidad: **~120 tok/s** dentro de la cadena de razonamiento y **~140 tok/s** en tareas de código (el MTP predice mejor tokens de código). Funciona bien también en CPU.

## Pruebas comparativas vs E2B (regenerando los mismos prompts del video anterior)

1. **Landing page** genérica (donde E2B «flaqueó»): mejor, aunque lejos de una página profesional sin dependencias ni especificaciones detalladas.
2. **Calculadora funcional**: correcta (verificada en vivo: 78−8=70, ×2=140, +2=142, ÷2=71, clear OK); único defecto estético: un botón del doble de tamaño.
3. **Reloj analógico** (E2B lo hizo funcional pero mal pintado): notablemente mejor en coordenadas y temas claro/dark, aunque con números mal ubicados aún.
4. **Simulación de fluidos**: E2B la hizo correcta; el E4B también (gravedad, colisiones, pausa, partículas ajustables, crear partículas con clic) — «un modelo pequeñito haga esto está muy bien».
5. **Visión**: descripción de imagen con sentido, manteniendo buena velocidad con entrada multimodal.

## Conclusión del canal

El E4B muestra mejora visible sobre el E2B «incluso con pruebas simples»; el E2B «no se queda nada atrás» como opción aún más optimizada. Queda pendiente en el canal la prueba del 12B (3× y 6× los tamaños) para ver si la inteligencia escala con el tamaño.

## Señales de triage

- **Primera mano**: demo en vivo con verificación funcional de cada artefacto (calculadora operada, reloj inspeccionado, fluidos interactuados); mediciones de velocidad propias y reproducibles.
- Continuidad directa con el video previo de E2B del mismo canal — comparación no independiente pero consistente.
- ASR fuerte («Gema»=Gemma, «agente de un slot»=?, «posesiendo»=puesto que, «UDQ4KXL»=Q4_K_XL, «desampleo»=?, «MBF16»=F16) normalizado solo aquí.
- Sin patrocinios detectados.

## Cruces (diferidos a consolidación)

- [[nichonauta]] — 4.ª fuente WL (WL-283, WL-418, +1 previa); entidad de canal confirmada.
- [[gemma-4]] (+1), [[inferencia-local]], [[llama-cpp]], [[qwen]] (contraste), MTP como concepto emergente.
- Serie comparativa de tamaños: enlaza con la pregunta de escalado (E2B↔E4B↔12B).

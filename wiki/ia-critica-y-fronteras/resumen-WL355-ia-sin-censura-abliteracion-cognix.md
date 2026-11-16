# WL-355 — La IA SIN CENSURA cuesta solo $5… y NADIE puede detenerla

- **Fuente original**: `raw/ia-critica-y-fronteras/2026-09-18-la-ia-sin-censura-cuesta-solo-5-y-nadie-puede-detenerla.md` ([vídeo](https://www.youtube.com/watch?v=oK86HLPmdAg))
- **Canal**: Cognix
- **Publicado**: 2026-09-18 · **Duración**: ~10:00 · **Ingesta**: 2026-11-16 (tramo 55)
- **Tipo**: divulgación técnica (2.ª mano: reporting de TechCrunch, papers y benchmarks citados sin enlaces verificables)
- **Dominios destino propuestos (consolidación aplazada)**: ia-critica-y-fronteras o general

## Idea central

Cómo funciona la «obliteración» (abliteration): edición de pesos de menos de 5 USD que elimina la dirección interna del rechazo de un modelo de pesos abiertos, sin entrenamiento nuevo — caso detonante: la venta de un GLM 5.3 desensurado por Obliteration AI a 3 USD/M tokens, y el panorama regulatorio y de calidad que lo rodea.

## Puntos clave

- **Mecánica** [01:07]: investigadores de 2024 localizaron el rechazo como una única dirección en la actividad interna, repetida en 13 modelos abiertos (Meta, Google, Alibaba, 01.ai); Llama 2 inicia el 96% de sus rechazos con las mismas fórmulas — el entrenamiento de seguridad es un reflejo superficial. Técnica: restar el promedio de actividad de ~128 pedidos dañinos vs comunes y reescribir los pesos; Heretic automatiza el proceso (8B en ~45 min en una RTX 3090; caso Google «Yema 3»: 97/100 rechazos → 3; comparación en Qwen «3.8» 27B: 131 de 866 bloques de pesos tocados, todos en la misma dirección). El resultado se carga en Ollama/LM Studio como modelo cualquiera.
- **Calidad degradada, mito aparte** [03:26]: benchmark de 17 modelos «sin censura» — 4 se negaron ya en la primera tarea, 13 no respetaron un límite de 5 oraciones; en TruthfulQA la caída va de 2 a 10 puntos; el «20% más tontos» es boca a boca sin benchmark. Comparación de 85 h de GPU en 5 métodos: variaciones de 47 puntos en matemática, casi todas por agotar el presupuesto de razonamiento. Y el rechazo detectado por keywords subestima: etiquetado manual halló 70% de rechazos reales vs 14% detectados por la herramienta.
- **Usos y comunidad** [05:18]: el volumen dominante es roleplay/ficción; la misma matemática sirve para otros ajustes (prosa sin clichés, una Llama «permanentemente melancólica»); 15.000+ modelos obliterados de 3.600 autores en Hugging Face. Escándalo de atribución: un publicador con 5 M de descargas/mes atribuía «herramientas propias privadas», pero su paquete borrado reapareció en el caché de PyPI — era Heretic con créditos y licencia cambiados.
- **Caso Obliteration AI** [06:41]: GLM 5.3 desensurado en servidores EE. UU. (1 M de contexto, sin retención de pedidos), vendido para red teaming; los red teamers consultados por TechCrunch dicen NO usarlo para trabajo real porque la edición saca capacidad.
- **Regulación y límites** [07:13]: licencias (Llama/Yemma prohíben saltar seguridad; Qwen/Mistral/GPT-OSS bajo Apache 2.0 no dicen nada); nadie demandado nunca; ley de IA de la UE excluye del amparo open-source a modelos de riesgo sistémico y a quien monetice; EE. UU. descarta licencias obligatorias para publicar pesos. La única defensa que funciona: no entrenar con lo peligroso (por eso GPT-OSS, corpus filtrado, resiste la desensura). NIST 2026-07: las salvaguardas de un modelo abierto self-hosted se pueden saltar — el rechazo es «una configuración por defecto»; la seguridad real se mudó a la capa de alrededor (clasificadores entrada/salida, permisos, logs, revocación de claves).

## Evaluación

- Divulgación de 2.ª mano bien armada (TechCrunch, papers, benchmarks, NIST citados sin enlaces) — cifras y nombres de modelo no verificables desde el video, señaladas; nombres ASR («Kai», «Yema», «Quen», «Oyama») sin normalizar a nombre específico donde no seguro.
- Clickbait del título moderado por el contenido; sin patrocinio.
- Conclusiones sobrias: ni pánico ni apología — la tesis central (seguridad post-pesos ⇒ seguridad perimetral) es la parte más sólida.

## Cruces

- Tesis «el rechazo in-model es configuración por defecto; la seguridad vive en el harness» conecta directo con WL-354 (harness y gates) y [[delegacion-cognitiva-ia]]; familia crítica con WL-218/241/250 ([[agentes-de-codigo]]); el ecosistema open-weights enlaza con [[inferencia-local]] y [[hardware-agentico-mcp-first]]. Cognix ~7.ª fuente (entidad vigente).

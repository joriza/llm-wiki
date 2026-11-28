# Jorge Marfil

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-local`.
- **Actualizado**: 2026-11-15 (consolidación tramos 8-17 — +4 fuentes WL).
- **Fuentes**: [[resumen-ia-local-ahora-va-6x-mas-rapida-en-tu-pc-normal]] (Strata, 2026-10-04) · [[resumen-la-ia-mas-potente-ya-funciona-en-un-pc-normal]] (Qwen 3.8 Flash Next en 3060, 2026-10-31) · backlog WL: [[resumen-WL102-cuantizacion-llm-trampa-calidad-q4]] (WL-102, cuantización Q4), [[resumen-WL122-podria-google-vencer-a-nvidia-en-chips-de-ia-tpu-vs-gpu-explicado]] (WL-122, TPU vs GPU — bajo el canal hermano «Marfil Lab»), [[resumen-WL132-es-el-fin-de-los-llm-ncm]] (WL-132, desmontaje del NCM) y [[resumen-WL147-tu-ia-local-no-es-tan-privada-como-crees]] (WL-147, seguridad del montaje local en cinco capas). Total: 6.

Canal en español de análisis técnico de IA local, estilo **«desde cero para que lo siga cualquiera»**: explica VRAM/RAM/expertos con analogías (la cocina: encimera = VRAM, despensa = RAM, trastero = SSD) y **mide en su propio hardware** mostrando también lo que falla.

## Aportes distintivos

1. **Auditoría de titulares**: desmontó el «6× más rápido» de [[strata]] — compara versiones distintas de cuantización; misma versión = 2-4× escribiendo, **14-26× leyendo** (lo que importa para agentes). Regla: ante «N× más rápido» preguntar *¿qué versión contra cuál? ¿escritura o lectura?*
2. **Laboratorio con trampas** (metodología replicable): 3 proyectos rotos a propósito con especificación honrada, señuelos (tests que contradicen la spec, archivos antiguos con comentarios, notas que llaman «intermitente» a un fallo, docs que contradicen el contrato) y **comprobaciones ocultas**. Resultado: **Qwen 3.8 Flash Next 3-bit en una 3060 usada: 17/17 = Claude Opus 5**; Qwen 3.6 35B: 14/17 (arreglos «a lo bruto» y un fallo que pasa los tests y erra 1/1000 — «los tests en verde no demuestran nada»).
3. **Barrido de RAM** (12→61 GB): 24 GB para contestar bien, **40 GB para leer prompts largos**, >48 es pagar por nada.
4. **El ajuste gratis**: 6 hilos (1/núcleo) en vez de 12 → +48 % (el 65 % del tiempo los hilos se esperaban entre sí).

Su servidor personal (RTX 3060 12 GB de segunda mano, Ryzen 6c, 61 GB RAM) es el banco de pruebas de ambos videos.

## Aportes del backlog WL (2026-11-15)

- **Cuantización** (WL-102): el Q4 de un buen cuantizador casi empata con BF16 en medias, pero las medias esconden cambios del 13,6 % de respuestas individuales, caídas hasta −59 % en contexto largo y degradación ×5 en idiomas no ingleses; «dos Q4 no son el mismo modelo» (GPTQ vs AWQ); el programa también estropea (kernel de atención, contexto por defecto, plantilla).
- **Hardware de datacenter** (WL-122, Marfil Lab): TPU vs GPU — el foso de CUDA, la era de la inferencia (Ironwood), compra de Groq por Nvidia y la estrategia multi-chip; «ganar» es entrar en la lista de opciones.
- **Crítica de fronteras** (WL-132): desmontaje del hype del NCM de Stanford (el 31× solo vale contra difusión en resúmenes de 48 tokens; escala mínima; la ventaja paralela es de batch=1).
- **Seguridad** (WL-147): cinco capas de riesgo de un montaje local (GGUF, plantilla Jinja, runner, puerto abierto, pesos+herramientas) con checklist de mitigación — el complemento «auditivo» del banco de pruebas del canal.

**Actualización 2026-11-18 (consolidación T15 — tramo 100, WL-646, 7.ª fuente)**: [[resumen-WL646-gemini-4-carbon-consumo-jorge-marfil]] (tramo 100, sede agentes-de-codigo) — la mejor contabilidad de costos reales de un modelo «barato que piensa mucho» vista en la wiki: prueba pagada de Gemini 4 Carbon con la separación precisa medido/reportado/inferido, la analogía «precio por token = precio del litro; lo que pagas es litro × consumo», cuotas de suscripción sin cifras publicadas reconstruidas por reportes de usuarios (~10 $/hora de enjambre), y veredicto condicionado por perfil en vez de título. Nombres de benchmarks con cautela de ASR (señalados en el resumen). Encaja con la metodología del canal: medir en propio hardware/cuenta y mostrar también los errores propios (ruedas equivocadas, skate lento). Cruza [[routing-por-coste]] (el Orchestrator de Antigravity como encarnación de producto del concepto) y [[paradoja-jevons-software]].

## Cruces

[[strata]] · [[qwen]] · [[llama-cpp]] · [[hardware-para-ia-local]] · comparar con [[codesimple]] (mismo estilo económico-técnico) y [[cognix]].

**Actualización 2026-11-28 (consolidación T37 — tramo 110, WL-781, 8.ª fuente)**: [[resumen-WL781-airllm-modelos-enormes-portatil-jorge-marfil]] (ia-local/) — el desmontaje más completo visto en la wiki de un titular viral de IA local: AirLLM partido capa-a-capas es **disk bound** y la regla final es «GB del modelo ÷ GB/s del disco = segundos por token» (405B: 6-26 h por respuesta; Kimi K3 real: 292 s/token vs. 0,6 céntimos por API), con la caché de página (si cabe en RAM, llama.cpp/Ollama ganan), el pasillo PCIe ~5,7× más estrecho, la limpieza por capa v4.0.1 (16×) y la compresión 4/8 bits que **empeora** 3,8-8× pese al «3× más rápido» del README. Metodología del canal en su forma pura: leer README, release notes, incidencias con fechas y hardware, y separar lo medido de lo que el marketing calla; garbiñeos ASR señalados («LLaMA»/«RLM»=AirLLM, «Química 3»=Kimi K3). Cruza [[inferencia-local]] (eficiencia de la inferencia local) y [[llama-cpp]]; los 4 casos donde AirLLM sí encaja (lotes, LoRA en streaming, curiosidad puntual, privacidad) son el único motivo que las cuentas dejan intacto.

# Resumen: IA Local con llama.cpp — ¿funciona en una PC de 4 GB RAM?

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-07-18-ia-local-con-llama-cpp-funciona-en-una-pc-de-4-gb-ram.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos normalizados solo aquí: «gema»→Gemma, «quant»→Qwen) — https://www.youtube.com/watch?v=UW_QkuIko2w — Nichonauta, 2026-07-18 (08:04).
- **Nota**: fuente 4/58 del lote ia-local. Experimento contrapunto: el límite inferior de hardware. Consolidado en [[hardware-para-ia-local]].

## El experimento

Una **mini laptop sin ventilador, 4 GB de RAM** (compartidos con la GPU integrada; Windows 10 se come casi la mitad), CPU sencilla. Conexión por **escritorio remoto VNC** para no gastar recursos grabando desde la propia máquina. llama.cpp build **Vulkan** (la GPU integrada aporta poco — termina siendo CPU puro), modelo **Gemma 4 E2B QAT en Q2** con MTP, KV cache a 4 bits, 4.000 tokens de contexto.

## Los números (duros)

- Gemma 4 E2B Q2: procesamiento del prompt a **0,41 tokens/segundo**; generación arrastrada — «prácticamente inutilizable».
- Qwen 3.5 **0.8B** (455 MB, Q2, con MTP, razonamiento, herramientas, 262k de contexto máximo): **0,24 tokens/segundo — peor que el anterior siendo más chico**.

## La lección central (la que hace valiosa la fuente)

«El problema principal no es la falta de memoria, sino que la memoria es muy lenta, al igual que el procesador.» **No basta con que el modelo quepa**: el ancho de banda de RAM y la potencia del CPU son el cuello de botella real en inferencia por CPU. Es exactamente por eso que **una GPU viene de lujo**: su VRAM, aunque menor en capacidad que la RAM del sistema, es órdenes de magnitud más rápida, igual que sus unidades de procesamiento. Y capa extra del caso: Windows + Chrome ya saturaban la mitad de la RAM — «hasta entrando a ChatGPT no iba a funcionar bien esa PC».

## Workarounds documentados

- **llama-server en red**: modificar el `.bat` para servir por toda la red (`--host`), permitir el cortafuegos y usar el navegador de **otra PC** como cliente — la mini PC solo ejecuta, la interacción vive afuera.
- **Linux en vez de Windows** liberaría memoria (el sistema se comía casi la mitad).
- Modelos **SmallLM** de 0.135B: aún más chicos, pero «no son versátiles»: menos idiomas, sin visión, sin razonamiento, sin herramientas y con menos contexto — el ahorro no compensa.
- La mini PC, contexto: barata, con Wi-Fi y hasta ranura SIM.

## Cruces en la wiki

El contrapunto medido de [[llama-cpp]] (que muestra el caso GPU 12 GB cómodo) y de [[desarrollo-con-modelos-locales]] (el criterio «encaje 100 % en GPU» — esta fuente demuestra por qué). Base del concepto [[hardware-para-ia-local]], que absorberá las fuentes de hardware del lote (GPU integrada, 32 GB VRAM, Mac vs AMD, etc.).

---

**Ver también**: [[hardware-para-ia-local]] (concepto) · [[llama-cpp]] · [[desarrollo-con-modelos-locales]] (el criterio de encaje en GPU que este experimento justifica).

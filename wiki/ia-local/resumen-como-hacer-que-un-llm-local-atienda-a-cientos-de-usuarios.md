# Resumen: Cómo hacer que un LLM LOCAL atienda a CIENTOS de usuarios a la vez

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-17-como-hacer-que-un-llm-local-atienda-a-cientos-de-usuarios.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Quen»→Qwen, «Oyama»→Ollama, «Deepsik»→DeepSeek) — https://www.youtube.com/watch?v=Zri8dLpRnaU — Cognix, 2026-09-17 (09:27).
- **Nota**: fuente 44/58 del lote ia-local (entrada 44 del playlist). Análisis técnico de concurrencia en inferencia local: continuous batching, KV cache, gestión de memoria, prefill vs decode, economía de auto-alojamiento vs APIs.

## La tesis: un usuario = peor modelo de negocio para una GPU

- GPU leyendo 140 GB (modelo 70B) para generar 1 token → limitada por **ancho de banda memoria** → ~14 tok/s en A100, cómputo ocioso.
- **Un usuario = estufa cara**. La GPU paga capacidad de centro de datos y se usa como "diario personal ultra rápido".

## Continuous Batching (Orca 2022): la clave de la concurrencia

- El modelo se ejecuta en **pasos** (1 paso = 1 token por request activo).
- Tras cada paso, el motor puede **cambiar quién está en el lote** (requests que comparten ese paso).
- **Misma lectura de pesos** (costo fijo) genera tokens para **múltiples clientes a la vez**.
- Cliente que termina libera su asiento → lo ocupa el siguiente en cola.
- Resultado (DGX, Qwen 27B):
  - 1 cliente: 82 tok/s
  - 8 clientes: 63 tok/s c/u → 504 combinados (×6 total)
  - 32 clientes: 34 tok/s c/u → 1.088 combinados (×13 total)
- **Trade-off**: cada cliente va 2.5× más lento, pero **producción total se multiplica**.
- Métrica correcta: **asientos (throughput)**, no velocidad por cliente.
- Tokens/s sin decir cuántos usuarios = número sin sentido.

## El cuello de botella real: KV Cache (notas de trabajo), no pesos

- Pesos = costo fijo (se leen una vez por paso, compartidos).
- **KV Cache = crece con cada token de contexto por cliente**.
  - Modelo 70B, contexto 128k → ~40 GB por cliente (precisión completa).
  - 2× RTX Pro 6000 (192 GB) + modelo 4-bit en GPU → **choca en 3 requests** de 64k contexto.
  - Modelo 8-bit con overflow a RAM sistema → **atiende 10 requests**.
- **Más VRAM = más asientos, pero solo hasta que el contexto se la coma**.

## Gestión de memoria cuando se llena (ordenado por enojo del cliente)

1. **Cola**: requests nuevos esperan.
2. **Preempt**: conversación en curso se interrumpe a mitad de frase, se recalcula luego.
3. **OOM**: todo se cae por falta de memoria.
- **Ollama**: obliga a fijar presupuesto memoria como % → si muy alto, revienta.
- **vLLM**: acepta 512 requests, desde ahí reparte 503.

## Caso real: laboratorio universitario (2× H200, modelo abierto 120B)

- 1.000 M tokens/día, 173 requests corriendo + 29 en cola.
- Tiempo medio al primer token: **17,8 s** (casi todo = cola, GPUs saturadas).
- Subir a 512 requests paralelos **no sirvió**: throughput total nunca pasó de 3.000 tok/s.
- Cada respuesta se volvió más lenta.

## Costo oculto: prefill (lectura de prompt) vs decode (escritura)

- **Prefill** = leer prompt + contexto → exige **cómputo**.
- **Decode** = generar tokens → exige **ancho de banda memoria**.
- Cliente pegando 40k tokens frena a todos (prefill consume mucho cómputo).
- **Chunked prefill**: partir request enorme en fragmentos e intercalar.
- **Disaggregation** (escala frontera): prefill y decode en **máquinas separadas** (miles de GPUs).
  - Irrelevante en 1 máquina.

## Tus herramientas YA hacen continuous batching

- **llama.cpp server**: ranuras paralelas + continuous batching **activado por defecto desde marzo 2024**.
- **LM Studio**: 4 ranuras paralelas (ene 2024).
- **Ollama**: 1 request paralela por modelo por defecto → subir a 4 si cabe memoria.
- **Caso real**: abogado con 2 ranuras paralelas, 5-10 usuarios concurrentes, cron cada 2 min para mantener modelo caliente.

## Economía: auto-alojar vs APIs (la matemática lo explica)

- 16× H200 = $750k amortizado 3 años + energía 24/7 → **~$0,30 / 1M tokens salida**.
- DeepSeek Flash: **$0,28 / 1M tokens**.
- **El precio de mercado lo fija quien tiene utilización perfecta** (proveedores cloud).
- Tu plan de recuperar la inversión **compite contra ellos desde el día 1**.
- El laboratorio gana porque 1.000 M tokens/día mantienen sus 2 placas encendidas 24/7.

## Excepciones donde auto-alojar sí tiene sentido

1. **Datos que legalmente no pueden salir del edificio** (residencia de datos).
2. **Fine-tuning propio** que no se puede compartir.
3. **Volumen enorme** de datos propios que hace inviable la API.

## Prueba gratis antes de gastar

> "Antes de gastar un peso, hacé la prueba gratis. Mandá dos solicitudes a la vez a tu configuración actual, después ocho y mirá cómo se comporta la cola. Si se mantiene tranquila, felicitaciones, ya podés abrir la tienda."

## Fijar versión y migrar por síntomas

- vLLM/SGLang: instalación 9 GB, carga modelo 5-15 min, memoria configurada a mano en %, **versiones nuevas rompen cosas**.
- Usuario en producción: 3 parches en una versión, bucles de tokens en la siguiente, fallo crítico en cada lanzamiento.
- **Regla**: fija tu versión en el momento exacto en que funciona y migra por síntomas, **nunca por un número de tok/s**.

## Cruces en la wiki

- Entidad: [[informatica-teoria/cognix]] (5ª fuente en ia-uso-practico; 1ª en historia-informatica).
- Concepto: [[ia-uso-practico/multiplexores-agentes]] (concurrencia, continuous batching, asientos vs velocidad).
- Entidad: [[llama-cpp]] (server con continuous batching por defecto desde marzo 2024).
- Entidad: [[vllm]] / [[sglang]] (motores serios, disaggregation a escala).
- Concepto: [[ia-uso-practico/hardware-para-ia-local]] (economía auto-alojamiento vs APIs, $0,30 vs $0,28 / 1M tokens).
- Relacionado: fuente 32/58 (pila 5 capas inferencia local — Cognix); fuente 39/58 (Mac Studio vs $200/mes — Cognix).
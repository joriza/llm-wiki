# Resumen: Cuantización de LLM explicada: la trampa de calidad del Q4

- **Fuente original**: `raw/ia-uso-practico/2026-11-03-cuantizacion-de-llm-explicada-la-trampa-de-calidad-del-q4.md` (WL-102, tramo 8)
- **URL**: https://www.youtube.com/watch?v=IK-mFMiTvK8
- **Canal**: Jorge Marfil
- **Publicado**: 2026-11-03 · **Duración**: 37:45 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Tesis central

Cuando un modelo local «va mal», muchas veces el problema no es el modelo sino el fichero cuantizado que un programa eligió por ti. El Q4 por defecto (Ollama `latest`, Hugging Face, MLX) rinde casi igual que el original en medias y tareas cortas, pero su coste real aparece en lo que las medias esconden: respuestas que cambian individualmente, contextos largos, llamadas a herramientas, idiomas no ingleses y caché KV comprimida.

## Qué es cuantizar

- Cuantizar = guardar los pesos (publicados en BF16) con menos bits por número: como medir con reglas cada vez más gruesas (Q8 → milímetros, Q4 → medio centímetro, Q2/Q1 → largo/corto). Cada número se redondea a la «rayita» más cercana.
- Escalera de Qwen3 27B de Unsloth: BF16 54,7 GB → Q8 ~29 GB → Q4 ~17-18 GB → Q2 ~9,8 GB → Q1 ~6,2 GB. Las letras tras el número (K, M, XL, IQ, UD) son la «receta»: qué capas se protegen con regla fina y cuáles se aprietan.

## Evidencia: qué pierde cada escalón

- **8 bits FP**: sin pérdida medible (estudio Red Hat + IST Austria, >500.000 evaluaciones, Llama 3.1, ACL 2025). **8 bits int**: -1 a -3 % por tarea. **Q4 (pesos) con cómputo 16 bits**: a la par que Q8-int (HumanEval Llama 3.1 8B: 67,3 vs 67,1).
- **Q4 bueno casi empata** con BF16 en tareas: Q4_K_M de Qwen3 27B empata en Terminal-Bench 2.1 (benchmark de agentes en terminal); en IFBench ni 2 bits cambia; autor invirtió ~3.000 USD en GPU para medirlo.
- **Por debajo de 4 bits cae rápido**: DeepSeek Coder 7B a 2 bits pierde 67 % relativo en soluciones que pasan tests (HumanEval/MBPP-style); Qwen3 27B a 1 bit ronda el azar — y cuanto más razona, peor (caso viral de Reddit: modelo de 1 bit que busca en internet y luego pregunta al usuario «cuál es la última versión de Python»).
- **Las medias esconden cambios de respuesta** (NeurIPS 2024): Llama 2 7B en Q4 mantiene la precisión global (<2 % de caída) pero **cambia 13,6 % de las respuestas individuales** en MMLU — aciertos que se vuelven fallos compensados con fallos que se vuelven aciertos. La nota plana no consuela si la respuesta que se dio la vuelta es la tuya.
- **Contexto largo** (EMNLP 2025): 8 bits ~-0,8 %; 4 bits hasta **-59 %** según método; en recuperación a 128K tokens hasta **-23 %** de media (Llama 70B **-32 %** con BN B-NF4). Clave para hispanohablantes: **en idiomas no ingleses la degradación puede ser hasta 5 veces mayor** — los benchmarks se hacen en inglés.
- **Dos Q4 no son el mismo modelo**: mismo tamaño de grupo, GPTQ vs AWQ difieren 4 puntos en HumanEval (67,1 vs 63,0). En 16 cuantizaciones de Qwen3 27B medidas por divergencia KL sobre 100 conversaciones de agentes: Q4_KL de Bartowski ≈ UD-Q4_K_XL de Unsloth (empate real), AWQ y NF4 ~25 % más deriva; un NF4 que comprime también activaciones sale peor que ficheros menores. El presupuesto de bits se reparte distinto según el cuantizador (embeddings y capas de entrada/salida a 6-8 bits, capas medias más apretadas).

## El programa también estropea (sin que nada se rompa)

- **Kernel de atención** (Level One Techs, portada de Hacker News): mismo modelo BF16, mismo prompt de ~100K tokens; cambiar solo el kernel (FlashAttention 2 / FlashInfer / Triton) divergen las respuestas a partir de cierto punto, de forma determinista (mismo kernel → salida idéntica bit a bit).
- **Caché KV cuantizada**: con el mismo prompt, un error de llamada a herramienta se recupera con caché a 8 bits y **nunca** se recupera con 4 bits; NVFP4 y AWQ dejaron llamadas sin cerrar y ejecutaron comandos equivocados sobre una red real a ~88K de contexto.
- **Contexto por defecto**: Simon Willison vio «alucinar» al Q4_K_M de Qwen3 27B en LM Studio — la causa era el límite por defecto de 8.192 tokens de contexto que el modelo gastaba pensando; al abrir el contexto completo (262K), desapareció.
- **Plantilla de chat silenciosa**: muchos GGUF no traen plantilla en metadatos y el programa usa ChatML genérica sin avisar — el modelo habla bien pero rinde peor. Recomendación: abrir el GGUF y verificar los tokens de la plantilla antes de culpar al modelo.
- **Caso Reddit ilustrativo**: usuario cambia 3 variables a la vez (27B→35B, caché Q8→FP16, receta K→I), cree que la caché era el problema, dos días después el 35B alucina y le destroza la config de Redis — nunca se supo qué variable era; lección: no mezclar variables.

## Método práctico (5 minutos)

1. **Saber qué cargaste**: `ollama show`, panel de LM Studio, o el nombre del GGUF. «Estoy usando Qwen 27B» no es una respuesta; falta peldaño, autor del fichero y receta.
2. **Arreglar el entorno**: contexto por encima del valor por defecto (muy por encima en modelos razonadores), parámetros de muestreo de la ficha del modelo (para Qwen3: modo pensamiento temp 1,0/top-p 0,95/top-k 20 — una temperatura baja provoca bucles de pensamiento), caché KV a 8 bits o más para agentes/código.
3. **Contar la memoria**: la caché también ocupa — a contexto nativo 262K, Qwen3 27B: 17,2 GB (FP16) / 8,6 GB (Q8) / 4,3 GB (Q4). En una GPU de 32 GB con caché Q8 y contexto completo, el peldaño razonable es Q4_K_XL; Q6/Q8 obligan a recortar contexto.
4. **Prueba A/B definitiva**: dos tareas reales (una con test objetivo, una con llamada exacta a herramienta), ejecutadas en tu peldaño y el siguiente (Q4→Q6/Q8) sin tocar nada más. Si falla en ambos, es el modelo.
5. **Regla de elección**: a igual memoria, un modelo más grande en Q4 suele ganar a uno más pequeño en Q8 — hasta ~3 bits, donde el grande ya pierde más por compresión de lo que gana por tamaño. Los modelos entrenados nativamente en 1 bit (p. ej. BitNet-style) son otra categoría; los ficheros «aplastados» post-entrenamiento no. (El caso Bonsai 27B queda «en cuarentena»: cifras del fabricante, sin medición independiente.)
6. **Reportar con precisión**: modelo + autor del fichero + cuantización + programa + contexto + precisión de caché + máquina; sin eso, dos opiniones opuestas sobre «el mismo modelo» pueden ser incomparables (escena real de Hacker News).

## Conclusión

El Q4 de un buen cuantizador es punto de partida razonable para casi todo; para programación, agentes o documentos largos (y en español), conviene subir un peldaño antes de sentenciar un modelo. Antes de juzgar un modelo: mirar qué fichero se ejecutó — el veredicto equivocado suele tener al programa, la plantilla o el peldaño como culpable real.

- **Entidad**: [[jorge-marfil]] — canal del autor; en la consolidación de los tramos 8-17 (2026-11-15) se suman WL-102 (cuantización Q4), WL-122 (TPU vs GPU, como «Marfil Lab»), WL-132 (NCM) y WL-147 (seguridad del montaje local).

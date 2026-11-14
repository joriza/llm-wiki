# Resumen: Qwen 4 27B — ¿el nuevo rey de la IA local?

- **Fuente original**: `raw/wl/2026-11-12-qwen-4-27b-el-nuevo-rey-de-la-ia-local.md` (WL-60, tramo 4)
- **URL**: https://www.youtube.com/watch?v=kvs5MgxEhU8
- **Canal**: Cognix (cierre de tramo 4 — el modelo aún **no salió**: análisis de lo que realmente se sabe antes del hype)
- **Publicado**: 2026-11-12 · **Duración**: 27:25 · **Idioma**: es (subtítulos automáticos, transcripción literal; voces rioplatense — «Cuen» por Qwen)

## El caso contra el hype

Noviembre 2026: la comunidad revolucionada por **Qwen 4 27B** que «ni siquiera salió» — sin pesos, sin ficha, sin nada descargable. El detonante viral (7/11): el autor de *Gamefield* con acceso anticipado vía **Qwen Coder** publicó **44,6** vs **47,2 de Claude Opus 5.5** en su prueba de desarrollo de videojuegos — a **0,16 $ vs 2,60 $ por ejecución (16× más barato)**. Pero el baño de realidad: el endpoint de Coder corrió **una versión de prueba que se actualizaba todos los días durante 4 días** (el sábado ≠ el lunes; un probador: «respuestas de dos modelos distintos»); Qwen 4 Max en la misma prueba sacó *peor* que el 27B temprano e incluso peor que Qwen 3.8 Max («caos total», palabras del autor); y el archivo pesaba **35 GB vs ~29 GB esperados para un 27B en 8 bits** (+20 % para «el mismo nombre»). «No prueba que las demos fueran falsas — prueba que no se podían atribuir a nadie.»

## El registro oficial (todo lo que hay por escrito)

- 22/9: comunicado de Alibaba «Qwen 4 en entrenamiento» sin tamaños ni fechas; foto de pantalla de la conferencia: **Max, Plus, Flash, 27B** bajo «próximamente».
- Medio chino: el 27B tiene **prioridad en pesos abiertos**.
- **Qwen Code** (fines de octubre): ventana de contexto de 1 M de tokens para todo identificador «Qwen 4*» (Max, Plus, incluso 4.5 Max) — **pero ningún 27B en la lista de pruebas**.
- **Intel** (23/10): PR «optimizar Qwen 4 27B» — retirada rápido pero **archivada por Internet Archive**: modelo **denso**, mismo ancho interno (5120) y misma disposición de atención (24 cabezas consultan + 4 KV) que el 27B actual; 4 bits en una tarjeta, 8 bits en dos; Intel **nunca tuvo los pesos reales** del nuevo componente arquitectónico — nada corrió punta a punta. Ese documento es la mejor evidencia disponible: **el archivo debería pesar lo mismo (~16,5 GB en 4 bits)**.

## La expectativa errónea de la comunidad (y la correcta)

Comparar contra Opus 5.5 «es la pregunta equivocada» — Opus no está en tu escritorio; se elige entre **el nuevo 27B y el 27B que ya corrés**, y en el escritorio «no pagás por token, pagás en tiempo». Los números de **Artificial Analysis** (índice de tareas reales de programación): Qwen 3.8 27B saca **20** (mediana de su tamaño: 8) pero con **128 M de tokens de salida** (mediana: 77,7 M) y **39,6 min por tarea** (mediana: 13,6) — «casi 3× más lento; muy verboso y notablemente más lento, problema de diseño, no de hardware». La pregunta correcta para el 4: **no si puntúa más alto — si termina antes**.

## La física del problema (el video más claro que se haya hecho sobre esto)

- **El cuello de botella no es la matemática, es la lectura**: cada token exige leer el archivo completo del modelo. 16,46 GB en 4 bits / 936 GB/s de una 3090 = **techo ~57 tokens/s** (mejor caso).
- **El razonamiento multiplica**: el modo por defecto es **extra-high** — ~15.000 tokens de pensamiento por respuesta = **4,4 min** por pregunta. Niveles medidos (por «SIS»): extra-high 20 puntos/39,6 min; **low 16 puntos/26,6 min** — comprar 4 puntos cuesta **+49 % de tiempo y +66 % de tokens**. Vale para depurar fugas de memoria o refactorizar; no para renombrar variables («13 minutos de más mientras el modelo se pasa de rosca con algo que un junior resuelve en 30 segundos»).
- El mismo cambio de código de octubre da a la familia Qwen 4 **los mismos tres niveles con extra-high por defecto** → la primera mejora de rendimiento del día 1 «no está en el modelo sino en un menú desplegable que casi nadie tocó».
- **Contexto largo**: la caché KV a 128k tokens ocupa 8 GB y el modelo la relee por token → techo cae de 57 a ~45. La respuesta del 4: **atención dispersa** — lee un presupuesto fijo de **248 tokens de notas por palabra (~1,6 %)** a 128k → techo ~57 sostenido. Aclaración anti-confusión: **ahorra lectura, no memoria** (cada token se escribe completo; la ventana de 262k no entra en una 3090).
- **Pensamiento más corto** (la expectativa más incierta): el fine-tune **Swift 1.5** sobre el 3.8 27B bajó la respuesta media de 15.000 → **8.700 tokens (-42 %)** incluso subiendo un poco el puntaje — 4,4 → 2,5 min por pregunta «sin ningún cambio de tu parte». Prueba que es alcanzable con esta arquitectura; pero las afirmaciones de «Qwen 4 más eficiente» vienen todas del endpoint mutante — nadie midió un 27B confirmado.
- **Flash Next** (agosto, «preview experimental de la arquitectura de Qwen 4»): MoE de ~125B total con **~6B activos por token**; con el motor **Strata** y cuantización 2 bits corre en una GPU de 12 GB + 64 GB RAM a **93 tok/s** (73 a 128k) — más rápido que el techo de un 27B denso en una 3090; contrapartida: 2 bits es aproximación y el único lado-a-lado muestra al 27B denso escribiendo mejor código. «El trono de la IA local se reparte según hardware»: 27B = calidad/minuto para 24 GB; Flash = rey de los 12 GB.
- **GPU nueva**: no. «Tesla P100 de 80→180 $ en 2 meses; 5060 Ti 16 GB de 569→770 $ — la presión es real, pero nada confirmado dice que se necesite tarjeta más grande; comprar por una conjetura es pagar precio de pico.»

## Los 4 consejos para el día del lanzamiento

1. **La app puede no cargarlo** — atención dispersa + nuevos carriles residuales necesitan llama.cpp actualizado (LM Studio/Ollama dependen de él; soporte ya mayormente añadido con Flash Next). Revisar release notes antes de culpar al modelo.
2. **El contexto por defecto sabotea agentes en silencio** — la doc de Ollama: <24 GB → **4.000 tokens por defecto**, mientras agentes necesitan ≥64.000; «pasarás una hora culpando al modelo por memoria pésima cuando es el default». Subirlo a 32k mínimo.
3. **Configurá el nivel de razonamiento a propósito** (medio para explorar; bajo para utilidades; extra-high «a propósito» para lo difícil — y andá por café).
4. **Pesos falsos ya existen** en Hugging Face («Qwen 4 27B» que es Flash Next renombrado) — verdadero solo con ficha bajo la organización oficial de Qwen **y** publicación de la cuenta verificada; si falta una, esperá.
- **Bonus licencias**: Qwen 3.8 27B = **Apache 2**; Flash Next = **licencia comunitaria** distinta; 3.8 Max = tercera licencia personalizada — «tres licencias para tres modelos de la misma empresa en la misma generación»; la del nuevo 27B no se anunció. «Pesos abiertos ≠ pesos permisivos» — leer el LICENSE antes de integrar en comercial.

## Notas críticas

- **El mejor video de IA local procesado**: epistemología del hype hecha método (separar demo viral / registro oficial / código de bajo nivel), física de la inferencia explicada con aritmética verificable (16,46 GB ÷ 936 GB/s = 57 tok/s), consejos accionables con defaults que sabotean (contexto 4k, razonamiento extra-high), y honestidad total sobre lo que no se sabe. Extiende el clúster [[deepseek-harness]]/[[cognix]] con datos de hardware concretos.
- Nombres ASR: «Cuen» (Qwen), «Gamefield», «Loctar», «Swift 1.5», «Strata», «Oyama» (Ollama), «SIS» (probador), «Coder» (Qwen Code).

## Cruces

- **Dominio destino previsto: `ia-local/`** — clúster directo con [[cognix]] (WL-16 etc.), BitNet (1.58 bits) y la familia DeepSeek local.
- **WL-52 (Gentleman Programming)**: su coordinación con DeepSeek Flash «pensamiento bajo» es exactamente el consejo n.º 3 de este video aplicado — confirmación práctica cruzada.
- **WL-51 (NapMem)**: la atención dispersa (índice + presupuesto fijo de lectura) es la misma idea arquitectural que NapMem aplica a la memoria del agente — patrón «consultar un índice, no releer todo» en dos dominios.
- Tema-candidato: **higiene de configuración de IA local** (contexto default, nivel de razonamiento, pesos falsos, licencias) — primera fuente del tema.

# Resumen: Concurrencia vs Paralelismo explicado como debieron enseñártelo

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-05-13-concurrencia-vs-paralelismo-explicado-como-debieron-ensenartelo.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=7WkswDqDMhI — Torti Code, 2026-05-13 (11:36).
- **Nota**: fuente 5/10 del lote informatica-teoria (worker 1). Consolidación (2026-11-11): [[torti-code]].

## El restaurante: un mozo y cinco mesas no es lo mismo que cinco mozos

**Caso 1 — un mozo, cinco mesas**: atiende la mesa 1, toma el pedido, lo lleva a la cocina, y mientras la cocina prepara, va a la mesa 2; mientras se preparan ambas, atiende la 3, y así. Una persona, cinco mesas, nadie espera demasiado. Pero ¿está sirviendo las cinco al mismo tiempo? **No**: atiende una por una, alternando rápido entre ellas. Eso es **concurrencia**: una sola persona manejando varias tareas alternando entre ellas, dando la *sensación* de simultaneidad.

**Caso 2 — cinco mozos, uno por mesa**: cada mozo atiende su mesa — real, físicamente, al mismo tiempo. Cinco pedidos llegando juntos a la cocina, cinco platos saliendo juntos. Eso es **paralelismo**: varias personas, varias tareas, realmente simultáneas. La definición más limpia que existe (para repetir en la cabeza): **concurrencia es ocuparse de muchas cosas a la vez; paralelismo es hacer muchas cosas al mismo tiempo**. Si las confundís, escribís código que parece rápido pero es lento, o que creés seguro pero tiene bugs invisibles que solo aparecen con muchos usuarios.

En tu computadora, cada CPU es como el cocinero: **con un solo core no hay paralelismo verdadero, solo concurrencia**; con ocho cores podés correr ocho tareas verdaderamente en paralelo. Como desarrollador diseñás el código de dos maneras: **concurrente** (estructurado para alternar tareas: async/await, event loop, callbacks — una pieza de código, múltiples tareas) o **paralelo** (lanza múltiples procesos o threads que corren simultáneamente en distintos cores: worker threads, multithreading).

## La palabra clave: bound (limitado por)

Todo programa que corre está limitado por una de dos cosas:

- **IO bound**: tu código está limitado por la *espera*. Todo lo que el programa le pide al mundo exterior y debe esperar — respuesta de un servidor, el disco que devuelve un archivo, la base que termina la query, el usuario que hace clic. Mientras espera, **la CPU casi no hace nada: está aburrida**.
- **CPU bound**: tu código está limitado por el *trabajo*. La CPU al 100 % haciendo cálculos — hashear un archivo grande, redimensionar imágenes, comprimir vídeo, entrenar un modelo de ML. No hay espera: **la CPU está sudando**.

**La regla**: si la tarea es IO bound, la **concurrencia** alcanza — no sirve tener ocho cocineros si todos esperan la entrega del proveedor; alcanza un solo cocinero que aproveche cada espera para arrancar otra tarea. Si la tarea es CPU bound, necesitás **paralelismo verdadero** — si la CPU suda al 100 % en una tarea, no podés alternar a otra; necesitás otro cerebro físico, otro core. Ejemplos prácticos: 10 peticiones HTTP a APIs distintas → IO bound, concurrencia; procesar 10 imágenes grandes → CPU bound, paralelismo; leer 100 archivos chicos → IO bound; hashear 100 archivos grandes → CPU bound. Confundirlo sale caro: agregar concurrencia a una tarea CPU bound **no acelera nada** (la CPU sigue siendo la misma); agregar paralelismo a una IO bound **desperdicia memoria** sin ganar nada — todos los workers igual de aburridos esperando la red.

## En código: descargar 10 imágenes (IO bound)

Cada descarga tarda un segundo esperando al servidor. La forma lenta es secuencial: un loop que descarga una, espera, sigue con la siguiente — **10 segundos totales**, con la CPU aburrida nueve de cada diez. La forma rápida es concurrente: lanzarlas todas a la vez y esperar que terminen juntas — **~1 segundo**. Las herramientas: `Promise.all` (JavaScript), `asyncio.gather` (Python), `CompletableFuture` (Java), goroutines + WaitGroup (Go). Por ecosistema: **Go** se hizo famoso por sus goroutines (threads livianos del runtime, ideales para servidores con miles de conexiones); **Java** tiene threads reales del sistema y desde Java 21 también Virtual Threads similares a las goroutines; **Python** carga tradicionalmente el **GIL** del build estándar, que se libera mientras espera IO (desde Python 3.13 existe un build sin GIL); **Node** corre tu JavaScript en un solo thread del event loop, pero por debajo **libuv** tiene un pool y desde Node 12 hay worker threads para JS en paralelo. Como la tarea es IO bound, no necesitás más cores — necesitás dejar de quedarte esperando.

## El hash de 10 archivos (CPU bound): donde está la trampa

El ejemplo inverso: calcular SHA-256 de 10 archivos grandes, CPU al 100 %. Aquí muchos creen que las herramientas anteriores aceleran cualquier cosa — **depende del lenguaje**: en Node y en Python con GIL, `Promise.all` y `asyncio.gather` **no aceleran el cómputo pesado**; hay que saltar a **worker threads** o **multiprocessing**. En Java, un **ExecutorService** distribuye tareas entre cores; en Go, las mismas goroutines lo hacen automáticamente. La solución siempre es saltar a algo que el sistema operativo pueda asignar a **otro core**: con ocho cores, ocho archivos al mismo tiempo, de verdad. Resumen: IO bound → alcanzan las herramientas de concurrencia; CPU bound → en Node y Python salto a worker threads/multiprocessing; en Java y Go el paralelismo ya es real.

## Race conditions: el bug más sutil de la programación moderna

Ocurren cuando dos tareas concurrentes o paralelas **intentan modificar los mismos datos al mismo tiempo** — como dos mozos agarrando el último plato del buffet en el mismo instante: solo hay uno, alguien se queda sin; pero peor, si nadie verifica bien, **los dos creen que lo agarraron y se lo prometieron a clientes distintos**. El ejemplo clásico: variable `stock` que arranca en 1; la función `comprar(usuario)` verifica si stock > 0, llama a `procesarPago` (tarda 500 ms), resta 1 y devuelve «comprado». Ana y Luis compran concurrentemente: **ambas llamadas leen stock = 1, ambas pasan el chequeo, ambas procesan el pago, ambas restan** — resultado: dos compras vendidas con un solo producto.

El bug es idéntico en JavaScript, Python, Java y Go por la misma razón — aunque con matices: en Java y Go es más peligroso porque sus threads/goroutines pueden leer y escribir stock **en el mismo nanosegundo**; en JavaScript y Python el bug aparece por la **pausa del await** (no por simultaneidad real), pero el efecto es el mismo. Se arregla con **locks, operaciones atómicas o transacciones de base de datos** — pero el problema de fondo: si no sabés que existe, no sabés que tu código lo tiene. No es solo tu app: vive en sistemas que usás todos los días — el SO corre cientos de procesos en ocho cores y el kernel los distribuye y alterna (el mozo del restaurante a nivel máquina); tu navegador abre **un proceso por pestaña** (por eso si una se cuelga, las otras siguen); **Postgres** arranca un proceso por conexión (una mala query no invalida a las demás). Siempre que algo pasa simultáneamente en sistemas reales, hay scheduling de procesos o threads por debajo.

## La IA como copiloto (y vos como piloto)

Si le pedís a la IA «hacé esto rápido», tira `Promise.all` o el equivalente — y si la tarea es CPU bound en Node o Python, eso **no acelera absolutamente nada**. Lo correcto es decirle el tipo de tarea y el lenguaje: «esto es IO bound en JavaScript» → Promise.all; «esto es CPU bound en Python» → multiprocessing; y la más crítica: «este código va a tener concurrencia, identificá race conditions y agregá locks o transacciones donde haga falta». Sin esa pregunta, la IA escribe **código optimista que se rompe cuando entran usuarios reales**. La recomendación: antes de pedirle nada a la IA, practicar las race conditions a mano — romper el stock una vez, agregar un lock, debuggear. Una vez que entendés qué pasa, le preguntás a la IA y verificás lo que te dice. **Vos sos el piloto, la IA es el copiloto: si no sabés a dónde vas, te lleva al lugar equivocado a toda velocidad.**

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen.
- Autopromoción: anuncio del próximo vídeo (event loop de JavaScript) y llamada a suscripción — excluidas de la síntesis.
- Sin patrocinios externos identificables.

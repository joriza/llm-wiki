# WL-275 — «Crea un gestor de inventario profesional en Python asíncrono en 150 líneas» (Código Espinoza)

- **Fuente original**: `raw/wl/tramo-40/2026-10-03-crea-un-gestor-de-inventario-profesional-en-python-asincrono-en-150-lineas.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=XC97Ck0c0fs · Canal Código Espinoza - Automatiza tu Vida · Publicado 2026-10-03 · 10:02 · Subtítulos automáticos es
- **Tramo**: 40, fuente útil 3/5 (posición 87 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): python-practico (asyncio, SQLite WAL, productor-consumidor; entidad candidata Código Espinoza, ya detectada en WL-269)

## Qué es

Tutorial de arquitectura (10 min): construcción desde cero de un gestor de inventario en Python asyncio que pasa de **24 movimientos/segundo a ~100.000 en ~1 segundo** sin más servidores ni frameworks, mediante cuatro decisiones de diseño — y la cuarta corrige una condición de carrera que ni la prueba de carga detectó.

## Puntos clave

- **Decisión 1 — la regla vive en el modelo (SQL, no Python)**: el stock nunca baja de cero porque la condición va *dentro* del mismo `UPDATE` — comprobar y escribir son una sola operación atómica; un `if` en Python dejaría un hueco de lectura-escritura que otra tarea puede explotar. Modelo `frozen` con `slots`. SQLite en modo **WAL** (lector no frena al escritor) + `aiosqlite`, un único escritor por diseño.
- **Decisión 2 — cola y lotes (productor-consumidor)**: `asyncio.Queue` con tope de 10.000 (back pressure: frena la entrada en vez de saturar la memoria); el escritor agrupa hasta 500 movimientos con `executemany` y **un solo commit por lote**. `rowcount` identifica los rechazados sin `if`. Webhook en asyncio puro que valida todo antes de encolar y responde **202** antes de grabar. Apagado limpio con `queue.shutdown()` (Python 3.13+).
- **Decisión 3 — proteger la API externa** (lo que «separa un script de un sistema»): límite de tasa (decorador de turnos, 200/s — sin candados, porque en asyncio una tarea solo cede el control en un `await`), timeout (cortar llamadas colgadas) y reintentos con espera creciente (sintaxis `except A, B` de Python 3.14); tras 3 fallos, lista de fallidos y el sistema sigue. **Coalescing de avisos**: si un producto cambia 50 veces, un solo aviso pendiente — de 300 llamadas a ~95.
- **Decisión 4 — candado por producto**: la prueba de carga salía en verde sin él, pero la tienda podía ver stock desactualizado (reordenamiento de avisos lento/rápido pisa el dato nuevo) y vender unidades inexistentes. «Una prueba en verde te dice que no encontró el error, no que el error no existe. La concurrencia no se prueba solo ejecutando, **se razona**». Con candado por producto, avisos del mismo ítem van en fila y el paralelismo entre ítems se conserva.
- **Auditoría y adaptación**: 200 puntos de venta, 100.000 movimientos, 300 trampas (rechazadas exactas), stock cuadrado a la unidad; adaptaciones sugeridas: logística (transferencia = dos movimientos, ejercicio de atomicidad), control de equipos (serie = stock 1/0), PostgreSQL vía `asyncpg` con la misma regla en el `UPDATE`. Límites declarados: cola en memoria (pérdida si el proceso muere) y webhook mínimo (detrás de FastAPI con autenticación para exponerlo).

## Salvedades de triage

- Cifras de rendimiento obtenidas en la demo propia del autor, no reproducidas de forma independiente; el proyecto completo se distribuye vía Patreon (marco comunitario, declarado en el video).
- Transcripción automática con ruido («piénsalo como un cuaderno», nombres de librerías deformados: «iOS SQL» por PyMySQL/SQL, «async cpg» por asyncpg).
- Contenido técnico sólido y verificable conceptualmente; fechas de features de Python (3.13 `shutdown`, 3.14 sintaxis `except`) a confirmar en consolidación.

## Cruces sugeridos

- Entidad candidata **Código Espinoza** (2.ª fuente, ver WL-269) — a crear/actualizar en consolidación.
- Cluster python-practico: patrones asyncio/productor-consumidor como complemento de los resúmenes del dominio.
- WL-160 (DevOps panorama) y [[agentes-de-codigo]] marginales; tesis «código profesional = saber qué hacer cuando algo falla» cruza con WL-271/WL-272 (mantener/revisar).

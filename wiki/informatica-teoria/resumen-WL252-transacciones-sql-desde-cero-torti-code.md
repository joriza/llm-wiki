# WL-252 — Transacciones SQL desde cero: lo que necesitas para usarlas

- **Fuente original**: `raw/general/2026-10-11-transacciones-sql-desde-cero-lo-que-necesitas-para-usarlas.md`
- **Video**: [Transacciones SQL desde cero: lo que necesitas para usarlas](https://www.youtube.com/watch?v=9N-ndDvIzWo)
- **Canal**: Torti Code · **Publicado**: 2026-10-11 · **Duración**: 12:18 · **Ingesta**: 2026-11-15 (tramo 36)

## Qué trata

Explicación didáctica de transacciones SQL construida sobre un caso concreto: dos compras simultáneas por la última unidad de stock.

- **El problema central**: begin/commit alrededor del código **no basta** — dos conexiones pueden leer stock = 1, calcular cada una 1−1 y escribir 0, generando dos pedidos con una sola unidad. La regla de negocio (una venta solo si se consiguió la unidad) quedó separada de la modificación; una restricción de «stock no negativo» no detecta esta sobreventa.
- **La solución**: expresar la decisión dentro de la operación — `UPDATE ... SET stock = stock - 1 WHERE stock > 0` (update condicional), verificar filas afectadas vía el driver, insertar el pedido solo si afectó una fila, y commit/rollback en consecuencia. Prueba local con dos conexiones a SQLite: la segunda espera al escritor único, encuentra stock 0 y no crea pedido.
- **ACID bien explicado**: atomicidad (descuento y pedido quedan juntos o se deshacen juntos), consistencia (la base aplica tus restricciones pero **no inventa las reglas de negocio** — la clave del ejemplo), aislamiento (qué efectos ven las transacciones concurrentes; `read committed` en Postgres re-evalúa la condición sobre la fila actualizada tras el commit de la primera — honestamente aclara que la prueba SQLite no demuestra el comportamiento de Postgres), durabilidad (WAL/registros de recuperación; commit ≠ backup).
- **Aislamiento y bloqueos**: `serializable` no es ejecución física secuencial y puede requerir reintentos; alternativa para decisiones complejas: `SELECT FOR UPDATE`. Consejos de diseño: transacciones cortas (no retener bloqueos mientras el usuario llena formularios o responde un servicio remoto), orden coherente al tomar varias filas para evitar interbloqueos (y manejo/reintento del deadlock con límite).
- **Límite conceptual clave**: commit de la base **no confirma efectos de otros sistemas** — cobrar por API y hacer rollback no devuelve el dinero; una compra real necesita estados (reserva pendiente, pago confirmado, cancelación), identificadores de operación y proceso de recuperación. «No dibujar una caja llamada transacción alrededor de dos sistemas».
- Cuándo abrir transacción explícita: solo para unidades de trabajo reales; una instrucción única ya es su propia transacción; no agrupar procesos de negocio largos «para llamarlos atómicos».

## Observaciones de triage

- Divulgación técnica introductoria de calidad: pedagógica, con demo práctica (SQLite) y limitaciones reconocidas explícitamente (SQLite ≠ Postgres en bloqueo por filas); sin cifras ni afirmaciones externas a verificar.
- Canal Torti Code: primera fuente WL del canal — entidad de canal candidata si acumula.
- Referencia cruzada interna del canal a un video previo de «concurrencia y paralelismo».

## Cruces (en texto plano, candidatas)

- Serie programación/general: WL-246 (patrones de API — idempotencia, tema cercano), WL-232 (DevOps/infra), WL-248 (benchmarks de desarrollo), WL-102/WL-160 (panorama dev).
- Tema transversal: «la garantía no cruza la frontera del sistema» — connecta con la idempotencia de WL-246 y con estados de pago; candidato a concepto único («transacciones y límites de garantía») en consolidación junto a WL-246.

## Dominio destino sugerido (pendiente de consolidación)

`general` (programación/bases de datos).

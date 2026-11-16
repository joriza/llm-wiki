# WL-261 — Lo que NUNCA te explicaron de las Transacciones en SQL

- **Fuente original**: `raw/informatica-teoria/2026-10-10-lo-que-nunca-te-explicaron-de-las-transacciones-en-sql.md`
- **Video**: [Lo que NUNCA te explicaron de las Transacciones en SQL](https://www.youtube.com/watch?v=DBOuemO4q0k)
- **Canal**: TheDebugDuck · **Publicado**: 2026-10-10 · **Duración**: 16:01 · **Ingesta**: 2026-11-15 (tramo 38)

## Qué trata

Explicación de los cuatro niveles de aislamiento SQL construida sobre el punto donde la mayoría falla: el nivel que tu aplicación ya usa por defecto y que nunca revisaste.

- **Marco inicial**: atomicidad ≠ aislamiento. La atomicidad es el todo-o-nada de una transacción; el aislamiento controla **qué puede ver mi transacción de lo que hacen las demás** mientras está abierta. Se pueden tener dos transacciones perfectamente atómicas y aun así un problema de concurrencia.
- **Los cuatro niveles y sus diferencias por motor**:
  - *Read uncommitted* — permite lecturas sucias (ver datos de un rollback posterior). El patrón típico es el hint `NOLOCK` de SQL Server «para que el reporte no se bloquee» — «dame lo que tengas aunque no esté confirmado». PostgreSQL ni siquiera lo implementa de verdad: lo trata internamente como read committed. Tolerable para tableros; señal de alerta en pagos o cupos.
  - *Read committed* — default de Postgres, Oracle y SQL Server: no ves cambios sin confirmar. Pero **no protege el patrón leer→calcular en la app→update**: entre el `SELECT saldo` y el `UPDATE`, otra transacción puede confirmar un cambio y tu cálculo se hace sobre un valor ya obsoleto. La solución no es cambiar el nivel sino escribir la operación en un solo paso (`SET saldo = saldo - 80`), donde la base calcula y aplica atómicamente.
  - *Repeatable read* — snapshot al inicio de la transacción (lecturas repetibles). Otra vez «mismo nombre, mecanismo distinto»: Postgres lo implementa con MVCC puro; MySQL/InnoDB agrega next-key locks y gap locks para prevenir lecturas fantasma, lo que puede producir deadlocks inexistentes en Postgres.
  - *Serializable* — garantiza que el resultado equivale a algún orden secuencial posible; Postgres lo implementa con Serializable Snapshot Isolation (detección de conflictos sin bloquear toda la tabla). El costo concreto es el error 40001: **no es un fallo, es el nivel funcionando** — la aplicación debe capturarlo y reintentar. Es un contrato: la base garantiza consistencia, tú garantizas reintentos.
- **El caso right skew (los dos médicos de guardia)**: Ana ve a Carlos disponible y sale; Carlos ve a Ana disponible y sale; nadie modificó la fila del otro, ambas lecturas fueron correctas, ambas confirmaron — y no queda ningún médico. Una regla que depende de **varias filas** puede romperse aunque cada transacción sea consistente por separado; repeatable read no lo detecta, serializable sí.
- **El caso del cupo excedido**: plataforma de adelantos con cupo de 500.000; dos solicitudes simultáneas de 300.000 hacen `SELECT SUM` (ambas ven 0), ambas deciden «cabe», ambas insertan y confirman: 600.000. El tipo de error que puede pasar meses sin aparecer porque en pruebas hay un solo request.
- **Soluciones sin cambiar el nivel global**: si la regla vive en una fila, expresar la condición en el propio `UPDATE` (… `WHERE reservado + monto <= límite`) y verificar filas afectadas; si vive en varias filas, `SELECT ... FOR UPDATE` de una fila común para serializar solo esa cuenta. Tesis: «primero encuentra la regla, después protege exactamente esa regla» — no cambiar el nivel por reflejo.
- **Metodología de diagnóstico**: verificar el nivel vigente (`SHOW transaction isolation`), revisar dónde la app calcula fuera de la operación, vigilar transacciones abiertas durante llamadas a APIs externas (locks retenidos durante la espera), y probar con concurrencia real (dos requests simultáneos, no secuencial).

## Observaciones de triage

- Divulgación técnica sólida, sin cifras externas que verificar; todo el contenido es conceptual y verificable contra documentación de motores.
- Canal TheDebugDuck: ya tiene entidad `wiki/entidades/thedebugduck.md` (4 fuentes de favoritos + 1 WL del tramo 36, informatica-teoria) — **esta es su 5ª fuente WL**: candidata a actualización en consolidación.
- Solape temático fuerte con WL-252 (Torti Code, transacciones SQL desde cero): el ejemplo del update condicional es prácticamente el mismo patrón; candidato a concepto compartido («transacciones y dónde vive la regla») en consolidación.

## Cruces (en texto plano, candidatas)

- WL-252 (transacciones SQL desde cero — solape directo: update condicional, `FOR UPDATE`, transacciones cortas).
- [[bases-de-datos]] · [[arquitectura-software]] — el canal mejor representado de conceptos backend.
- WL-246 (patrones de API / idempotencia — tema cercano de garantías y concurrencia).

## Dominio destino sugerido (pendiente de consolidación)

`informatica-teoria` (donde ya vive el resumen TheDebugDuck de APIs) o `general` por defecto de estación — a decidir en consolidación.

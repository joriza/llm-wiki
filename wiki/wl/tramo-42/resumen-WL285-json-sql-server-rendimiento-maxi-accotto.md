# WL-285 — «Guardar JSON en SQL Server sin Romper el Rendimiento ⚡» (Maxi Accotto)

- **Fuente original**: `raw/wl/tramo-42/2026-09-23-guardar-json-en-sql-server-sin-romper-el-rendimiento.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=66MMxku2D9Y · Canal Maxi Accotto | SQL Server · Fabric · Power BI · Publicado 2026-09-23 · 15:35 · Subtítulos manuales es
- **Tramo**: 42, fuente útil 1/5 (posición 97 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): general/informatica-teoria (cruces [[bases-de-datos]], WL-252/WL-280)

## Qué es

Tutorial (15 min, subtítulos manuales) de buenas prácticas para persistir JSON en SQL Server, con demos en Management Studio: dónde guardarlo, dónde no, y primeras impresiones del tipo de dato JSON nativo de SQL Server 2025 / Azure SQL.

## Puntos clave

- **Anti-patrón**: JSON como `NVARCHAR(MAX)` dentro de la tabla transaccional — aunque la consulta no lea la columna, un scan paga el coste igual (plan 1,008 vs 0,25 en la demo), engorda el clustered index y encarece el mantenimiento: rebuild del índice ~25 s con JSON vs ~2 s sin él.
- **Recomendación central**: separar los JSON en una tabla anexa (movimientos + movimientos_anexos), idealmente en un **filegroup aparte** — SQL Server respalda y restaura por filegroup, lo que permite restaurar solo lo transaccional sin los JSON pesados.
- **Tipo JSON nativo (SQL Server 2025 / Azure SQL, en preview para on-premise)**: validación incluida y menor tamaño (misma tabla 5 M de filas, bastante menos páginas) — mejora planes y rebuilds, pero **no arregla** el anti-patrón: el scan sigue caro, solo menos.
- **Límites**: JSON no reemplaza al motor transaccional (no sustituye un stored procedure con TVP «para rendimiento»); no abusar de OPENJSON ni consultar dentro del JSON (con VARCHAR(MAX) exige columnas calculadas; con el tipo nativo permite índice, pero sigue siendo lo menos eficiente) — el coste de CPU se paga en factura.
- **Casos legítimos**: persistir respuestas de APIs que llegan en JSON cuando se quiere historizarlas en el mismo motor.

## Salvedades de triage

- Demos sobre datos propios sin tamaño/metodología declarados en detalle; cifras de la demo (planes, rebuilds) ilustrativas, no benchmark sistemático.
- Estado preview del tipo JSON nativo 2025 declarado por el autor, sin referencia documental — verificar.

## Cruces sugeridos

- [[bases-de-datos]] y cluster SQL: WL-252 (transacciones), WL-280 (índices sobre fechas, mismo tema rendimiento en tablas grandes), WL-246 (patrones API — JSON como respuesta de API).

# WL-280 — «Este ERROR con FECHAS está matando tus consultas» (hdeleon.net)

- **Fuente original**: `raw/informatica-teoria/2026-09-28-este-error-con-fechas-esta-matando-tus-consultas.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=LoCT067AuLc · Canal hdeleon.net · Publicado 2026-09-28 · 09:24 · Subtítulos automáticos es
- **Tramo**: 41, fuente útil 2/5 (posición 92 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): informatica-teoria o general (bases de datos; cruces WL-252, [[bases-de-datos]], WL-246)

## Qué es

Tutorial corto (9 min) de Héctor de León sobre el patrón de rendimiento clásico en tablas con millones de registros: las búsquedas por rango de fechas se degradan y el «asesino de índices» es envolver la columna de fecha en funciones (`DAY`/`MONTH`/`YEAR`), que impiden usar el índice.

## Puntos clave

- **El problema**: consultas por rango (`BETWEEN` dos fechas) sobre una columna `created_date` de una tabla demo de 5 M de registros tardan ~3 s; el sistema «colapsa» gradualmente sin que nadie piense en la fecha.
- **La solución base**: índice B-tree sobre la fecha — B-tree conserva orden y sirve `BETWEEN`/`<`/`>`; hash no sirve para rangos. La fecha de creación es secuencial e inmutable, así que el costo de recalibración del índice en cada inserción es mínimo (siempre «mayor, mayor, mayor»). Con índice la consulta baja a ~1 s. Si no se busca por la fecha, no crear el índice.
- **El asesino de índices**: filtrar con `DAY(fecha) = … AND MONTH(fecha) = …` hace que el índice **se ignore** — la consulta con funciones tardó 3,7 s, peor que sin índice. La regla: nunca envolver la columna indexada en una función; usar rangos.
- **Matices**: en tablas con inserción masiva un índice de fecha puede ser contraproducente (recalibración constante); alternativa recomendada: índice compuesto fecha + campo frecuente en las mismas búsquedas (id de usuario, id de categoría, id de tenant), que acelera cuando el diseño siempre consulta en conjunto.
- **Tono**: el canal declara expresamente hartazgo del contenido de IA («empalaga», «diabetes de IA») y anuncia cursos propios con cupón — cierre comercial.

## Salvedades de triage

- Demo propia sin especificar el motor exacto ni hardware; las cifras (3 s → 1 s) son ilustrativas de una sola tabla sintética — reproducibles en principio pero no benchmark formal.
- Contenido pedagógico correcto y convencional (sin afirmaciones dudosas); solapamiento temático con WL-252 (SQL) y WL-246 (arquitectura API).

## Cruces sugeridos

- [[bases-de-datos]] (si existe como concepto/página; verificar en consolidación) y cluster SQL WL-252.
- Tema de tramo: Wiremob ×2 — ver tramo 41: consultas y fechas (WL-280) vs arquitectura hexagonal (WL-286, descargada para la ventana siguiente).

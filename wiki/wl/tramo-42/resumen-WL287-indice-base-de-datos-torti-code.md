# WL-287 — «Cómo funciona un índice en una base de datos (explicado facil)» (Torti Code)

- **Fuente original**: `raw/wl/tramo-42/2026-09-25-como-funciona-un-indice-en-una-base-de-datos-explicado-facil.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=ya_eWbTfHXE · Canal Torti Code · Publicado 2026-09-24 · 13:33 · Subtítulos automáticos es
- **Tramo**: 42, fuente útil 3/5 (posición 99 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): general/informatica-teoria (cruces [[bases-de-datos]], WL-280/WL-285/WL-261)

## Qué es

Explicación didáctica (13 min, analogía del archivo de un colegio) de cómo funciona un índice B-tree en una base de datos: sin índice vs con índice, su estructura, su costo, cuándo el planificador lo ignora y los casos trampa. Medido sobre PostgreSQL 18 con datos en memoria (10 M de filas).

## Puntos clave

- **Sin índice**: búsqueda de Ana Ruiz por correo = lectura secuencial de 140.000 páginas (8 KB c/u) para una fila — 105 ms con 3 procesos en paralelo; con índice B-tree: 5 páginas, 40 µs (>2000× menos).
- **Estructura**: el índice es un fichero aparte ordenado (la tabla no se reordena — por eso puede haber varios); árbol B con raíz, niveles intermedios y hojas ordenadas con la ubicación de cada fila; la altura crece muy despacio (~100 punteros por página), una tabla 100× mayor añade 1-2 niveles; las hojas encadenadas dan también rangos (clientes de marzo).
- **Costo**: cada INSERT escribe una entrada en cada índice (inserción de 1 M de filas: ~2 s con 1 índice vs ~8 s con 4); el índice del correo ocupa 547 MB, la mitad de la tabla — «no se indexa todo».
- **El planificador**: estima selectividad con estadísticas por muestreo (valores más comunes) y elige el camino más barato; para «Ciudad de México» (30 % de las filas) leyó la tabla completa incluso obligado a usar el índice (peor: tabla + índice); para Puntarenas (~5.000) usó el índice: 5 ms vs 160 ms. En tablas chicas casi nunca conviene. Verificar con EXPLAIN.
- **Casos trampa**: comodín inicial (LIKE '%texto' — el orden no ayuda; existen otros índices para eso), funciones en la condición (`lower(correo)` = otro dato; solución: índice de expresión sobre exactamente lo que se pregunta), e índices compuestos: el orden importa y rinden cuando la consulta fija las primeras columnas (buscar por nombre sin fijar apellido no sirve el índice apellido+nombre; PG 18 puede hacer saltos por sección cuando hay pocos apellidos).
- **Anécdota real**: GitLab (dicho «GitJob» por la transcripción) en marzo 2021 reordenó un índice y otra consulta pasó a recorrer la tabla completa — 1 h 10 min de incidente.
- **Cierre**: además de la latencia individual, el problema n+1 (una consulta por pedido × 100 pedidos) vuelve lenta una pantalla — tema anunciado para otro video.

## Salvedades de triage

- Cifras de una prueba propia declarada (PostgreSQL 18, datos en memoria, máquina concreta) — honestidad metodológica explícita del autor; el caso GitLab es de 2.ª mano (verificar: el incidente citado corresponde a GitLab y no GitJob).
- Transcripción automática: «Torty/Torticode», «Ruiz Postgress», «SQLate», «GitJob» a normalizar en consolidación.

## Cruces sugeridos

- Cluster [[bases-de-datos]]: WL-280 (índices sobre fechas — «asesino de índices» con funciones, misma tesis de indexar lo que se pregunta), WL-261 (aislamiento), WL-285 (JSON y filegroups en SQL Server), WL-252 (transacciones).
- Torti Code 2.ª fuente (WL-286, arquitectura hexagonal) — entidad de canal candidata en consolidación.

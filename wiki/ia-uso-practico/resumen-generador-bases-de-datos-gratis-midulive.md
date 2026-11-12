# Resumen: Este Generador de Bases de Datos GRATIS es una LOCURA

- **Tipo**: resumen de fuente (reseña/herramienta: generación de bases de datos con lenguaje natural).
- **Canal**: midulive (página de entidad pendiente de consolidación).
- **Publicado**: 2024-08-13. **Duración**: 07:00.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=QVpxZyI1Iqk).
- **Raw**: [raw/ia-uso-practico/2024-08-13-generador-bases-de-datos-gratis-midulive.md](../../raw/ia-uso-practico/2024-08-13-generador-bases-de-datos-gratis-midulive.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: pendientes de consolidación (Postgres.new, PGlite en navegador, SQL con lenguaje natural).
- **Disposición de la ingesta**: Nueva.

## Tesis central

**Postgres.new** (transcrito «postgres neww»; «de los creadores de Supabase») permite **crear y modificar bases de datos con lenguaje natural** — en español, tanto entrando como respondiendo — con IA que además dibuja el diagrama de relaciones. No es una maqueta: «esta base de datos funciona realmente... está ejecutando la base de datos en tu local» (en el navegador), mezclando IA con SQL real: «podéis hacer inserts, lo que vosotros queráis». Es **100% gratuita**, exporta toda la base en `.tar` para desplegar donde quieras y acepta importar CSV.

## Recorrido del vídeo

- **[00:00–00:50] Creación con lenguaje natural**: prompt «crea un clon de Twitter» → la IA «está ejecutando el SQL», define las tablas (usuarios, tweets, seguidores, likes), explica su diseño y muestra el SQL generado («qué bonito este SQL»). Diagrama con relaciones: al hacer clic en un campo (p. ej. `tweet_id`, primary key identidad no nula, int8) puedes **renombrarlo, hacerlo nullable, único o crear un índice** muy fácilmente.
- **[01:23–02:48] Iteración y datos de ejemplo**: «añade también una tabla para los retweets» → añade la tabla y las relaciones necesarias, todo reflejado en los CREATE TABLE visibles. «Añade datos de ejemplo para todas las tablas» → ejecuta una serie de INSERT y rellena usuarios, tweets, followers, likes y retweets. Pestaña de **migrations** (parcial) y SQL copiable.
- **[03:20–04:15] Deploy y exportación**: botón **Deploy** en alpha privado (despliegue serverless «todavía no está listo»); **Download** exporta **toda la base de datos en .tar** «con todos los datos» para desplegarla donde quieras o en local. Especula que Supabase añadirá despliegue directo con un botón.
- **[04:15–05:18] Es una base de datos real en tu navegador**: se puede escribir **SQL directo** («SELECT user_id FROM likes WHERE tweet_id = ...») → lo ejecuta y devuelve el resultado. «Esto no es solo inteligencia artificial: está mezclando inteligencia artificial con lenguaje natural» sobre una base real; inserts y cualquier operación permitidas.
- **[05:18–06:13] Importación**: botón de subir archivos; el `.tar` descargado no sirve para importar, pero **sí acepta CSV** («tampoco está nada mal»). Cierre off-topic del canal (giras de midulive en PlatziConf Bogotá y Medellín) sin contenido sobre la herramienta.

## Puntos clave

1. **Bases de datos desde lenguaje natural en español**: creación, modificación, iteración y datos de ejemplo por conversación [00:26-02:48].
2. **Diagrama ER interactivo**: relaciones visibles y edición de columnas por clic (renombrar, nullable, unique, índice) [00:50-01:23].
3. **PostgreSQL real en el navegador**: SQL directo con resultados; no es simulación [04:15-05:18].
4. **Portabilidad total**: export `.tar` con datos para desplegar en cualquier servidor o local; import de CSV; deploy serverless aún en alpha [03:20-04:15, 05:18-06:13].
5. **Gratis al 100%** [00:26].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («postgres neww» por **Postgres.new**, «supes/supis» por Supabase, «stableifusion» no aparece aquí pero sí «piquig»). Este resumen los normaliza (Postgres.new es el producto conocido de Supabase con PGlite en navegador).
- El tramo final (~1 minuto) es charla personal del canal sobre sus giras; se excluye de la síntesis.
- Fuente 16/57 de la playlist «IA-Recursos»; decimotercer canal nuevo del lote (midulive), entidad aplazada.

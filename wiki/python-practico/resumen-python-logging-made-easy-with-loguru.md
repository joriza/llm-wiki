# Resumen: Python Logging Made EASY with Loguru

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2025-01-08-python-logging-made-easy-with-loguru.md` (video en inglés; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «logu»/«luro»→Loguru) — https://www.youtube.com/watch?v=y8qLhov8QU8 — Better Stack, 2025-01-08 (09:48).
- **Nota**: fuente 1/7 del lote python-practico. El segmento de patrocinio del video (centralización en Better Stack, producto del propio canal) queda excluido de la síntesis.

## La tesis: un solo logger, listo desde el import

Loguru se presenta como reemplazo casi «drop-in» del logging estándar (o del `print` por todas partes): hay **un solo logger global**, sin instanciar nada — `from loguru import logger` y `logger.info(...)` ya produce salida formateada con timestamp, nivel, scope (`main` si corrió directo), módulo y número de línea [00:25-01:14]. Niveles estándar ampliados con `trace`: el mínimo por defecto es `debug`, por lo que `trace` queda oculto hasta cambiar el nivel.

## Configuración: la función `add()`

Toda la configuración pasa por **`logger.add()`**: primer argumento el *sink* (destino: `sys.stderr` para consola, o un nombre de archivo), luego `level` mínimo, `format` con directivas de formato Python (incluye cambiar cómo se muestra el tiempo) y esquema de colores con markup propio [02:02-03:30]. Para empezar de cero: **`logger.remove(0)`** elimina la configuración por defecto [02:02]. Si el sink es un archivo, se configuran **rotación, retención y compresión** de logs [07:20-07:42]. Con `serialize=True` la salida pasa a **JSON estructurado**, pensado para exporters/collectores de logs [06:34-06:58].

## Contexto en los logs: dos caminos

El formato necesita la directiva `extra` para mostrar información contextual — el ejemplo marco: registrar `seller_id` y `product_id` en un e-commerce para correlacionar y filtrar después [03:30-04:15]. Dos formas equivalentes: **`logger.bind(seller_id=..., product_id=...)`** devuelve un *child logger* que hereda el contexto del padre sin contaminar al logger global (útil para acotar contexto a un scope, p. ej. request IDs dentro de una función) [04:15-05:06]; o **`with logger.contextualize(...)`**, que modifica el diccionario `extra` directamente sin crear instancia nueva y exige el bloque `with` [05:06-05:28].

## Captura de errores

**`with logger.catch():`** ejecuta la función y si lanza excepción registra mensaje + stack trace completo en el contexto [05:28-05:50]; el equivalente sin `with` es el decorador **`@logger.catch`** sobre la función [05:50-06:12]. `catch` acepta argumentos para filtrar qué excepciones y niveles capturar.

## Cuándo usarlo

El video lo posiciona para dos necesidades: depuración cotidiana sin fricción (un import, formato bueno por defecto) y preparación para producción (JSON estructurado, sinks a archivo con rotación, múltiples sinks simultáneos — se pueden sumar handlers con niveles y formatos distintos, p. ej. consola + archivo).

---

**Ver también**: [[loguru]] (entidad-herramienta) · [[logging-en-python]] (concepto).

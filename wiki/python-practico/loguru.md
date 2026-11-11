# Loguru

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 1/7 del lote python-practico).
- **Fuentes**: [[resumen-python-logging-made-easy-with-loguru]].

**Loguru** es una librería Python de logging que se presenta como reemplazo «drop-in» del módulo estándar `logging` (o del uso de `print` disperso). Su tesis de diseño: **un solo logger global, sin instanciación ni configuración obligatoria** — `from loguru import logger` y ya produce salida formateada con timestamp, nivel, scope/módulo y línea.

API central:

- **`logger.add()`**: única función de configuración — sink (destino: consola o archivo), `level` mínimo (por defecto `debug`; existe nivel `trace` oculto hasta bajar el mínimo), `format` con directivas Python y markup de colores.
- **`logger.remove(0)`**: elimina el handler por defecto para empezar de cero.
- **Contexto**: `logger.bind(k=v)` crea un child logger con contexto heredado sin contaminar el global; `with logger.contextualize(...)` modifica `extra` sin nueva instancia.
- **Errores**: `with logger.catch():` o el decorador `@logger.catch` registran excepción + stack trace; acepta filtros de tipo/nivel.
- **Salidas**: `serialize=True` → JSON estructurado (para exporters/collectores); sinks a archivo con rotación, retención y compresión; múltiples sinks simultáneos con niveles/formatos distintos.

Ver también: [[logging-en-python]].

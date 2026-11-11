# Logging en Python: por qué y cómo

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 1/7 del lote python-practico).
- **Fuentes**: [[resumen-python-logging-made-easy-with-loguru]].

## El problema que resuelve el logging

Registrar lo que hace un programa es la diferencia entre depurar con evidencia y depurar a ciegas. Los anti-patrones que la fuente señala: usar `print` por todas partes (sin nivel, sin timestamp, sin destino estructurado) o el módulo estándar `logging` cuya configuración es notoriamente verbosa.

## Qué debe llevar un registro útil

- **Metadatos automáticos**: momento, nivel de severidad (trace/debug/info/warning/error/critical), origen (scope, módulo, línea).
- **Nivel mínimo configurable**: en desarrollo se baja para ver todo (hasta `trace`); en producción se sube para reducir ruido.
- **Contexto correlacionable**: identificadores de negocio (ejemplo de la fuente: `seller_id` + `product_id` en un e-commerce) que permiten filtrar y correlacionar eventos relacionados después. Dos formas de inyectarlo: contexto acotado a un scope (child logger) o contexto temporal por bloque.
- **Excepciones con stack trace completo**, no solo el mensaje.
- **Destinos según ambiente**: consola en desarrollo; archivo con rotación/retención/compresión o formato **JSON estructurado** (para ingestión por exporters/collectores) en producción; múltiples sinks simultáneos con niveles distintos.

## Implementación de referencia en la wiki

La implementación concreta consolidada hasta ahora es [[loguru]], que centraliza toda esta configuración en una sola función (`add()`) frente a la verbosidad del módulo estándar.

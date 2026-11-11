# Celery

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 7/7 del lote python-practico).
- **Fuentes**: [[resumen-7-librerias-de-python-que-usan-los-micro-saas-rentables]] · [[dramatiq]] (la comparación de alternativas).

**Celery** es el estándar Python de **colas de tareas en segundo plano**: saca el trabajo pesado de la petición principal (generar un PDF, enviar un correo, avisar un cobro) y lo ejecuta aparte, sin que el cliente espere — con **reintentos automáticos** si algo falla.

El problema que resuelve, en la versión de la fuente: hacer el trabajo pesado dentro del request hace que «el cliente se quede viendo una pantalla de carga» — si el correo tarda 3 segundos, espera 3 segundos; y si el envío falla, falla toda la petición aunque la factura sí se haya creado. El cambio en el endpoint de [[fastapi|FastAPI]] es **de una sola línea**.

Posicionamiento según las fuentes de la wiki:

- **Celery**: el estándar «más probado en producción real»; la mejor opción para **workflows complejos** (encadenamientos, canvas — fuente 3).
- **[[dramatiq|Dramatiq]] / Taskiq / Arq**: alternativas más livianas para la mayoría de los casos (fuente 3: ~10× más rápidas que RQ; fuente 7 las nombra explícitamente como alternativas a Celery).

Es la pieza 3 de [[micro-saas-con-python]] — el movimiento que separa «lo urgente de lo que puede esperar».

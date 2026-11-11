# Dramatiq

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]].

**Dramatiq** es una librería de **tareas en segundo plano** como alternativa liviana a Celery: «tareas en background sin convertir tu backend en una tesis de sistemas distribuidos». Con unas líneas de configuración y un worker corriendo, reemplaza la infraestructura completa de background jobs: cola, reintentos y gestión de workers.

Cuándo cuál, según la fuente:

- **Dramatiq** para la mayoría de los proyectos (tareas sueltas: enviar mail, procesar, limpiar).
- **Celery** sigue siendo la mejor opción para **workflows empresariales complejos** (esperar N tareas, agregar resultados, encadenamientos — canvas).
- Benchmarks citados: Dramatiq, Arq y Taskiq ~10× más rápidos que RQ (afirmación del canal, no verificada).

Se enmarca en el concepto de [[codigo-de-plomeria]]: la cola de tareas es plomería que no debés reescribir a mano.

# Código de plomería

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]].

## El concepto

«El 80 % del código que escribís no es lógica de negocio: es **plomería**» — validación, serialización, colas, configuración, autenticación: los mismos problemas, los mismos patrones, los mismos bugs, reescritos proyecto tras proyecto. No aporta valor al negocio, pero sin él nada funciona. La pregunta que abre la fuente: ¿por qué seguimos reescribiéndolo?

## El ciclo del dolor (ejemplo marco del canal)

Flask puro → 40 líneas manuales para validar un JSON (tipos, rangos, formatos) con errores ilegibles para el usuario → modelo SQLAlchemy para la DB + modelo Pydantic para la API (el mismo dato en dos clases que hay que cambiar a la vez) → necesidad de tareas en background → tres horas leyendo la documentación de Celery sobre brokers y workers.

## La salida: librerías que eliminan categorías enteras

Cada pieza de plomería tiene una librería madura que la resuelve — las cinco consolidadas de esta fuente: [[pydantic]] (contratos y validación), [[fastapi]] (framework con validación/docs/parsing automáticos), [[sqlmodel]] (un solo modelo para DB y API), [[dramatiq]] (colas y background sin la infraestructura de Celery), [[dynaconf]] (configuración explícita multi-entorno). El criterio: **escribir menos código con mejor apalancamiento** — «si tu backend se siente pesado, lento y frágil, probablemente no es tu arquitectura: son tus imports».

## Relación con otros hilos de la wiki

Es el espejo backend del pipeline de [[automatizacion-con-python]]: en ambos casos el valor está en la lógica de negocio, y las piezas de infraestructura se compran hechas en vez de reescribirse.

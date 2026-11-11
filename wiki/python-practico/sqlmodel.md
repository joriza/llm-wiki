# SQLModel

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]].

**SQLModel** es la librería del creador de [[fastapi]] que resuelve el doble-modelado clásico: mantener una clase para la DB (SQLAlchemy) y otra para la API ([[pydantic|Pydantic]]) obligaba a cambiar cada campo en dos lugares.

La idea: **una única clase es a la vez modelo Pydantic y modelo SQLAlchemy** — «una sola fuente de verdad». Reemplaza en una pieza: modelo ORM, DTO, esquema de validación y mapeadores de datos. Caso del canal: capa de modelos de más de 1000 líneas reducida a menos de 300.

Características citadas:

- Soporta **SQLAlchemy 2.0** y **Pydantic v2**; async en roadmap.
- Diseñado para los casos de uso más comunes; **no atrapa**: para consultas complejas se mezcla con SQLAlchemy puro.

«Menos código significa menos lugares donde los bugs pueden esconderse» — conecta con el concepto de [[codigo-de-plomeria]].

# Pydantic

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]] · [[fastapi]] (motor de validación).

**Pydantic** es la librería Python de **validación y contratos de datos** por modelos: defines el contrato una vez y obtienes validación de request, coerción de tipos, (des)serialización, documentación y errores coherentes generados automáticamente.

Lo que resuelve según la fuente:

- Formatos inválidos (email), rangos fuera de límites (edad negativa o >130) y tipos incorrectos se detectan o **corrigen automáticamente** (convierte string numérico en número).
- La **v2** (2.2.x) está escrita en **Rust** y es 5-50× más rápida que la v1 (afirmación del canal); «lo más valioso» no es la velocidad sino el contrato único: un solo lugar donde vive la definición del dato.
- «Si tu sistema recibe datos y no usas Pydantic, estás construyendo sobre arena» — tesis de la fuente.

Combinación natural con [[fastapi]] (que lo usa como motor de validación) y [[sqlmodel]] (que unifica el modelo Pydantic con el ORM).

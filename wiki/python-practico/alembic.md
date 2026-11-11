# Alembic

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 7/7 del lote python-practico).
- **Fuentes**: [[resumen-7-librerias-de-python-que-usan-los-micro-saas-rentables]].

**Alembic** es la herramienta de **migraciones de esquema** para SQLAlchemy (del mismo ecosistema): versiona cada cambio de esquema de la base de datos «como un commit de Git» — dos comandos, **reversible y documentado**.

El anti-patrón que resuelve (documentado en la fuente con consecuencias reales): agregar una columna editando la tabla directamente en producción con clientes reales — en el caso citado se rompió el sistema de facturas y **se perdieron los datos de dos clientes** en una semana.

En el stack de [[micro-saas-con-python]], Alembic es la mitad de la pieza de datos junto a SQLAlchemy: la tabla se trata como objeto Python y su **evolución queda scriptada y reversible** — la base de datos como «algo vivo que puede cambiar sin romperse», no como algo que nunca va a cambiar.

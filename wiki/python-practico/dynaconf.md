# Dynaconf

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-hacen-que-el-resto-sea-innecesario]].

**Dynaconf** centraliza la **configuración** de proyectos Python — el «fin del caos» de archivos `.env`, variables de entorno, valores hardcodeados y secretos esparcidos que solo funcionan en una máquina.

Qué da según la fuente:

- **Entornos** first-class: development / staging / producción.
- **Casting de tipos automático** de variables de entorno.
- **Separación de secretos** y soporte para Vault y Redis como backends.
- v3.2: lee **TOML, YAML, JSON, INI y archivos Python**; extensiones nativas para Flask y Django.

El argumento que la justifica: los bugs de configuración son los más difíciles de depurar porque **no fallan ruidosamente** — Dynaconf los vuelve explícitos. Otro ejemplo de [[codigo-de-plomeria]] eliminado por una librería.

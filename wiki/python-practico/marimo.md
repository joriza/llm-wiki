# Marimo

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 5/7 del lote python-practico).
- **Fuentes**: [[resumen-estas-5-librerias-de-python-parecen-demasiado-poderosas]].

**Marimo** es la librería de **notebooks reactivos de Python** para quienes gustan del flujo de Jupyter pero buscan algo más reproducible y convertible en aplicación.

Tres diferencias con el notebook clásico:

1. **Reactividad real**: entiende las dependencias entre variables — cambiás un valor y cada celda que depende de él se actualiza automáticamente (las celdas no son bloques aislados ejecutables en cualquier orden).
2. **Formato `.py` normal**: el notebook se guarda como archivo Python plano, no en un formato propietario — facilita versionarlo con Git, revisar cambios, reutilizar código y ejecutarlo como cualquier programa.
3. **Widgets interactivos** (deslizadores, menús, tablas, gráficos, formularios) dentro del notebook — y el mismo archivo puede funcionar como **aplicación web interactiva**.

En una frase de la fuente: «algo entre un notebook de Python, un entorno de programación reactivo y un framework de apps liviano».

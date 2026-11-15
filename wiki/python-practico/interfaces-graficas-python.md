# Interfaces gráficas en Python

- **Tipo**: página de concepto (transversal al dominio `python-practico/`).
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes que la alimentan**: [[resumen-curso-de-kivy-con-python-hola-mundo]] · [[resumen-como-crear-aplicaciones-moviles-con-python-con-kivy]] (Kivy ×2) · [[resumen-flet-python-build-a-cross-platform-app]] (Flet ×1).

## Dos generaciones documentadas

- **Kivy** (2021): multiplataforma hasta Android/iOS vía **OpenGL + Cython**; patrón `App`/`build()`/`run()` y el **lenguaje de plantillas KV** (main.kv) para separar vista de lógica (convención `MainApp`→`main.kv`); instalación de la época con Wheels pre-PyPI. Sin sistema de layout moderno; todo posicional o en KV.
- **Flet** (2025): delega el renderizado en **Flutter**, todo en Python puro, un código para escritorio/móvil/web; widgets declarativos con estilos por propiedades (`ft.colors`, `keyboard_type`), eventos `on_change`/`on_click` y el **imprescindible `page.update()`** tras cada cambio de estado. Metodología recomendada del corpus: UI primero, funcionalidad después.

## Contraste y recomendación implícita

| | Kivy | Flet |
| -- | ------ | ------ |
| Render | OpenGL propio | Flutter |
| Vista | Plantillas KV | Código Python |
| Web | No nativo | Sí, mismo código |
| Estado | Manual en KV/bindings | Evento → recálculo → `page.update()` |

El corpus no declara un ganador (Kivy aparece 4 años antes); la línea temporal sugiere que Flet representa el estado del arte del enfoque «todo-Python», en el mismo espíritu del hilo web de [[frameworks-web-python]] (Reflex/ReactPy/FastHTML). Tkinter/PyQt solo aparecen de pasada en el mapa de librerías ([[resumen-descubre-las-mejores-librerias-python-en-15-minutos]]) — laguna abierta: ningún tutorial de GUI clásica de escritorio.

# Flet + Python: Build a Cross-Platform App (Desktop | Mobile | Web) in 30 Minutes

- **Fuente**: [[../../raw/python-practico/2025-10-30-flet-python-build-a-cross-platform-app-desktop-mobile-web-in-30-minutes.md|2025-10-30-flet-python-build-a-cross-platform-app-desktop-mobile-web-in-30-minutes.md]]
- **Canal**: Code with Josh
- **Publicado**: 2025-10-30
- **Dominio**: `python-practico/`
- **Tipo**: resumen de fuente (tutorial, 30 min, inglés ASR)
- **Tema**: primer contacto con **Flet**, framework de interfaces multiplataforma (escritorio/móvil/web) en Python puro; demo: conversor de temperatura.

## Qué es Flet

Flet construye aplicaciones con **Python puro, sin HTML/JS**: internamente se apoya en **Flutter** para el renderizado, por lo que el mismo código corre como app de escritorio, móvil o web. A diferencia de otros frameworks de UI en Python (PyQt, Tkinter), su modelo está pensado para apps «tipo móvil». El ASR del vídeo transcribe «Flet» como «flat» — normalizado aquí.

## Qué construye el tutorial

Un conversor de temperaturas (Celsius ↔ Fahrenheit ↔ Kelvin) que cubre el ciclo básico de Flet:

1. **Estructura**: una función `main(page)` que recibe la clase `page`; configuración de la ventana con `theme_mode`, ancho y alto de lanzamiento; arranque con `ft.app(target=main)`.
2. **Widgets y layout**: `TextField` (con `keyboard_type` numérico, estilos de borde/color), `Text`, `ElevatedButton` (botón de limpieza con icono), y contenedores de composición — `Column`, `Row` y el padding de `page.add` — con `expand` para repartir espacio.
3. **Estética primero**: consejo metodológico del canal — montar toda la UI antes de la funcionalidad; la documentación de Flet se consulta en vivo para propiedades (alineación, colores `ft.colors`, fuentes).
4. **Estado y eventos**: funciones `convert_to_celsius`/`convert_to_kelvin` que leen `value` de los inputs, recalculan las tres escalas y actualizan el estado; **`page.update()` es imprescindible** para que la UI refleje los cambios (sin él, nada se pinta); manejo de entradas inválidas con mensaje de error; eventos `on_change` en los campos y `on_click` en el botón.

## Valor y contexto

- Primera fuente de **Flet** en el dominio y ampliación del hilo GUI/multiplataforma: frente a Kivy ([[resumen-curso-de-kivy-con-python-hola-mundo]], [[resumen-como-crear-aplicaciones-moviles-con-python-con-kivy]]) — OpenGL propio y lenguaje de plantillas KV —, Flet delega en Flutter y hace todo en Python; frente al hilo web (Flask/FastAPI/[[resumen-como-crear-una-web-con-python-desde-cero|Reflex]]/ReactPy/FastHTML), ofrece la misma promesa «todo-Python» pero orientada a app, no a sitio web.
- Reactivo simple: sin sistema de estado declarativo; el patrón es evento → recalcular → `page.update()` (contraste con Reflex/ReactPy, que sí lo son).
- Patrocinio/promoción propia excluidos del resumen (segmento de cohortes y masterclass del canal en 06:27 y cierre).

## Citas al original

Todas las afirmaciones provienen de `raw/python-practico/2025-10-30-flet-python-build-a-cross-platform-app-desktop-mobile-web-in-30-minutes.md` (transcripción automática; marcas de tiempo en el original).

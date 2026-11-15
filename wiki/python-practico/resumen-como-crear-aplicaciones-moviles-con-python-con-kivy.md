# Resumen: Cómo crear aplicaciones móviles con Python de forma rápida y sencilla con Kivy

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-08-21-como-crear-aplicaciones-moviles-con-python-de-forma-rapida-y-sencilla-con-kivy.md` (video en español, subtítulos **manuales** — sin garbiñeos de ASR) — https://www.youtube.com/watch?v=vjTdtBW3CtE — Argonauta digital, 2021-08-21 (13:47). Nota: el canal pronuncia «Kibii» (Kivy); introducción de una serie que continúa con KivyMD y exportación a APK.

## Kivy: alcance y arquitectura

Librería de interfaces de usuario multiplataforma: Linux, Windows, macOS, **Android, iOS** y Raspberry Pi, con soporte táctil; la exportación a Android (APK) es el gancho principal para apps móviles rápidas en Python [00:00-00:56]. Por debajo usa **OpenGL** con código compilado en C vía **Cython**: apps de 10-14 MB pero rápidas; al arrancar se ve la inicialización de OpenGL (GPU) y el loop principal de eventos/renderizado [02:39-04:34].

## Hello world y separación vista/lógica con el lenguaje KV

Mismo patrón mínimo que el curso de Kivy anterior: clase que hereda de App, `build()` retorna el widget raíz (`Label`), instanciar y `.run()` [02:03-04:34]. La aportación de este video es el **lenguaje de plantillas KV** (archivo `main.kv`): `BoxLayout` con orientación vertical conteniendo un `Label` y un `Button`, con indentación estilo Python; la idea explícita es **separar la parte gráfica de la lógica de negocio** [05:21-08:36]. Convención de carga automática: Kivy usa el nombre de la App para detectar el `.kv` correspondiente (clase `MainApp` → `main.kv`); sin build() propio, la plantilla se renderiza sola [10:07-12:10].

## Eventos desde la plantilla

Los eventos se pueden cablear dentro del propio KV: `on_release` del botón cambia `text` del label por su identificador — sistema de eventos similar al de JavaScript; la clase `Root` hereda de BoxLayout para que la plantilla la instancie [12:10-13:03]. Resultado: ~9 líneas Python + ~12 KV. Tip de entorno: linkear el venv al intérprete de VS Code para recuperar autocompletado. Se menciona **KivyMD** como wrapper con estilos Material Design y API algo más sencilla, para capítulos siguientes.

## Dónde encaja en la wiki

Segunda fuente Kivy del dominio y complemento natural de [[resumen-curso-de-kivy-con-python-hola-mundo]] (mismo patrón App/build/run, aquí con el valor añadido del lenguaje KV y el salto a móvil/APK). La separación plantilla/lógica es homóloga a la de Jinja 2 en Flask ([[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]]) y la declaración de UI con eventos a Flet (fuente pendiente de la playlist). Nota de época: análisis de tamaño/rendimiento de 2021; hoy Buildozer/p4a siguen siendo la vía Android.

---

**Ver también**: [[resumen-curso-de-kivy-con-python-hola-mundo]] · [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]].

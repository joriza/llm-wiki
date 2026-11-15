# Resumen: ReactPy Tutorial — Aplicaciones Frontend creadas con Python

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2023-06-27-reactpy-tutorial-aplicaciones-frontend-creadas-con-python.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «read pibe/read pay/read Pipe/riad/pay read/read five/reapai»→ReactPy, «fase ipi/fase y pi/fácil»→FastAPI, «flash»→Flask, «starlet/starlets»→Starlette, «bach/booking/debugeado/debajo»→debug, «fake ellos»→hooks, «ius»→useState, «eledis/ley/ LG/lg/lli/veles»→`<li>`/`<ul>`, «DIF»→div, «joystick Fight contenga»→justify-content, «Skype Blue»→skyblue, «giungo»→Django, «flat/flatter»→Flutter, «Local House»→localhost, «sempo»→sample) — https://www.youtube.com/watch?v=EE3wnE0nb4U — Fazt Code, 2023-06-27 (38:31).

## ReactPy: frontend estilo React escrito en Python

Tutorial introductorio de **ReactPy**, biblioteca relativamente nueva (2023, documentación aún en construcción) que permite crear interfaces web con componentes, estado y eventos de navegador **desde código Python**, al estilo de React. El autor la compara más con Flutter/Dart que con JSX: funciones con propiedades dentro de funciones, no DSL de etiquetas. Requisitos previos que pide: bases de Python **y** de React (hereda sus conceptos: componentes, props, keys, hooks).

- **Arquitectura servidor**: ReactPy no vive solo — **requiere un framework de backend** que sirva la app (FastAPI, Flask, Starlette, Django — este último «más tedioso de configurar»; sin framework hay que escribirlo). El estado y los eventos viajan por **WebSockets** entre navegador y servidor: el «frontend» se ejecuta en el backend, algo visible al imprimir en consola del servidor al hacer clic.
- **Componentes**: función Python decorada con `@component` que retorna `html.h1(...)`, `html.div(...)`, etc. (el módulo `html` expone todas las etiquetas HTML). Propiedades de etiquetas en diccionarios (`{"src": ..., "alt": ...}`, `style` como sub-diccionario con claves camelCase: `width`, `backgroundColor`, `display: flex`, `justify-content: space-between`).
- **App demo — lista de tareas**: datos como lista de dicts (`id`, `text`, `priority`); render de lista recorriendo y acumulando `html.li` (con advertencia de React sobre **keys** únicas por elemento, resuelta con la propiedad `key`), extracción del ítem a componente `Task` con **props**, estilo condicional por prioridad (`if/else` de Python dentro del componente), f-strings para concatenar datos en el texto y unicode para iconos.
- **Eventos y estado**: handler `handle_click(event)` pasado en el diccionario de propiedades del botón (`onClick`); **hooks de React disponibles**: `hooks.useState(0)` → `[counter, set_counter]`, contador incremental por clic, estado aislado por componente. Debug mode propio (`reactpy.debug`) que identifica qué componente falla.

## Veredicto del autor y dónde encaja en la wiki

Aún en desarrollo, sin documentación completa, pero «usable» para interfaces sencillas; prometedor y pendiente de adopción. En el hilo Python-para-web del dominio queda como alternativa a Reflex ([[resumen-como-crear-una-web-con-python-desde-cero]] — que comparte la tesis todo-Python pero con su propio framework y ecosistema), con backend FastAPI/uvicorn idéntico al del primer tutorial de API ([[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]]). El mapa de frameworks web de [[mapa-del-ecosistema-python]] y [[codigo-de-plomeria]] (componentización para no repetir) lo recogen; nota de época 2023: biblioteca inmadura, cuyo estado actual habría que verificar.

---

**Ver también**: [[resumen-como-crear-una-web-con-python-desde-cero]] · [[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]] · [[mapa-del-ecosistema-python]].

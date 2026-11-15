# Resumen: Cómo crear una WEB con PYTHON desde CERO

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2023-11-30-como-crear-una-web-con-python-desde-cero.md` (directo en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «refles/refres»→Reflex, «bersell/versel/verser»→Vercel, «giop/giam/giha/giam»→GitHub, «nes.css/nest SS/nest»→NES.css, «spans»→span, «predeterminado» etc.; «paisa/pasar» no aparecen aquí) — https://www.youtube.com/watch?v=h8Tn0ITRoQs — MoureDev TV, 2023-11-30 (192:24, directo de comunidad: calendario de adviento, web retro Pixel Art con NES.css, desplegada en adviento.de).

## Reflex: web fullstack 100 % en Python

El framework central del tutorial es **Reflex** (open source, versión 0.3.4/0.3.2 de la época), presentado con tres motivos: toda la web se programa en Python puro — ni HTML ni JavaScript, incluso el CSS se escribe desde Python; se apoya en tendencias actuales; y cubre frontend y backend con el mismo framework. Página = función Python que retorna componentes (`rx.`): `rx.box` (~un div), `rx.text`, `rx.link`, `rx.image`, `rx.heading`, stacks H/V para layout, `rx.foreach` para iterar, `rx.cond` para condicionales y `rx.script` para ejecutar JavaScript externo.

- **Proyecto**: entorno virtual + `pip install reflex`, `reflex init` (template en blanco), `reflex run` con hot reload en puerto 3000; estructura de carpetas `components/` (piezas pequeñas reutilizables: botón, icono-enlace, cabecera con icono), `views/` (vistas grandes: navbar, header, footer, instrucciones, calendario, autor) y `styles/` (colores, fuentes, tamaños como **enums tipados** + diccionarios de estilo reutilizables). Constantes de URLs en `constants.py`.
- **Estilado**: hojas de estilo externas vía `styleSheets` (NES.css desde CDN y Google Fonts con `display=swap`), estilos globales por componente (`rx.link`, `rx.heading`) y diccionarios CSS-in-Python; media queries responsive mediante listas por breakpoint (`flexDirection: column→row`, `rx.responsive_grid` con columnas 3→6), `rx.mobile_only`/`rx.tablet_and_desktop` para contenido condicional por dispositivo.
- **Detalles de oficio**: accesibilidad (alt en toda imagen, tamaño relativo em, lang del documento vía script), z-index/position sticky en navbar, `aspect-ratio:1` para celdas del calendario, `!important` como último recurso, depuración en vivo de hovers que Reflex no aplicaba (bug de la versión 0.3.4; downgrade a 0.3.2 — «la vieja confiable»).
- **Integración puntual de JavaScript**: cuenta atrás (`countdown.js` con `setInterval` que pinta en un elemento por `id`) y efecto nieve (`snow.js` de código abierto, parametrizable: copos, velocidad, auto-start, pausa al perder foco). Tesis del tutorial: Python y JS se mezclan sin fricción cuando falta un componente nativo.
- **Producción**: `.gitignore` (venv, directorio `web/` generado), script `build.sh` que activa venv, instala requirements, `reflex export --frontend-only` y deja el HTML/CSS/JS en `public/` (commiteado a propósito para desplegar sin build); **despliegue en Vercel** conectando el repo de GitHub, carpeta `public` como salida, dominio customizado con registro A + CNAME en el proveedor DNS, certificado SSL automático y nota de que la propagación DNS puede tardar 24-48 h; cada push a main dispara re-deploy automático (CI/CD implícito de Vercel).

## Dónde encaja en la wiki

Primera fuente de Reflex del dominio y contrapunto moderno 2023 de los tutoriales Flask 2020-2021 ([[resumen-como-funciona-flask-python-mvc]], [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]]) y del primer FastAPI ([[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]]): el mapa de frameworks web de [[mapa-del-ecosistema-python]] (Django prefabricado / Flask ladrillos / FastAPI API rápida) gana una cuarta columna — Reflex como «frontend+backend todo-Python». También toca [[codigo-de-plomeria]] (enums tipados, constantes, componentes reutilizables para no repetir) y añade el tema despliegue web (Vercel + dominio + DNS), hasta ahora ausente del dominio.

---

**Ver también**: [[mapa-del-ecosistema-python]] · [[resumen-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero]] · [[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]].

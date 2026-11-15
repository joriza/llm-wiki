# Frameworks web en Python

- **Tipo**: página de concepto (transversal al dominio `python-practico/`).
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes que la alimentan**: [[resumen-como-funciona-flask-python-mvc]] · [[resumen-creando-una-api-flask-python-super-facil]] · [[resumen-tutorial-flask-framework-de-python]] (Flask ×3) · [[resumen-crea-web-apis-con-python-y-fastapi-paso-a-paso]] · [[resumen-curso-completo-de-python-desde-cero-para-backend]] · [[resumen-fastapi-de-un-script-a-microservicios-en-5-etapas]] (FastAPI ×5) · [[resumen-como-crear-una-web-con-python-desde-cero]] · [[resumen-reactpy-tutorial-aplicaciones-frontend-creadas-con-python]] · [[resumen-fasthtml-el-nuevo-framework-para-crear-webs-con-python]] (frontend todo-Python ×3) · [[resumen-la-masterclass-de-python-django-git-produccion]] (Django ×1).

## El espectro, de más a menos «batteries»

| Framework | Enfoque | El corpus lo muestra como |
|-----------|---------|---------------------------|
| **[[django]]** | Full-stack con plantillas server-side, ORM, admin, MTV | El «todo incluido»: la única fuente que trae auth, carrito y despliegue completos |
| **Flask** (ver [[flask]]) | Microframework con Jinja 2 | «Ladrillos sueltos»: MVC manual, el corpus lo usa para aprender la mecánica sin magia |
| **[[fastapi|FastAPI]]** | APIs modernas con type hints | «API rápida con docs automáticas»: estado del arte para servicios; el corpus acumula 5 fuentes (de «hola mundo» a microservicios) |
| **Reflex** | Frontend+backend 100 % Python (compila a Next.js) | Primera fuente de despliegue web completo (Vercel/DNS/SSL) |
| **ReactPy** | Componentes estilo React en Python (eventos por WebSocket) | Alternativa a Reflex; documentación aún incompleta (2023) |
| **FastHTML** | Web 100 % Python sobre htmx | Noticia de efervescencia 2024; más inmaduro que Reflex |

## Contrastes que fija el corpus

- **MVC vs MTV**: los tutoriales de Flask enseñan MVC manual (modelo/vista/controlador separados a mano); Django reorganiza en **MTV** — la «vista» de Django describe qué datos se envían (no su presentación) y el controller desaparece, asumido por el framework. El curso de Django advierte que la re-nominación confunde al venir de MVC.
- **Validación**: Flask no valida nada (formularios a mano en el tutorial integral); FastAPI convierte los **type hints** en validación automática (422 si el tipo no coincide) — el tema que [[codigo-de-plomeria]] llama «eliminar plomería».
- **Qué hacer con más tráfico**: [[resumen-fastapi-de-un-script-a-microservicios-en-5-etapas]] da la respuesta del corpus — modularizar routers y **no** pasar a microservicios hasta que duela por una razón medible (testimonio inverso de Prime Video).
- **Hilo todo-Python-para-web**: Reflex/ReactPy/FastHTML comparten la tesis «mismo lenguaje en los dos lados» (espejo inverso del JS navegador→servidor de la década 2010); en 2023-2024 el más maduro era Reflex.

## Despliegue (tres variantes documentadas)

1. **Deta** (curso FastAPI MoureDev, 2023, nota de época: Python 3.9 máx).
2. **Vercel** con dominio propio + DNS + SSL (web Reflex).
3. **PaaS con migraciones en servidor** y secretos en variables de entorno (tienda Django, 2025).

## Contradicciones / tensiones

- «Python es lento para web»: desmentido explícito en el curso FastAPI (mito de hace una década; 3.11 ≈ +60 %) frente a la insistencia histórica del mito — tratado como opinión desactualizada.
- Flask «aún va a ser mejor que Flask»: la preferencia por FastAPI en el corpus (3 menciones comerciales + 5 tutoriales) no es consenso neutral — refleja el sesgo de época 2021-2025 de los canales; Django aparece en 2025 como reaparición del full-stack.

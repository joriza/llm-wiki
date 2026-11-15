# Flask

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes**: [[resumen-como-funciona-flask-python-mvc]] (MVC) · [[resumen-creando-una-api-flask-python-super-facil]] (API REST) · [[resumen-tutorial-flask-framework-de-python]] (tutorial integral con Jinja 2/flask-mysqldb).

**Flask** es un microframework web de Python: el corpus lo usa como vehículo para aprender la mecánica web «sin magia» — MVC organizado a mano, rutas con `@app.route(methods=...)`, plantillas **Jinja 2** con herencia, y extensión `flask-mysqldb` para persistencia en el tutorial integral (UskoKruM2010, con dynaconf para la configuración).

En la taxonomía del dominio (ver [[frameworks-web-python]]), Flask ocupa el escalón intermedio: más que FastAPI en plantillas/full-stack potencial, menos que [[django]] en baterías incluidas. El corpus acumula 3 tutoriales (2020) y los contrasta sistemáticamente con FastAPI (docs automáticas, validación por type hints) — la comparación sesga a época pero sirve para entender qué aporta cada framework.

Lagunas: ninguna fuente cubre blueprints a escala ni testing de Flask.

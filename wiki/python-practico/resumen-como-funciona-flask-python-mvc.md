# Resumen: Cómo funciona Flask (Python) MVC

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-02-04-como-funciona-flask-python-mvc.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «plástico/flash/plazos/comparten»→Flask, «payton/paita»→Python, «es igual al químico/igual al kim»→SQLAlchemy, «de ira veis jury»→database URI, «cruz»→CRUD, «modo de bar/bach»→modo debug, «voz/foro»→bucle for de Jinja, «de punto create ol»→`db.create_all`) — https://www.youtube.com/watch?v=2bXBe-UMTsU — Ingeniería Web (Daniel, Universidad de las Américas), 2020-02-04 (~23 min). Video académico de la materia Ingeniería Web; código del proyecto en GitHub (enlazado en el video).

## El objetivo

Aplicación MVC mínima con Flask: desplegar en pantalla el resultado de una consulta entre dos tablas SQLite (usuarios y bonos, unidas por el campo departamento) mostrando el nombre del usuario y el bono que le corresponde.

## Estructura MVC del proyecto

- **Modelo** (`modelos.py`): clases `Usuario` y `Bono` que heredan de `db.Model` (SQLAlchemy) — id entero como clave primaria, nombre/departamento string, cantidad decimal(10,2).
- **Vista** (`templates/index.html`): HTML con Bootstrap y bucle `for` de **Jinja** sobre la lista de listas `[nombre, monto]` enviada por el controlador.
- **Controlador** (`controlador.py`): intermediario entre vista y modelo; ruta `@app.route('/')` → función que consulta `Usuario.query.all()` y `Bono.query.all()`, junta en Python (comparación de departamentos, acumulador por usuario) y llama `render_template('index.html', list=...)`.

## Detalles de configuración e infra

- `app.config`: `SECRET_KEY` (aquí cualquiera, en producción clave complicada) y `SQLALCHEMY_DATABASE_URI` apuntando al archivo `video.db`.
- Tablas creadas desde la consola interactiva de Python con `db.create_all()`; datos insertados con SQL directo (`INSERT INTO` en sqlite3) — el video menciona CRUD alternativo por interfaz.
- Arranque: `if __name__ == '__main__': app.run(debug=True)` — el modo debug reinicia el servidor al guardar, útil mientras el proyecto crece.
- Trampas mostradas honestamente: importar el controlador **después** de declarar `app` (lo usa para las rutas); activar el entorno virtual antes de tocar Flask; y un bug real del autor (lista sin `.append`, solo guardaba el último elemento) encontrado y corregido en vivo.

## Dónde encaja en la wiki

Primer tutorial de framework web del dominio: complementa [[mapa-del-ecosistema-python]] (Flask aparece catalogado) y la nota de diseño desacoplado de módulos de [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]] (el MVC es ese desacoplamiento aplicado a web). El ORM/SQLite aquí contrasta con el MongoDB/PyMongo de [[resumen-mongodb-crash-course-with-python-2022]] (dos paradigmas de persistencia). Nota de contenido: autor estudiante, nivel introductorio; la lógica de join hecha en Python puro (no en SQL) es didáctica, no idiomática.

---

**Ver también**: [[mapa-del-ecosistema-python]] · [[resumen-videotutorial-8-taller-practico-funciones-modulos-y-paquetes]] · [[resumen-mongodb-crash-course-with-python-2022]].

# Resumen: Tutorial Flask: Framework de Python para Aplicaciones Web (Desde Cero)

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-06-14-tutorial-flask-framework-de-python-para-aplicaciones-web-desde-cero.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «flash/plazos»→Flask, «payton»→Python, «línea 2»→Jinja 2, «wear psuv»→Werkzeug, «pine-sol»→pip install, «publish/tíflis»→pip list, «back mofo/de bach»→debug, «huéle»→ul, «in that»→for in, «ent ford/ent if»→endfor/endif, «url foro/url ford»→url_for, «pib install flash y mysql div»→pip install flask-mysqldb, «ábaco»→Ábaco (nombre de la BD), «json ifai»→jsonify, «fecha all»→fetchall, «quart y stream»→query string, «rico»→request, «rey direct»→redirect, «at y url root»→add_url_rule, «registrar error wrangler»→register_error_handler) — https://www.youtube.com/watch?v=-1DmVCPB6H8 — UskoKruM2010 - Programming Courses, 2021-06-14 (48:26). Nota: canal peruano, curso gratuito de Python de más de 60 videos citado como prerrequisito.

## App mínima y modo debug

Entorno virtual (`virtualenv env` + `env/Scripts/activate`) con Flask, **Jinja 2** y **Werkzeug** (utilidades WSGI, también para hashing de contraseñas) [01:04-02:54]. `Flask(__name__)` + `if __name__ == '__main__': app.run()` sirve en 127.0.0.1:5000; con `debug=True` los cambios se recargan solos (sin él hay que detener y relanzar con Ctrl+C) [03:20-08:59].

## Vistas, rutas y plantillas Jinja 2

Vista = función decorada con `@app.route('/')` [05:44]. Las respuestas HTML viven en la carpeta **`templates/`** (nombre fijo que Flask reconoce) y se devuelven con `render_template('index.html')` [09:58-11:54]. Contenido dinámico: se pasa un diccionario `data` a la plantilla y Jinja lo interpola con `{{ data.titulo }}`; soporta bucles `{% for c in data.cursos %}` con `endfor` y condicionales `{% if %}…{% else %}…{% endif %}` (demo con una lista de cursos y su `len`) [12:22-17:52].

## Herencia de plantillas y estáticos

**Layout** reutilizable: `layout.html` con `{% block title %}` y `{% block body %}`; las plantillas hijas extienden con `{% extends 'layout.html' %}` y rellenan solo sus bloques — estilos globales en el layout se heredan a todas [18:22-21:42]. Recursos estáticos en la carpeta **`static/`** (css/, js/), enlazados con `{{ url_for('static', filename='css/layout.css') }}` — Jinja resuelve la ruta sin escribirla [22:12-25:18]. Tip práctico: Ctrl+F5 / Ctrl+Shift+R para saltar la caché al probar cambios [21:15].

## URLs dinámicas, query string y manejo de errores

- **Parámetros de ruta**: `@app.route('/contacto/<nombre>')` (y `<int:edad>`) con la vista recibiendo el parámetro por el mismo nombre; útil para perfiles de usuario sin una URL por persona [25:46-29:45].
- **Query string**: `request.args.get('param1')` tras `?param1=jose&param2=39`; `request` se importa de Flask y los args son un diccionario inmutable. Alternativa de registro sin decorador: `app.add_url_rule('/query-string', view_func=…)` [30:13-34:10].
- **Error 404**: vista `pagina_no_encontrada(error)` que renderiza `404.html`, registrada con `app.register_error_handler(404, …)`; alternativa mostrada: `redirect(url_for('index'))`. Error didáctico: la plantilla 404 no puede usar `data.titulo` si la vista no se la pasa [34:40-39:08].
- **Before/after request**: decoradores `@app.before_request` y `@app.after_request(response)` para lógica que rodea cada petición (el after debe retornar la response) [39:08-40:40].

## Conexión a MySQL (flask-mysqldb)

`pip install flask-mysqldb`; configuración en `app.config` (host localhost, usuario, clave, nombre de BD «Ábaco») y `mysql = MySQL(app)` [41:35-43:04]. Ruta `/cursos` como mini-API JSON: `cursor = conexion.cursor()`, `cursor.execute(sql)` con `SELECT … ORDER BY nombre`, `fetchall()`, todo dentro de try/except con mensaje éxito/error, y retorno con `jsonify(data)` [43:31-47:00]. Los resultados llegan como tuplas anidadas; el canal sugiere renderizarlos también en plantilla Jinja con for. Buena práctica del video: validar la consulta SQL en phpMyAdmin antes de meterla al código [45:31].

## Dónde encaja en la wiki

Tercera fuente Flask del dominio y la más completa como tour de framework: cubre lo que las anteriores dejan implícito — herencia de plantillas, estáticos con url_for, manejo de 404 y before/after request ([[resumen-como-funciona-flask-python-mvc]], [[resumen-creando-una-api-flask-python-super-facil]]). La vía SQLAlchemy del MVC contrasta con flask-mysqldb crudo aquí (cursor manual, tuplas, sin ORM); la ruta JSON de `/cursos` es un mini-paso hacia la API REST de Damian Sire. El token/credenciales en `app.config` en texto claro anticipa la necesidad de gestión de secretos ([[dynaconf]]).

---

**Ver también**: [[resumen-como-funciona-flask-python-mvc]] · [[resumen-creando-una-api-flask-python-super-facil]] · [[dynaconf]].

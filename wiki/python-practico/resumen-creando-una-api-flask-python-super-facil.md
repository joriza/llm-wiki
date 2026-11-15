# Resumen: Creando una API Flask Python — Super fácil — Ven y crea tu primer API

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-01-26-creando-una-api-flask-python-super-facil-ven-y-crea-tu-primer-api.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «recuerda/recuesta/recuerdo»→request, «responsable»→response, «lápiz»→APIs, «doble vez se es eje y»→WSGI, «portman/bousman/pos mal»→Postman, «de bach/modo de book»→modo debug, «barra pp de 1 y users»→`/app/v1/users`, «vas con el patrón de corrector»→patrones de diseño) — https://www.youtube.com/watch?v=6Otaw6XhXf0 — Damian Sire Desarrollo, 2021-01-26 (~22 min, parte 1). Primer video práctico de la serie de APIs del canal, sobre la teoría cliente-servidor ya dada en videos previos.

## Repaso de base: request/response y WSGI

Repaso del ciclo cliente→servidor (request de ida, response de vuelta, status HTTP, pestaña Network del navegador). Flask se presenta como el objeto que implementa **WSGI** (Web Server Gateway Interface): desglosa el acrónimo — WS de web service, GI de interfaz, G de *gateway* como puerta de enlace y gestor de rutas. Se crea la app con `app = Flask(__name__)` (el `__name__` indica el namespace donde corre) y se levanta con `app.run(host, port, debug=True)` — debug explica por qué el servidor arranca en modo desarrollo; el puerto por defecto es 5000 en 127.0.0.1.

## Primera API funcional con Flask

- **Ruta con decorador**: `@app.route('/app/v1/users')` — nomenclatura de API REST (url base + nombre de la API + versión en v1 + recurso); los decoradores se ejecutan al final, tras cargar todo.
- **Controlador**: la función bajo el decorador (`users_action`) recibe el request, imprime en consola y retorna la respuesta («tu usuario»): primera API «totalmente inútil pero funcional».
- **Pruebas con Postman**: cliente de prueba para pegarle a `127.0.0.1:5000/app/v1/users` y ver request/response en vivo.
- **Parámetros de ruta**: `/users/<user_id>` — el valor llega a la función; trampa señalada en vivo: **el parámetro llega como string** (comparar `user_id == '8'`, no `== 8`).
- **Métodos HTTP**: por defecto la ruta solo acepta GET; un POST da 405 (método no permitido). Se habilitan con `@app.route(..., methods=['GET', 'POST'])`; DELETE sin declarar sigue dando 405.
- **Objeto `request`**: `from flask import request` da acceso a toda la información del pedido (URL, método, body, headers); se imprime para inspección.
- Errores cometidos y corregidos en vivo: import equivocado (`from flask import request`, no otro objeto), mayúsculas/minúsculas del objeto request.

## Dónde encaja en la wiki

Segundo tutorial de Flask del dominio y primero de APIs REST: el MVC de [[resumen-como-funciona-flask-python-mvc]] muestra la app entera (con vistas y ORM); este enseña la cara API pura (rutas, métodos, request/response, Postman) que la fuente de scraping de [[resumen-como-hacer-web-scraping-con-python]] consumía desde el otro lado (como cliente de APIs ajenas). Los endpoints GET-only de PokéAPI ([[resumen-taller-consumir-apis-con-python-poke-api]]) son exactamente las rutas que aquí se construyen.

---

**Ver también**: [[resumen-como-funciona-flask-python-mvc]] · [[resumen-como-hacer-web-scraping-con-python]] · [[resumen-taller-consumir-apis-con-python-poke-api]].

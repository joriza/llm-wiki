# Resumen: 9. Taller consumir APIs con Python — Poke API

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2017-02-25-9-taller-consumir-apis-con-python-poke-api.md` (video en español; transcripción por subtítulos automáticos; garbiñeos normalizados solo aquí: «recueste»→requests, «poke up/app y»→PokéAPI, «john ford»→endpoint, «bale o at»→`value =` / evaluación, «marx»→`params`, «responso»→response, «road input»→`raw_input`, «look de f-8»→UTF-8) — https://www.youtube.com/watch?v=oExagoikAZ8 — codigofacilito, 2017-02-25 (~09:30). Taller 9 de la serie del canal; continuación del tratamiento de la librería requests.

## La API de práctica: PokéAPI

API pública y gratuita para obtener información de Pokémon (nombre, ubicación, ataques, evoluciones). Solo permite GET (solo lectura), devuelve JSON y su contenido está en inglés; el canal la recomienda como banco de práctica. Un *endpoint* es simplemente una URL: `https://pokeapi.co/api/v2/pokemon` devuelve la lista paginada (913 Pokémon en 2017, de a 20 por página vía `?offset=N`).

## Patrón de consumo que enseña el taller

1. `requests.get(url)` y control explícito de estado: continuar solo si `response.status_code == 200`; entonces `response.json()`.
2. Explorar el JSON desde el navegador antes de programar: objeto con `count`, `previous`, `next` y `results` (lista de objetos con `name` y `url`).
3. `dict.get(clave, [])` como acceso defensivo: si la clave no existe, devolver lista vacía y evitar el fallo.
4. Listado con `for pokemon in results: print(pokemon['name'])`.
5. Paginación recursiva: función `get_pokemons(url, offset=0)` que pasa `offset` en `params` de requests y suma 20 por llamada, preguntando al usuario por terminal si continúa (formato con `lower()`, corrección del error de decodificación ajustando el encoding a UTF-8).

Nota de época: el código es **Python 2** (`print name`, `raw_input`) — los patrones (status_code, json(), params, dict.get, paginación por offset) se trasladan directamente a Python 3 con `print()` e `input()`.

## Dónde encaja en la wiki

Mismo patrón requests→procesar respuesta que el scraping de [[resumen-como-hacer-web-scraping-con-python]] (ahí sobre HTML, aquí sobre JSON estructurado) y la vía de la fuente 18 con regex sobre HTML crudo; el acceso defensivo con `dict.get` y la paginación por offset reaparecen en el CRUD de PyMongo de [[resumen-mongodb-crash-course-with-python-2022]] (cursores y rangos). El `__getitem__` que hace posible `pokemon['name']` es el protocolo de colecciones del [[resumen-python-data-model-dunder-methods]].

---

**Ver también**: [[resumen-como-hacer-web-scraping-con-python]] · [[resumen-mongodb-crash-course-with-python-2022]] · [[resumen-python-data-model-dunder-methods]].

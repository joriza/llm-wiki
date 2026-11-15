# Resumen: MongoDB Crash Course With Python 2022

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-05-12-mongodb-crash-course-with-python-2022.md` (video en inglés; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «pi mongo»→PyMongo, «buy»→PyMongo, «dns python»→dnspython, «remove one»→delete_one, «onset»→unset, «object id»→ObjectId) — https://www.youtube.com/watch?v=qWYx5neOh2s — Patrick Loeber, 2021-05-12 (38:20).

## El modelo: documentos, no tablas

**MongoDB** es una base de datos **orientada a documentos** (NoSQL): los datos viven en **colecciones de documentos** muy parecidos a JSON — el ejemplo guía es una app de tareas, donde cada to-do lleva `_id` único, texto, estado y un **documento anidado** (`tags` es un array de diccionarios con nombre y categoría) [00:30-01:41]. La flexibilidad clave frente a lo relacional: no hay que definir esquema, columnas ni tipos por adelantado; el anidado se consulta igual de rápido que lo plano (query por `tags.name == "python"`) [01:41-02:18]. En disco el formato no es JSON sino **BSON** (JSON binario), optimizado para velocidad [02:18-02:30].

## Dos formas de levantar el servidor

- **Local**: MongoDB Community Server (instalador en Windows; Homebrew en Mac, con `brew services start mongodb-community` como servicio de fondo), shell `mongosh` y la GUI oficial **Compass** para explorar datos y crear base/colección a mano [02:56-06:47].
- **Nube**: **MongoDB Atlas**, capa gratuita con 512 MB (cluster compartido, región más cercana); alta de IP del cliente y de usuario de base de datos, y cadena de conexión `mongodb+srv://` [07:22-10:01]. El canal advierte: credenciales **nunca dentro del código** — cargarlas de un archivo aparte que no se despliega [10:44-11:00].

## Python con PyMongo

Drivers oficiales: **PyMongo** (síncrono, usado en el video) o **Motor** (async) [12:07-12:20]. Con Atlas hay que instalar también `dnspython` (el `+srv` de la cadena lo exige) [12:20-12:48]. Uso: `MongoClient(cadena)` → `client.test` (acceso por atributo o diccionario) → `db.todos` (colección) [13:36-14:24]. Operaciones CRUD completas demostradas:

- **Insertar**: `insert_one(dict)` / `insert_many([dicts])`; el `_id` (ObjectId) se genera solo, o se provee a mano asumiendo su gestión [16:36-20:00].
- **Consultar**: `find_one({filtro})` devuelve el primer match; el filtro es un diccionario y consulta documentos anidados sin sintaxis especial (`{"tags.text": "c++"}`) [20:29-22:42]. Ojo: buscar por `_id` con el string crudo devuelve `None` — hay que envolverlo con `ObjectId(string)` de `bson` [23:27-24:52]. `find()` devuelve un **cursor** iterable, consumible una sola vez (como un generador: un segundo bucle sobre él no ve nada) o convertible a `list()` [24:52-26:45]. Rangos con operadores `$lt`/`$gt` sobre fechas y `sort()` encadenado; catálogo completo en la doc oficial de operadores [27:40-30:44].
- **Contar**: `count_documents({})` — con filtro vacío `{}` para el total [26:45-27:40].
- **Borrar**: `delete_one` / `delete_many` (el video muestra el error fácil: el método se llama `delete_*`, no `remove_*`; y los errores de filtro tipográfico devuelven error de tipo, no de sintaxis) [30:44-33:35].
- **Actualizar**: `update_one` / `update_many` con `{"$set": {...}}` (crea el campo si no existe), `$unset` para quitar campos, y operadores como min/max; refuerza la flexibilidad del esquema: campos que aparecen y desaparecen según evoluciona el dato [33:35-38:01].

## Dónde encaja en la wiki

Casos de uso del ejemplo: backend de app con documentos flexibles y prototipado rápido sin migraciones. Cruces: es el ejemplo **NoSQL documental** dentro de la tesis de especialización de motores de [[bases-de-datos-especializadas]] (contraste natural con DuckDB analítico y lo relacional); su rol de persistencia para APIs Python lo conecta con el ecosistema de [[fastapi]] y el mapa del [[mapa-del-ecosistema-python]].

---

**Ver también**: [[bases-de-datos-especializadas]] (concepto) · [[duckdb]] · [[fastapi]] · [[mapa-del-ecosistema-python]].

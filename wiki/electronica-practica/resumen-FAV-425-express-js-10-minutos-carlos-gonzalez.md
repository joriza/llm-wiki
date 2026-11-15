# FAV-425 — Aprende Express.js en 10 minutos (Carlos González)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=6uDgb9hHz7I) — Canal **Carlos González**, publicado 2022-11-10, 08:47, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-express-js-10-minutos.md`
- **Nota de dominio**: fuente de INFORMÁTICA (subcarpeta Informatica/web) — **candidata a dominio informatica** (se suma a FAV-413/419/420/422/423/424).

## Qué es Express

Framework minimalista de servidor web sobre **Node.js**: pensado para levantar servidores y APIs/backends con muy poco código — servir páginas, endpoints que consultan bases de datos y entregan los datos al cliente.

## Recorrido del tutorial (hola mundo a params)

1. **Setup**: `npm init` en una carpeta (crea `package.json` con el main, `index.js`) → `npm install express` (queda en dependencias).
2. **Servidor mínimo**: `require('express')`, instancia la app (`const app = express()`), definir puerto (8000/3000, a elección), rutas con `app.get('/', (req, res) => res.send('...'))` y `app.listen(puerto, callback)`.
3. **Rutas adicionales**: cada `app.get('/ruta', ...)` añade un endpoint (ejemplos `/hola`, `/adiós`); al cambiar el código hay que reiniciar el servidor.
4. **Query strings**: `req.query` es el objeto con los parámetros de la URL (`/adios?nombre=Carlos` → `req.query.nombre`) — personalización de la respuesta sin rutas nuevas.
5. **Cierre**: menciona métodos POST y demás verbos como tema para otro nivel.

## Nivel

Tutorial introductorio básico (hola mundo + query params); el ASR muestra transcripción degradada en nombres técnicos ("out" ≈ Node, "Note", "cuero" ≈ `query`). Utilizable como primer contacto con Express, no como referencia profunda.

## Cruces

- Clúster **Informatica** acumulado en la ventana: FAV-422/423/424 (Python), FAV-425 (web/Node) — candidata a dominio informatica, sin páginas nuevas.
- FAV-419/420: backend Python (FastAPI) vs Node/Express como dos familias de APIs — contraste de ecosistema.

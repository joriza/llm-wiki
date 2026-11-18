# WL-632 — Aprende BASES DE DATOS en Minutos | SQL, MySQL y NoSQL Explicados

- **Fuente original**: `raw/wl/tramo-99/2026-11-17-aprende-bases-de-datos-en-minutos-sql-mysql-y-nosql-explicados.md` ([Vídeo](https://www.youtube.com/watch?v=Xzs3iaI7pTs))
- **Canal**: Diorys Michael (1.ª fuente; dominicano — ejemplo con Santo Domingo/Santiago)
- **Publicado**: 2026-11-17 · **Duración**: 04:38
- **Dominio**: bases de datos (candidato a informatica-teoria en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Introducción ultracorta y correcta a bases de datos relacionales con el caso pedagógico «pizzería Donbite»:

- **Qué es**: colección organizada para guardar/encontrar/cambiar datos rápido y seguro — contraste con la libreta de pedidos (con 10 clientes funciona; con 10.000 se pierden hojas y «dos personas no pueden escribir a la vez»: el acceso concurrente como problema real).
- **Tablas**: columnas = campos, filas = registros; **tipos de dato** por columna evitan errores («no te dejará guardar "hola" donde va un precio»).
- **Claves**: primaria (ID único, nunca se repite ni está vacío — resuelve las dos Anas); foránea (cliente_id apunta a la primaria de otra tabla — normalización elemental: si Ana cambia de teléfono, se cambia en un solo lugar).
- **SQL**: `SELECT nombre FROM clientes WHERE ciudad = 'Santiago'` — «se lee casi como una frase»; responde en milisegundos con millones de filas.
- **CRUD**: insert/select/update/delete — «cada vez que publicás, editás o borrás algo en una app».
- **Relacionales vs. NoSQL**: MySQL/PostgreSQL (estructura clara) vs. documentos flexibles «parecidos a fichas»; consejo correcto para empezar: primero relacionales.

## Señales de triage

- Microlección correcta sin errores técnicos: definiciones exactas y pedagógicas (primaria/foránea, tipos, CRUD), ejemplo coherente de punta a punta. Título exagerado («en minutos» — es literal: 4:38 de fundamentos, no un curso) pero el contenido cumple lo promete a nivel intro.
- Sintetiza en 4 minutos lo que otros videos del backlog trataron en 40+; valor como puerta de entrada y para recordar terminología.
- ASR con garbiñeos normalizados solo aquí («Mysquel/Postgresquell» → MySQL/PostgreSQL, «DB» → probable MongoDB, «Donbite» sin certeza); raw intacto. Sin patrocinios; CTA estándar.

## Cruces

- Consolidación aplazada: candidato a informatica-teoria; base para los videos de RAG/embeddings del backlog (los «ficheros como documentos» de NoSQL ↔ WL-051 NapMem); terminología (claves, CRUD) ↔ WL-620 (primary keys no-autonuméricas como decisión a recordar — el ejemplo exacto que Eric Risco usó para la memoria de agentes).

## Veredicto de triage

Microlección correcta de fundamentos (4:38): útil como puerta de entrada y glosario, sin profundidad. Sin consolidación (aplazada).

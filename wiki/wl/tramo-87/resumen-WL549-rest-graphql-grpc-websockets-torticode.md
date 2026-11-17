# WL-549 — REST vs GraphQL vs gRPC vs WebSockets explicado fácil

- **Fuente original**: `raw/wl/tramo-87/2026-08-25-rest-vs-graphql-vs-grpc-vs-websockets-explicado-facil.md` ([Vídeo](https://www.youtube.com/watch?v=-vHf2vzMsqE))
- **Canal**: Torti Code
- **Publicado**: 2026-08-24 · **Duración**: 17:33
- **Dominio provisional**: informatica-teoria (arquitectura de APIs)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Divulgación técnica muy bien construida comparando los 4 paradigmas de comunicación entre sistemas, cada uno con una analogía fija y ejemplos de herramientas reales:

1. **REST = el menú**: recursos con URL fija + verbos HTTP, sin estado (cada petición se explica sola → escala horizontal trivial); overfetching/underfetching como sus dolores; herramientas: Express/FastAPI/Spring; detalle fino: idempotencia (PUT/DELETE sí, POST no — «una compra cobrada dos veces es alguien reintentando una creación como si fuera idempotente»); origen: tesis doctoral de Roy Fielding (2000).
2. **GraphQL = el buffet**: un solo endpoint, el cliente describe la forma exacta (mata over/underfetching); resolvers como hogar de la lógica; Apollo; origen Facebook (2012 interno, 2015 público, nacido del dolor móvil); costo escondido: consultas monstruosas → blindaje del servidor; cacheo más difícil que REST.
3. **gRPC = el cable rojo**: contrato previo en Protocol Buffers, código cliente/servidor generado, binario compacto sobre HTTP/2 multiplexado, streaming en 4 modos; para máquina-a-máquina interna (microservicios); no desde el navegador (falta control de HTTP/2) ni API pública (el contrato binario es barrera); origen Google (2015, 1.0 en 2016); cliente Go de primera clase.
4. **WebSockets = la llamada que no cuelga**: conexión bidireccional full-duplex que empieza como HTTP y «asciende» de categoría (RFC 6455, 2011); el servidor habla sin que preguntes; WS (crudo, rápido) vs Socket.io (reconexión, salas, fallback — comodidad con peso); para chats, notificaciones, precios, edición colaborativa; costo: memoria por conexión mantenida.
- **Cierre**: «la pregunta nunca es cuál es la mejor» — los sistemas reales combinan: REST/GraphQL hacia fuera, gRPC por dentro, WebSockets para lo vivo; ejemplos: GitHub (REST+GraphQL a la vez), Google (gRPC interno).

## Señales de triage

- **Divulgación correcta y verificable**: orígenes y fechas citados (Fielding 2000, GraphQL 2012/2015, gRPC 2015/2016, RFC 6455 2011) coinciden con el registro público; herramientas reales (Express/FastAPI/Spring, Apollo, WS/Socket.io). Sin cifras inventadas.
- Título «explicado fácil» cumple; analogías sostenidas con consistencia (menú/buffet/cable rojo/llamada).
- Sin patrocinios; gancho final hacia otro video propio (encriptación) — leve.
- ASR mínimo («písar» por pisar), sin afectar contenido; raw intacto.

## Cruces

- **informatica-teoria** (par técnico sólido junto a WL-543 y WL-538): arquitectura de sistemas distribuidos; clúster web/API.
- [[routing-por-coste]]: «cada una donde brilla» = elegir por caso, no por ranking — mismo principio que WL-541 (modelos) y la pirámide de herramientas.
- [[self-hosting]]/[[agentes-de-codigo]] tangenciales: WebSockets ↔ observabilidad de harnesses (eventos en vivo); gRPC ↔ comunicación interna de agentes (WL-501 Hermes «un cliente-un servidor»).
- «Idempotencia y reintentos» ↔ WL-473 (reserva/auditoría) y el hilo de resiliencia de WL-537 (patrón de resiliencia con dispositivos).

## Veredicto de triage

Muy útil: la mejor fuente didáctica del tramo; correcta en fechas y herramientas, sin humo. Consolidación diferida (L12): informatica-teoria, cruces con WL-543/538/541, Torti Code entidad candidata (1.ª fuente, texto plano).

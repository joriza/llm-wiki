# FAV-448 — La MENTIRA de los Microservicios desde el Día 1 (TheDebugDuck)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=JgrsAyefLFU) — Canal **TheDebugDuck**, publicado 2026-08-09, 13:35, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-monolito-vs-microservicios-thedebugduck.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## Microservicios desde el día 1: el mito del escalado

Escenario: equipo de 5, producto sin tráfico real, alguien propone «microservicios para escalar bien». Desmontaje argumentado:

1. **La confusión central**: dividir servicios no acelera la lógica — convierte llamadas en memoria (nanosegundos) en viajes por red (HTTP/gRPC, serialización, DNS, TLS: milisegundos). Analogía del edificio: pedir un documento al de al lado vs mandar un taxi a otra sede por cada papelito.
2. **Caso Prime Video (2023)**: su servicio de monitoreo serverless (Lambda + Step Functions + frames vía S3) pasó a un proceso único con datos en memoria → −90% de coste de infraestructura y más carga. No reescribieron todo: arreglaron un servicio donde la red cobraba de más.
3. **Ley de Conway** (años 60): el organigrama se filtra al código. Netflix/Uber/Amazon usan microservicios por problema *organizacional* (cientos de devs que se pisarían en un mismo deploy), no por rendimiento. Uber: ~2.200 microservicios críticos → crearon DOMA (Domain Oriented Microservice Architecture) para agrupar en dominios — de nuevo solución organizacional.
4. **Pérdida de ACID**: en el monolito una compra vive en una transacción (begin/commit/rollback); al dividir por dominio con base propia ya no hay rollback global → sagas, colas (Kafka/RabbitMQ), compensaciones, reintentos, idempotencia. Funciona, pero hay que programar la orquestación de fallos.
5. **Observabilidad**: un checkout que cruza 4-5 servicios necesita correlation ID / tracing distribuido; sin eso, depurar es saltar de contenedor en contenedor a ciegas.
6. **La alternativa**: **monolito modular** — un ejecutable, un deploy, una base; módulos por dominio con fronteras respetadas (interfaces/DTOs, no tablas ajenas). Si un módulo necesita vivir aparte (carga desproporcionada, otra tecnología — ML, vídeo), ya se sabe por dónde cortar.
7. **Criterios de decisión**: tamaño del equipo (1-20 → monolito modular; >50 equipos que se pis → considerar separar), etapa del producto (validando vs dominios estables), madurez DevOps (si el pipeline único ya falla, microservicios multiplica el dolor).

## Valor

Guía de decisión de arquitectura con casos públicos verificables (Prime Video, Uber, TSB análogo); buen contraste con el costo de migraciones de [[resumen-FAV-446-cobol-imposible-de-matar-fatdev]].

## Cruces

- [[resumen-FAV-440-solid-en-5-minutos-torti-code]] / [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]]: diseño y prácticas de código — misma línea «arquitectura al servicio del equipo, no de la moda».
- Clúster **arquitectura-software**: FAV-448 + FAV-440 (SOLID) — umbral ≥2 alcanzable, candidato a concepto en consolidación (deferido).

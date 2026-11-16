# WL-246 — 8 patrones de API que los desarrolladores SENIOR usan TODO el tiempo

- **Fuente original**: `raw/general/2026-10-06-8-patrones-de-api-que-los-desarrolladores-senior-usan-todo-el-tiempo.md`
- **Video**: [8 patrones de API que los desarrolladores SENIOR usan TODO el tiempo](https://www.youtube.com/watch?v=Ed94R7RKGq8)
- **Canal**: Cognix · **Publicado**: 2026-10-06 · **Duración**: 08:16 · **Ingesta**: 2026-11-15 (tramo 35)

## Qué trata

Explicación didáctica (8 minutos, formato animación/narración) de ocho patrones de diseño de APIs, cada uno presentado como «problema → solución»:

1. **Diseño orientado a recursos**: en lugar de una URL por acción (`/deleteProduct/42`), diseñar alrededor de las cosas (usuarios, productos, pedidos); los métodos HTTP (GET/PUT/DELETE/POST) indican la operación sobre colecciones tipo `/products/42`.
2. **Paginación**: nunca devolver colecciones completas (10.000 registros); páginas pequeñas y, para datos enormes que cambian rápido, **paginación por cursor** («dame los registros después de este cursor»).
3. **Filtrado y selección de campos**: responder tanto «¿cuántos datos?» como «¿qué datos?» — filtrar por categoría/precio/orden, y seleccionar solo los campos que el cliente necesita (nunca descargar datos que no se usan).
4. **Idempotencia**: caso del doble cobro (pago exitoso + red caída + reintento); clave de idempotencia única que el servidor guarda con el resultado — el reintento devuelve el resultado anterior en vez de cobrar de nuevo.
5. **Backend for Frontend (BFF)**: web, móvil y TV necesitan formas distintas de los mismos datos; una capa de API delgada por cliente que combina y adapta la respuesta.
6. **API Gateway**: única puerta de entrada controlada (autenticación, rate limiting, enrutamiento) para sistemas con muchos servicios; advertencia explícita: no convertir el gateway en la aplicación — la lógica de negocio queda en los servicios.
7. **APIs asíncronas**: trabajo pesado (procesar video) no cabe en una solicitud; respuesta inmediata «trabajo creado», cola + worker, y sondeo de estado (`trabajo 123: pendiente/procesando/completado`).
8. **Versionado y evolución**: cambios aditivos son seguros (campos nuevos se ignoran), los que rompen compatibilidad exigen dos versiones en paralelo; «dos versiones son una herramienta, diez son un caos».

Cierre del video: no memorizar como trucos sueltos sino reconocer el problema detrás de cada patrón (dataset enorme → paginación; clientes distintos → BFF; reintentos → idempotencia; demasiados servicios → gateway; trabajo largo → async; la API cambia → evolución). El senior «se pregunta qué problemas tendrá esta API dentro de 6 meses».

## Observaciones de triage

- Divulgación técnica introductoria, precisa y sin afirmaciones controvertibles; ejemplos hipotéticos (e-commerce), sin cifras ni casos reales citados.
- ASR con garabeos normados en este resumen: «iden potencia» → idempotencia, «Batrón» → patrón, «B1/B2» → v1/v2.
- Cierre con llamado a comentarios/suscripción — trivial.

## Cruces (en texto plano, candidatas)

- Canal **Cognix**: ya con varias fuentes WL (WL-209, WL-240, WL-154) — entidad de canal candidata fuerte en consolidación.
- Tema diseño de APIs: WL-160 (DevOps panorama), WL-169 (MCP vs RAG vs API vs A2A, mismo backlog), WL-108/WL-216/WL-217 (programación).
- Patrón «cola + worker» conecta con WL-232 (DevOps/infra).

## Dominio destino sugerido (pendiente de consolidación)

- **general** — programación/arquitectura de software (divulgación técnica; alternativa: ia-uso-practico si se agrupa por canal Cognix, pero el contenido es agnóstico de IA).

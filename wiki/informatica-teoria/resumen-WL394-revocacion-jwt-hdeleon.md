# WL-394 — ¡Así saqué al Hacker que entró a mi Sistema!

- **Fuente**: `raw/informatica-teoria/2026-09-12-asi-saque-al-hacker-que-entro-a-mi-sistema.md` (`ATycm0kKRh8`, https://www.youtube.com/watch?v=ATycm0kKRh8)
- **Canal**: hdeleon.net ([[hdeleon-net]], 2.ª fuente WL del tramo 63 + esta — ver consolidación)
- **Publicado**: 2026-09-12 · **Duración**: 01:27 · **Idioma**: es (subtítulos automáticos)
- **Dominio previsto**: informatica-teoria (seguridad web / sesiones)
- **Tramo**: 64 (relevo 4 de 12 del pedido L34)

## Qué trata

Short técnico (1:27) sobre revocación de sesiones en arquitecturas cliente-servidor con JWT:

- **La brecha**: el atacante obtuvo usuario y contraseña (credenciales reutilizadas o filtradas por descargas de internet).
- **JWT en 3 partes**: header (tipo y algoritmo), payload legible en base 64 (solo datos que necesita el front end) y firma — si se modifica el payload, la firma detecta la alteración.
- **La debilidad**: un JWT robado sigue siendo válido hasta su caducidad; no hay forma nativa de «matarlo».
- **La solución que aplicaron**: no guardar el token completo en la base de datos sino un identificador único por sesión; matar ese registro invalida la sesión al instante — la siguiente petición a cualquier endpoint ya no pasa.

## Señales de calidad

- Contenido técnico correcto y estándar (patrón de sesión-sidecar/allowlist de sesiones para revocación de JWT); formato short → sin contexto de stack ni detalle de implementación. El «saqué al hacker» del título es encuadre dramático del caso real de credenciales comprometidas.
- Sin patrocinio. ASR mínimo (vocabulario técnico bien reconocido; «votarlo» por «botarlo/validarlo» contextual).

## Cruces (consolidación diferida, L12)

- [[hdeleon-net]] +1 (WL-280/388/394 — 3 fuentes, entidad ya existente).
- Cluster seguridad: WL-343/351 (auditoría/herramientas), [[bases-de-datos]] (sesiones como registros), temas infra WL-334.
- Autenticación/sesiones: par conceptual con WL-315 (MDM/IDM, confianza en identificadores).

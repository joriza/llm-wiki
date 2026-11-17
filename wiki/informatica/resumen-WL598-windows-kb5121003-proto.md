# WL-598 — Windows por fin nos liberó a todos: Optimización de RAM y CPUs

- **Fuente original**: `raw/informatica/2026-08-16-windows-por-fin-nos-libero-a-todos-optimizacion-de-ram-y-cpus-instalala-ahora.md` ([Vídeo](https://www.youtube.com/watch?v=_ZP9q5ncH5Y))
- **Canal**: Proto
- **Publicado**: 2026-08-16 · **Duración**: 13:53
- **Dominio definitivo**: informatica (consolidación T97 relevo 3, 2026-11-17) (Windows/optimización)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Comentario (estilo exclamativo, con slang mexicano) sobre la actualización **KB5121003** de Windows 11 (12-14 de agosto de 2026) y sus dos frentes:

1. **CPU low latency**: acelerar el procesador al 100 % ante cualquier tarea (incluso el Bloc de notas o la calculadora) — el canal lo defiende: «así lo hacen las Mac y Linux», argumentando que no calienta ni consume más.
2. **Optimización de RAM / «Windows a dieta»**: mejoras a explorer.exe (el propio canal lo sufría con un 9950X3D y 48 GB DDR5), jump lists, archivos recientes, task view, menú inicio sin comerciales; contexto: Microsoft lanzando PCs con 8 GB (Surface) y confirmando («8 GB se sienten lentos y estamos poniendo el sistema a dieta») que están **convirtiendo las apps web-view a nativo** — el ejemplo del widget del clima en WebView consumiendo 1,2-1,6 GB vs 260 MB del equivalente en Mac.
- Su anécdota: con hardware top «no vi ni maíz de cambios» — la mejora está «muy orientada a gama baja/entrada»; sus PCs de entrada ya las prueba con «Kachi OS»/Linux.

## Señales de triage

- **Comentario de 2.ª mano**: la KB y sus cambios citados verbalmente de notas de Microsoft sin pantallas de la nota; ninguna medición propia más allá de la anécdota de explorer.exe — todo señalado como no verificado en detalle; la versión «low latency» y sus efectos descritos de oído.
- **Patrocinio excluido**: bloque VIP-CDKey («licencias de Windows/Office», código de descuento, PayPal) — vendedor de claves grises, señalado y excluido; de paso el canal reconoce que sus máquinas de entrada «ya no las tengo con Windows».
- ASR: «KB 512 1003», «Kachi OS», «despapaye» — normalizado solo aquí; raw intacto.

## Cruces

- **informatica** (Windows): par con WL-561 (utilidades Windows) y WL-578 (dual boot); «apps web-view → nativo» ↔ [[self-hosting]] (peso de web vs nativo) y WL-472.
- «Optimizar porque vendemos 8 GB» ↔ WL-550 (hardware que encarece RAM — hilo memoria: WL-569/583): la RAM cara empuja la dieta del SO.
- Claves grises ↔ hilo «estándar de facto vs legalidad» (WL-542).

## Veredicto de triage

Útil menor: actualización real comentada con anécdota propia, sin mediciones ni fuentes en pantalla — señalado. Consolidación diferida (L12): informatica, cruces WL-561/578/550; Proto entidad candidata.

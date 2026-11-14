# Curación de favoritos de Chrome (53+ elementos YouTube)

Tratamiento tipo WL de los favoritos de Chrome del usuario con URL de YouTube (inventario canónico: `lista-favoritos-chrome.md`, refresco 2026-11-14; fuente: archivo local `Bookmarks`, sin tocar la cuenta). Regla S4: cada bookmark = video suelto (el parámetro `list=` de playlists ajenas se ignora salvo orden expresa). Descargas secuenciales gated (regla dura), esfuerzo low, commit por fuente.

## Specs

- S1: «comienza por la carpeta docker, que tiene un solo archivo, para comenzar a curar favoritos» (2026-11-14) — FAV-001 procesada (informatica-teoria/, commit b074ebc).
- S2: «Procese las carpetas Electricidad Basica Teorica y Electronica Basica en una sola pasada» + «vamos a curar los dominios que están mas en la superficie primero» (2026-11-14).
- S3: Dominio nuevo `electronica-practica/` confirmado por el usuario (2026-11-14, ask_user_choice) para el clúster de electricidad/electrónica de favoritos (~40 fuentes) + WL-81/84. Registrado en `wiki/dominios.md`.
- S4: Bookmark = video suelto; `list=` ajeno ignorado salvo orden expresa (ej. Arduino desde cero: solo caps marcados).
- S5: Inventario corregido post-lectura completa de Bookmarks: los IDs FAV de la primera pasada eran erróneos (tomaban `list=` en lugar de `v=`); carpetas no registradas antes: `Electronica y TV/` (25 videos + 4 no-YouTube), `Docencia/Electromecanica/Electricidad|Electronica/` (6). El worker corrige los IDs de las carpetas que procesa y agrega las nuevas filas.

## Tasks

- T1 [S2,S3] Ventana 1: 10 fuentes — `Gral/Electricidad Basica Teorica/` (1: LihRPe0zkGI Kirchhoff) + `Gral/Electronica Basica/` (9: 4jUeKtnwzrs, 1vWbqf7cHLg, qLxECOjrJVg, XRVzR1HwNk0, 3rBmi5CPCs0, 2IFIRgJz64Q, z85eNiv1EqE, MPydeX-V2n4, SEXx1eYsvAQ-short) → ciclo completo en `electronica-practica/` (raw + resumen + fila index + log + commit por fuente), IDs FAV corregidos en el inventario, numeración FAV-002..011 (FAV-001 ya usada por Trivy).
- T2 [S5] Actualización completa del inventario `lista-favoritos-chrome.md`: corregir TODOS los IDs erróneos (lectura fresh de Bookmarks), agregar carpetas faltantes (Electronica y TV 25, Electromecanica 6, no-YouTube 4 marcadas para decisión), renumerar coherente.
- T3 Ventanas siguientes por carpeta (raíz 17, Docencia 11+2, Electromecanica 6, Electronica y TV 25) — bajo orden del usuario, con relevo cada 5 fuentes.
- T4 Al cierre total: evaluar movimiento de WL-81/84 desde general/ a electronica-practica/ (cruce, no obligatorio) + consolidación del clúster.

## Log

- L1: Lectura completa de Bookmarks (2026-11-14): clúster electrónica real ~41 videos + Kirchhoff; decisión S3 del usuario (dominio nuevo). Los IDs del inventario inicial eran erróneos para los bookmarks con `v=&list=` (tomaban `list=`) — corregir en T2.

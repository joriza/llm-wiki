# Protocolo de ingesta de playlists de YouTube

Vigente desde 2026-11-11 (sesión «Casa/Calefacción»). Ajustes decididos durante esa ingesta bajo bloqueo 429 de timedtext, para tener a mano en futuras ejecuciones. Complementa a `AGENTS.md` (Operaciones) y a `.atl/bloqueo-ip-youtube.md` (detalle operativo del bloqueo).

## Herramientas

- `.atl/descarga_playlist.py <playlist_url> <nombre>` — runner de descarga secuencial. Raws → `.atl/scratch/<nombre>/`, log → `.atl/descarga-<nombre>.log`, listado canónico → `.atl/scratch/playlist-<nombre>.json`. Interprete: `python` del sistema (3.11, con yt-dlp + youtube-transcript-api + requests).
- `.atl/fetch_yt.py <video_id> --out <archivo>` — extractor unitario (metadatos + transcripción en bloques [mm:ss]). Usa `python -m yt_dlp` con cookies de Firefox y cadena de clientes (default → mweb → web_embedded → ios).
- **Ruta celular (USB)**: si la IP principal está bloqueada para timedtext, exportar `FYT_SOURCE=<ip-local-del-pc-en-la-subred-del-telefono>` (verificar la IP real con `ipconfig`; el teléfono la asigna por DHCP — fue 192.168.115.45 el 2026-11-11). Solo los fetch de subtítulos van por esa ruta; los metadatos pueden seguir por la conexión principal (no se bloquean).

## Obtención de subtítulos

1. **Subtítulos primero, ingesta en streaming**: procesar cada transcripción a medida que se obtiene (raw → ingesta → commit por fuente); no esperar a completar la lista.
2. **Espaciado ~50-90 s entre cada obtención** de subtítulos para minimizar bloqueos. Descarga SIEMPRE secuencial, nunca paralela. (Espaciado base 25-40 s; ampliado a 60-90 s tras 2×429 consecutivos.) **Bucle descarga→ingesta (decisión del usuario 2026-11-11)**: bajar UN subtítulo → ingestar ese raw inline en el mismo agente → recién ahí bajar el siguiente. El mínimo de 50 s corre entre descargas y la ingesta cuenta hacia él: si al cerrar la ingesta ya pasaron ≥50 s desde la descarga anterior, continuar de inmediato; si no, esperar la diferencia. El runner soporta `--one` (procesa solo la primera entrada pendiente, sin espaciado interno) para este bucle.
3. **429 → reintentos con tiempos crecientes**: ante 429, esperar 5-10 min y reintentar (el runner espera 300-600 s y sigue con la siguiente entrada; la fallida queda pendiente para una re-pass — el runner salta lo ya descargado, así que re-lanzarlo al final recoge solo los faltantes).
4. **Sin subtítulos → SKIP definitivo**: si el video no tiene pistas de subtítulos se salta y NO se intenta por otros medios (ASR, audio, etc.), salvo pedido explícito del usuario.
5. **Aborto de pasada**: 2 fallos de red consecutivos → abortar; reintentar más tarde con espaciado ampliado.
6. **Bloqueo de IP**: ver `.atl/bloqueo-ip-youtube.md`. Primera alternativa: ruta celular; si el celular también se ralentiza, enfriar (≥10 min) y ampliar espaciado antes de reintentar.

## Listas de orígenes

7. **Pre-flight: unicidad**: antes de procesar una lista recibida, verificar que cada item sea único (dedupe por video id; parcheado en el runner al listar). Auditada la primera lista: 28 entradas → 27 únicas.
8. **Revisar pertinencia**: ojear títulos/fuente de cada entrada antes de bajar (detecta off-topic temprano).
9. **Marcadores de re-pass**: tras cada OK dejar en scratch un archivo cuyo nombre contenga el video id (`<id>.done` o `<id>.<raw>`) — el skip de re-pass matchea el id dentro del nombre. Los raws se nombran `fecha-titulo` SIN id: sin marcador, una re-pass los re-descargaría (error ocurrido y corregido el 2026-11-11).

## Ingesta

10. **Streaming en agente único (vigente)**: la ingesta se hace inline en la MISMA sesión del orquestador, una fuente por vez, SIN subagentes — decisión del usuario 2026-11-11 (post-pausa) para preservar el contexto actual. El orquestador mueve cada raw de scratch a `raw/<dominio>/`, redacta el resumen, aplica fila de `index.md` + línea de `log.md` y comitea por fuente, todo él mismo.
11. **Modo paralelo con workers (alternativa histórica)**: solo si el usuario lo pide explícitamente, workers de ingesta ≤3 concurrentes con sidecars (ítems 14-15); decisión original 2026-11-11, reemplazada por el modo agente único ese mismo día.
12. **Modo lote por fuente**: raw INTACTO (nunca editar `raw/`) + resumen (formato del dominio, español profesional, garbiñeos del ASR normalizados SOLO en el resumen, patrocinios y autopromoción excluidos de la síntesis) + fila en `index.md` + línea en `log.md` + commit por fuente con `git add` POR ARCHIVO específico (nunca `git add -A`; nunca `.obsidian/`).
13. **Metadatos mandan**: sobre el nombre del archivo y sobre toda suposición del orquestador (idioma, fecha, canal, duración).
14. **Sidecars para paralelizar (solo modo workers)**: si hay workers paralelos, cada uno escribe SOLO su resumen (nombre único) + un sidecar por fuente (`.atl/scratch/ingesta/fila-N.md` con la fila de index.md y la línea de log.md); el orquestador aplica sidecars y comitea — index.md y log.md nunca los tocan dos workers a la vez.
15. **Consolidación aplazada**: conceptos, entidades y cruces se hacen al cierre del lote, no durante la ingesta.

## Estado al pausar (2026-11-11, pedido del usuario)

- Playlist «Casa/Calefacción» (Jorge J. Izaguirre, 28 entradas → 27 únicas): **9 fuentes committeadas** (commits `3aebc2b`…`1554812` + aplicación por sidecar); 4+ entradas SKIP-NO-SUBS; pendientes: reintentos `mY-_RkYDRuM` y `tksaBVuHcBc` (429 por celular tras ~12 descargas rápidas) + entradas 17-28.
- **Reanudación**: relanzar `.atl/descarga_playlist.py` con `FYT_SOURCE` (salta los existentes por marcadores) → monitor del log (`tail -f | grep "OK \|SKIP\|ABORT\|429"`) → ingesta inline en agente único a medida que lleguen raws.

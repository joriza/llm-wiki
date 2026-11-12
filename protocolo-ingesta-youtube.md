# Protocolo de ingesta de playlists de YouTube

Vigente desde 2026-11-11 (sesión «Casa/Calefacción»). Ajustes decididos durante esa ingesta bajo bloqueo 429 de timedtext, para tener a mano en futuras ejecuciones. Complementa a `AGENTS.md` (Operaciones) y a `.atl/bloqueo-ip-youtube.md` (detalle operativo del bloqueo).

## Regla de descarga v2 — protección mecánica de IP (vigente desde 2026-11-13)

Decisión del usuario 2026-11-13 tras el análisis crítico del bucle descarga→ingesta. Principio rector: TODA la protección contra bloqueo vive en el runner y en archivos de estado, nunca en el comportamiento del agente — el riesgo no depende del modelo ni del modo de ejecución. Prioridad: primero no bloquear la IP; después optimizar tiempos muertos.

**Capa de protección (mecánica, aplicada por el runner):**

1. **Puerta global por reloj en disco** (`.atl/puerta-youtube.json`, keyed por IP de salida): mínimo 60 s + jitter U(0,30) entre intentos de entrada (efectivo 60–90 s; uniforma el viejo «≥50 s» del bucle y el espaciado del modo completo). Timestamp tras CADA intento (OK, 429, no-subs) y tras la sonda. Archivo ausente → fail-open documentado.
2. **Integridad de ruta**: identidad de salida al iniciar, cada 5 entradas y ante cada 429. Ruta celular (`FYT_SOURCE`) → chequeo local contra `ipconfig` (IP no asignada → ROUTE-DEAD, fail-closed). Túnel/directo → IP pública externa; cambio CONFIRMADO de salida a mitad de tramo → ROUTE-CHANGED, fail-closed (la IP principal pudo quedar expuesta). Chequeo que falla ≠ cambio: se continúa con aviso (EGRESS-UNKNOWN).
3. **Taxonomía de errores**: 429 → TRAMO-CLOSED (nunca reintentar la misma salida); no-subs → SKIP definitivo (`.no-subs`); members/privado → SKIP definitivo (`.private`); transitorio → cuenta al aborto por 2 consecutivos; restringido/desconocido → pendiente de re-pass (sin marcador definitivo). Una racha de casos raros no aborta una sesión sana ni dispara reintentos.
4. **Playbook 429**: ruta alternativa scriptable (celular vía `FYT_SOURCE`) → conmutar y relanzar; solo Proton GUI (el agente no puede rotarla) → pausa y consulta al usuario con estado preciso. Jamás reintento idéntico sobre salida flaggeada; enfriamiento ≥10 min solo como último recurso.
5. **Presupuesto por salida** (`--budget`, default 15; ajustable al lanzar) + cierre de tramo ante cualquier 429. **Registro de salidas** en `.atl/salidas.md` (IP → ok/flagged/fecha, append-only): evidencia acumulable entre sesiones para elegir salidas.
6. **Sonda de salida obligatoria** para toda salida nueva o no validada hoy (`--probe-id` a archivo desechable; cuenta para la puerta): ok valida; 429 → flaggeada, fail-closed; inconclusa → fail-closed.
7. **Lock anti-doble-sesión** (`.atl/descarga.lock` con pid): el runner se rehúsa si hay otra instancia viva.

**Capa de estado y reanudación:**

8. **`estado.json` central** (`.atl/scratch/<nombre>/estado.json`, id → estado + timestamp): pending / downloaded / ingested / committed / skip-nosubs / skip-private / meta-fail / failed. El runner escribe los estados de descarga; el bucle de ingesta escribe ingested/committed. **El commit es la fuente de verdad**: al reanudar, un estado laggeado se reconcilia contra `log.md` (nunca re-ingestar por estado solo). Escala a listas de cientos.
9. **Cortes solo en frontera committed**: relevo planificado cada ~10 fuentes (subagente) o al agotar contexto; jamás a mitad de descarga o ingesta. El cableado de páginas se hace por búsqueda de entidades en `wiki/` (no por lista manual, que no escala).

**Capa de tiempos (después de proteger):**

10. **Bucle descarga→ingesta**: `--one` baja UNA entrada (la puerta la aplica el runner por dentro), se ingest+comitea, recién ahí la siguiente. El bucle puede leer `puerta-youtube.json` (o usar `--defer-gate`) para llenar remanentes largos con consolidación aplazada — la protección no depende de ello. Backoffs y rotaciones también se llenan con trabajo de wiki sin YouTube.
11. **Caché de listado**: no re-listar si `playlist-<nombre>.json` es fresco (<24 h); `--refresh-list` fuerza. Listing que falla con cache existente → CACHE-FALLBACK. En `--one` baja los pedidos por ciclo de 3 a 2 — relevante en listas grandes.
12. **Solape descarga N+1 durante ingesta N**: opt-in, off por defecto (estado en vuelo; ~15–25 min por lote de 50).
13. **Pre-flight dedupe cruzado**: al iniciar, el runner escanea los IDs de `raw/` (línea «Fuente» de cada raw — una pasada local, sin pedidos) y salta con `SKIP-DUPLICATE` cualquier entrada ya procesada en otro lote: sin presupuesto, sin puerta, sin contacto con YouTube. Estado `skip-duplicate` persistente; aplica a cualquier lista que procese el runner.

**Modo de ejecución (indicado al lanzar)**: `subagente` (un subagente por tramo, relevos; contexto principal siempre delgado) o `inline` (bucle en la sesión principal; compactions inocuas por el estado en archivos; razonable hasta ~30–40 fuentes). Disciplina y protección idénticas en ambos. El modo completo del runner (sin `--one`) queda solo para re-pass, bajo puerta y presupuesto. Códigos de salida del runner y marcadores de log: ver docstring de `.atl/descarga_playlist.py` (3 = presupuesto agotado, 4 = 429 tramo cerrado, 5 = lock, 6 = ruta/sonda fail-closed, 7 = puerta diferida, 8 = entrada fallida pendiente re-pass).

Modifica: reemplaza el «pacing externo ≥50 s» del ítem 2 y la decisión «inline SIN subagentes» del ítem 10 (ambos quedan como antecedente histórico).

## Herramientas

- `.atl/descarga_playlist.py <playlist_url> <nombre> [flags]` — runner v2 de descarga secuencial con protección mecánica (puerta, ruta, taxonomía, presupuesto, sonda, lock, estado, caché, dedupe cruzado contra `raw/`). Flags: `--one` (bucle entrelazado), `--refresh-list`, `--budget N`, `--gate-floor S`, `--probe-id ID`, `--no-probe`, `--defer-gate`, `--gate-status`. Raws → `.atl/scratch/<nombre>/`, log → `.atl/descarga-<nombre>.log`, listado canónico → `.atl/scratch/playlist-<nombre>.json`. Interprete: `python` del sistema (3.11, con yt-dlp + youtube-transcript-api + requests). Pruebas offline: `python .atl/test_descarga_v2.py` (stubs, sin acceso a YouTube).
- `.atl/fetch_yt.py <video_id> --out <archivo>` — extractor unitario (metadatos + transcripción en bloques [mm:ss]). Usa `python -m yt_dlp` con cookies de Firefox y cadena de clientes (default → mweb → web_embedded → ios).
- **Ruta celular (USB)**: si la IP principal está bloqueada para timedtext, exportar `FYT_SOURCE=<ip-local-del-pc-en-la-subred-del-telefono>` (verificar la IP real con `ipconfig`; el teléfono la asigna por DHCP — fue 192.168.115.45 el 2026-11-11). Solo los fetch de subtítulos van por esa ruta; los metadatos pueden seguir por la conexión principal (no se bloquean).

## Obtención de subtítulos

1. **Subtítulos primero, ingesta en streaming**: procesar cada transcripción a medida que se obtiene (raw → ingesta → commit por fuente); no esperar a completar la lista.
2. **Espaciado ~50-90 s entre cada obtención** de subtítulos para minimizar bloqueos. Descarga SIEMPRE secuencial, nunca paralela. (Espaciado base 25-40 s; ampliado a 60-90 s tras 2×429 consecutivos.) **Bucle descarga→ingesta (decisión del usuario 2026-11-11)**: bajar UN subtítulo → ingestar ese raw inline en el mismo agente → recién ahí bajar el siguiente. El mínimo de 50 s corre entre descargas y la ingesta cuenta hacia él: si al cerrar la ingesta ya pasaron ≥50 s desde la descarga anterior, continuar de inmediato; si no, esperar la diferencia. El runner soporta `--one` para este bucle. (v2: la puerta es mecánica del runner — mínimo 60-90 s con jitter — y el pacing ya no depende del agente; el modo completo queda solo para re-pass. Ver **Regla de descarga v2**.)
3. **429 → reintentos con tiempos crecientes**: ante 429, esperar 5-10 min y reintentar (el runner espera 300-600 s y sigue con la siguiente entrada; la fallida queda pendiente para una re-pass — el runner salta lo ya descargado, así que re-lanzarlo al final recoge solo los faltantes).
4. **Sin subtítulos → SKIP definitivo**: si el video no tiene pistas de subtítulos se salta y NO se intenta por otros medios (ASR, audio, etc.), salvo pedido explícito del usuario.
5. **Aborto de pasada**: 2 fallos de red consecutivos → abortar; reintentar más tarde con espaciado ampliado.
6. **Bloqueo de IP**: ver `.atl/bloqueo-ip-youtube.md`. Primera alternativa: ruta celular; si el celular también se ralentiza, enfriar (≥10 min) y ampliar espaciado antes de reintentar.

## Listas de orígenes

7. **Pre-flight: unicidad**: antes de procesar una lista recibida, verificar que cada item sea único (dedupe por video id; parcheado en el runner al listar). Auditada la primera lista: 28 entradas → 27 únicas.
8. **Revisar pertinencia**: ojear títulos/fuente de cada entrada antes de bajar (detecta off-topic temprano).
9. **Marcadores de re-pass**: tras cada OK dejar en scratch un archivo cuyo nombre contenga el video id (`<id>.done` o `<id>.<raw>`) — el skip de re-pass matchea el id dentro del nombre. Los raws se nombran `fecha-titulo` SIN id: sin marcador, una re-pass los re-descargaría (error ocurrido y corregido el 2026-11-11).

## Ingesta

10. **Streaming en agente único (histórico — v2: modo indicado al lanzar, ver Regla de descarga v2)**: la ingesta se hace inline en la MISMA sesión del orquestador, una fuente por vez, SIN subagentes — decisión del usuario 2026-11-11 (post-pausa) para preservar el contexto actual. El orquestador mueve cada raw de scratch a `raw/<dominio>/`, redacta el resumen, aplica fila de `index.md` + línea de `log.md` y comitea por fuente, todo él mismo.
11. **Modo paralelo con workers (alternativa histórica)**: solo si el usuario lo pide explícitamente, workers de ingesta ≤3 concurrentes con sidecars (ítems 14-15); decisión original 2026-11-11, reemplazada por el modo agente único ese mismo día.
12. **Modo lote por fuente**: raw INTACTO (nunca editar `raw/`) + resumen (formato del dominio, español profesional, garbiñeos del ASR normalizados SOLO en el resumen, patrocinios y autopromoción excluidos de la síntesis) + fila en `index.md` + línea en `log.md` + commit por fuente con `git add` POR ARCHIVO específico (nunca `git add -A`; nunca `.obsidian/`).
13. **Metadatos mandan**: sobre el nombre del archivo y sobre toda suposición del orquestador (idioma, fecha, canal, duración).
14. **Sidecars para paralelizar (solo modo workers)**: si hay workers paralelos, cada uno escribe SOLO su resumen (nombre único) + un sidecar por fuente (`.atl/scratch/ingesta/fila-N.md` con la fila de index.md y la línea de log.md); el orquestador aplica sidecars y comitea — index.md y log.md nunca los tocan dos workers a la vez.
15. **Consolidación aplazada**: conceptos, entidades y cruces se hacen al cierre del lote, no durante la ingesta.

## Estado al pausar (2026-11-11, 2ª pausa — pedido del usuario)

- Playlist «Casa/Calefacción» (28 entradas → 27 únicas): **21 fuentes committeadas** (`3aebc2b`…`ee16808`, una por fuente con git add por archivo); 4 entradas SKIP-NO-SUBS definitivas (marcadores `.no-subs`); **quedan por descargar 2 entradas (26-27/27)** y sus ingestas.
- Mejoras de herramienta esta sesión: runner con modo `--one` (bucle descarga→ingesta en agente único, pacing externo ≥50 s), `log()` robusto ante emojis (cp1252), marcadores `.no-subs` contra re-sondeos.
- Fuentes especiales ya registradas: 2 huecas (10, 11), 1 off-topic (19), 2 con marco narrativo clickbait señalado en resumen (20, 21); 6 fuentes de batería de arena (9, 14-18) candidatas a página de concepto única.
- **Pendiente al cierre del lote (consolidación aplazada)**: páginas de concepto (batería de arena ×6; espejo/sauna; estufas pirolíticas), entidades de canales, cruces con `[[...]]`, contradicciones (arena vs agua como almacenador: fuentes 15/17 vs 16), actualizar `overview.md` y `sintesis.md`, evaluar dominio para construcción (fuente 19), listar pendientes en `log.md`.
- **Reanudación**: (1) relanzar `.atl/descarga_playlist.py` con `FYT_SOURCE` y `--one` 2 veces (espaciado ≥50 s) → ingestar cada raw; (2) consolidación completa del dominio; (3) commit y push.

## Ruta VPN (tercera alternativa, validada 2026-11-11)

- La IP principal (192.168.1.11) sigue bloqueada para timedtext (429 confirmado); la ruta celular es temporal. **Ruta VPN validada**: Proton VPN Free (túnel completo, cuenta gratis, salida EE. UU. `37.19.221.228`) — el fetch pasa sin configurar nada en `fetch_yt.py` (túnel de sistema).
- **Rotación de salida**: la primera IP de Proton (45.239.32.215, salida europea vía web) estaba flaggeada; la de EE. UU. de la app funciona. Si una salida da 429, cambiar país/servidor en la app y retestear (cada prueba ~10 s). La IP de EE. UU. validada puede dejar de servir con el tiempo — retestear con `python .atl/fetch_yt.py mY-_RkYDRuM --out <archivo-de-prueba>` antes de cada lote y borrar el archivo de prueba.
- Plan B ante flaggeo masivo de Proton free: WARP de Cloudflare (infraestructura distinta) o Windscribe free (rotación manual de ubicaciones).
- Los transcripts pesan ~30-80 KB: los límites de datos de las capas gratuitas sobran.
- **Operación durante un lote**: con túnel completo no hay enrutado por pedido (a diferencia de `FYT_SOURCE`): dejar el VPN conectado durante TODA la ingesta (metadatos y git también salen por él, sin efecto adverso) y desconectar al terminar. Refinamiento opcional: split tunneling por app de Proton (Ajustes → Split tunneling → «Solo apps seleccionadas» → `python.exe`) replica el comportamiento de la ruta celular.

## Estado al pausar (ia-local, 10/58 — 2026-11-11)

- Playlist «IA Local» (58 únicas, dominio `ia-uso-practico/`): **10 fuentes con ciclo completo** (raw → resumen → páginas de concepto/entidad → cruces → commit por fuente, sin consolidación aplazada — decisión del usuario). Descarga detenida a pedido del usuario (ventana de uso).
- **En scratch sin procesar (ya descargados, marcados .done):** ninguno pendiente sin mover — los 2 raws descargados al pausar fueron procesados en ciclos posteriores (pkXUnTO7Y9c = fuente 9; yeyKPVQuiNA = fuente 10). **Pendientes de descargar: 48 entradas** + 2 META FAIL para re-pass (4nsHGYJgm94 «P-Agent», v_XTwngbUc8 «Proxy Atómico») + 1 entrada UNKNOWN (y-SXFKXvv9Q).
- **Páginas del lote ya creadas**: concepto panorama-herramientas-open-source-ia, desarrollo-con-modelos-locales, hardware-para-ia-local, por-que-ia-local + entidades llama-cpp, opencode, qwen, gemma-4, lfm, nichonauta — **las fuentes venideras deben cablearse a estas páginas** (llama.cpp/Qwen/Gemma/LFM recursan constantemente; hardware también).
- **Reanudación**: (1) procesar cualquier raw pendiente en scratch; (2) con VPN conectado, relanzar el runner completo (salta lo descargado por marcadores); (3) continuar el ciclo por fuente; (4) al cierre del lote: consolidación final + overview/sintesis + push. Detalle de procesadas 1-10 en log.md.

## Estado al pausar (ia-local, 24/58 — 2026-11-11 tarde)

- Playlist «IA Local» (58 únicas, dominio `ia-uso-practico/`): **24 fuentes con ciclo completo** (10 del primer tramo + 14 del segundo). SKIP definitivos: 8 sin subtítulos + 2 members-only (4nsHGYJgm94, v_XTwngbUc8). **En scratch sin procesar: 3 raws descargados y marcados** (nYsJn7Fbj_c «DeepSeek Harness conectar modelos», tanYJCxZJr0 «Atomic AI deep-dive», 2EAtjJbnEVk «827 GPU de 3000€» atareao) — se procesan primero al reanudar. **Pendientes de descargar: ~28 entradas** (33-58 aprox).
- **Fix aplicado al runner**: el paso de metadatos ahora pasa `--cookies-from-browser firefox` (causaba los META FAIL «list index out of range» por bot-check).
- **Reanudación**: (1) procesar los 3 raws de scratch; (2) relanzar el runner completo (salta por marcadores) e ingestar por fuente cableando a las páginas existentes: [[llama-cpp]], [[qwen]], [[gemma-4]], [[lfm]], [[proxy-atomico]], [[odysseus-ai]], [[deepseek-harness]], [[hardware-para-ia-local]], [[desarrollo-con-modelos-locales]], [[por-que-ia-local]], [[panorama-herramientas-open-source-ia]], [[nichonauta]] (el canal domina el tramo final de la playlist); (3) al cierre del lote: consolidación final + overview/sintesis + push.

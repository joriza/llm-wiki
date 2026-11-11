# Ingesta por lotes: playlist «IA-Recursos» (57 videos)

Ingesta por lotes (AGENTS.md, Operaciones 2) de la playlist de YouTube «IA-Recursos» del usuario (PLqe2XRWDm9RFPm-m87F0OUigdK8GDla3N), 57 videos, destino `inteligencia-artificial/` (decisión del usuario del 2026-11-10). Listado: .atl/playlist-ia-recursos.json. Extracción: .atl/fetch_yt.py (youtube-transcript-api + ytInitialData).

## Specs

- S1: «puedes procesar como ingesta esta lista personal de youtube? https://www.youtube.com/playlist?list=PLqe2XRWDm9RFPm-m87F0OUigdK8GDla3N» (pedido del usuario, 2026-11-10).
- S2: Modo lote EN SECUENCIA: por fuente, raw + resumen + index.md + log.md + commit; APLAZAR páginas de concepto y entidad, referencias cruzadas y contradicciones; al final listar pendientes de consolidación (AGENTS.md, Operaciones 2).
- S3: Transcripciones con metadatos (URL, canal, fecha) y marcas de tiempo [mm:ss]; normalización SOLO en resúmenes (AGENTS.md, Convenciones).
- S4: Nunca modificar archivos de raw/ existentes.
- S5: Destino aprobado por el usuario: dominio inteligencia-artificial/ (raw/inteligencia-artificial/ y wiki/inteligencia-artificial/).

## Tasks

- T1..T57: una por video, en el orden de la playlist (12sBcsVMPVE, dfBQ3Rui1Gw, aGaD7noI2xQ, O1IKmUk2Dzs, Fshy6Ele2UQ, qPtUhkAmZOc, UlvCl6rQK8U, HXo47zMFQyk, Le-ZOJ9ydtQ, bN94_jK12bo, 223beR6eoAw, V6EPzmp36iw, x14zcZHjz5M, W_RYfI8xxlg, 2CMbqUSPzjs, QVpxZyI1Iqk, UWmXrqhfP4c, nGaHoH9HHu0, oELZcpNCU9c, V9TcltcpkYY, f3MzCRVRe3E, 59GrCryltng, yLKuq6SpMfs, cfNAIQtNbKY, bYVkgvs9GbM, SkuFcjfHWi4, RRAYtqnGJPs, oHDbRdfDUc8, d6moRNMK5ik, r8bJpmw19_s, Ieanl2rmqkg, J_cMk5zEThI, 6HSc2l0oyws, VAw9w_IRMEs, HreBx99BDsc, Fn36INn_EAo, IH__GK4XBbU, QRhX4zU1jso, 7KMcc12K0fA, jYawp25fCzc, 9o1TT3ie_9M, 1PUzFg1CdbU, ZD9VE4l0WnI, T53zvm08zUg, T-X4svhiVpk, cE6AF_kNCRA, Jctradr7k-Q, HGWozEps8L8, yWx7TrhZTxg, 5JJgfcJxyyg, mjG1w1RjDKg, WM2JAuR-MOU, 1E1y9iQcu6I, FxgzAcQfro0, 7Oez8kmknOA, yucBRF3lSaQ, KkKjpyjn1vI).
- T58 [S2] Cierre del lote: listar en log.md las fuentes pendientes de consolidación y actualizar overview/sintesis.

## Log

- L1: Pedido del usuario (verbatim en S1). Playlist inicialmente inaccesible («La playlist no existe»); el usuario la hizo accesible (título «IA-Recursos», 57 videos) y eligió: primero consolidación + dominios, luego la lista.
- L2: Consolidación del lote anterior y división de dominios completadas (commits b6a10d9, 116084a). Esta tarea comienza tras esa decisión.
- L3: Decisión del usuario (2026-11-10): «procese todo lo que pueda en sub agentes para preservar el contexto principal». Delegación en paralelo a 4 gentle-ai-worker en background con superficies disjuntas (.atl/w1..w4, git-ignoreado): W1=fuentes 27-33 (task mwbhal31-1-30bg), W2=34-40 (mwbhal39-2-uw6a), W3=41-47 (mwbhal3d-3-cln6), W4=48-final (mwbhal3i-4-hhod). Cada worker: fetch raw + resumen en su scratch; el padre centraliza el movimiento a raw/inteligencia-artificial/ y wiki/inteligencia-artificial/, index.md, log.md y commits al recibir los resultados.
- Estado al delegar: confirmadas 1-26 (commits 90ff26c..d28bcf0); pendientes 27-57. La fuente 27 (OpenSpec, oHDbRdfDUc8) tiene su raw ya generado; su resumen quedó a cargo de W1.
- L4: Orden del usuario (2026-11-10): «me estoy quedando sin ventana de uso. cuando finalicen los worker activos actuales, cierre acá». Protocolo de cierre al recibir las completaciones de W1-W4: (1) mover .atl/wN/<raw>.md → raw/inteligencia-artificial/ y .atl/wN/resumen-*.md → wiki/inteligencia-artificial/; (2) agregar filas de índice y entradas de log en bloque (una por fuente, compactas); (3) UN commit único con todo el estado del lote; (4) NO ejecutar consolidación ni T58 completo — quedan anotados como pendientes para la próxima sesión. Si algún worker no terminó antes del cierre: sus productos persisten en .atl/wN/ (en disco) y el reingreso debe moverlos e indexarlos igual. Estado de workers al registrar: los 4 running.
- L5: Orden del usuario (2026-11-10): «cierre al menos 2 workers, están recibiendo error 429». Cancelados W1 (mwbhal31-1-30bg) y W4 (mwbhal3i-4-hhod) por saturación de cuota; continúan W2 (34-40) y W3 (41-47). Al terminar W2+W3 se ejecuta el protocolo de cierre de L4 sobre sus productos, más el rescate de lo que W1/W4 hayan dejado en .atl/w1/ y .atl/w4/ (sus rangos completos o restantes pasan a pendientes de reingreso).

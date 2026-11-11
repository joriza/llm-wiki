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

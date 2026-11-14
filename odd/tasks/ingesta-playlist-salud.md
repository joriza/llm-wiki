# Ingesta playlist «Salud» (salud-fitness/) — 17 fuentes

## Specs

- S1: «Procese en paralelo todas las fuentes de la lista https://www.youtube.com/playlist?list=PLqe2XRWDm9REqz7nMPkuwEvYHYWQBti0t» (2026-11-13). Aclaración del usuario: «en un sub-agente es la descarga y en otros sub agentes es el proceso de lo descargado» — pipeline: descarga secuencial gated + procesamiento en paralelo de lo descargado.
- S2: Modo lote EN SECUENCIA para la descarga (regla dura L7: nunca workers paralelos contra YouTube; runner gated `descarga_playlist.py`); procesamiento (resúmenes) en paralelo sobre raws ya en disco. De cada fuente: raw + resumen + index.md + log.md. APLAZAR: páginas de concepto/entidad, cruces y contradicciones (consolidación posterior); igualmente el clúster fitness-senior ([[fitness-senior]]) recibe cruces evidentes.
- S3: Dominio nuevo `salud-fitness/` confirmado por el usuario (2026-11-13): ejercicio, movilidad, grasa/cuerpo, nutrición deportiva y sueño; el clúster fitness-senior de general/ (WL-4/5/16/30) queda cruzado, no movido. Registrar el dominio en `wiki/dominios.md`, `index.md` y `log.md`.
- S4: Normalización de ASR (puntuación, nombres propios) SOLO en los resúmenes; el raw nunca se edita.
- S5: Commit por fuente por el orquestador, en tajadas revisables; cierre del lote con pendientes de consolidación listados en log.md.

## Tasks

- T1 [S2] Descarga gated secuencial de las 17 fuentes (runner, budget 17, sonda de salida) → raws en `.atl/scratch/salud/`; meta-fail ×2 → skip y re-pass.
- T2 [S2] Resúmenes en paralelo por workers de procesamiento: uno por raw descargado → `wiki/salud-fitness/resumen-<slug>.md` citando `raw/salud-fitness/<archivo>`; canal/entidades y cruces APLAZADOS salvo [[fitness-senior]].
- T3 [S3] Alta del dominio `salud-fitness/`: carpeta wiki/ + raw/, fila en `wiki/dominios.md`, `index.md`, log.md.
- T4 [S1] Commits por fuente + cierre del lote en log.md (pendientes de consolidación, UNKNOWN, faltantes).
- T5 [S1] Consolidación diferida del lote (página(s) de concepto/entidad por umbral ≥2, contradicciones, overview/sintesis) — pasada posterior o al cierre.

## Log

- L1: Pedido original verbatim (S1) + decisión de dominio: «Nuevo dominio salud-fitness/».
- L2: Inventario (orden de la playlist, ID | título): 1 OuAiit5cyVM 7 ALIMENTOS para DORMIR como NUNCA · 2 xtzuF3Tijl8 10 ALIMENTOS para GANAR MÚSCULO Después de los 50 · 3 WSIll9uBVzA 6 Ejercicios que Lamentarás Haber Ignorado · 4 HZSqhLG-w7I NUEVO método para caminar · 5 uDr_HvBtXVM quemar grasa visceral rutina · 6 w5qxvEuSkQc 6 Ejercicios únicos músculo 40+ · 7 IhHvT44Rgmo Perder grasa abdominal nuevo estudio · 8 DLGuK2hFC-Y Por qué un perro no nos alcanza en 40km · 9 LVW8akHqvoY 6 Estiramientos Monje Shaolin · 10 KdMPpwc9A3w 6 Ejercicios japoneses fuerza piernas · 11 GfX9-JAFWRg 5 Ejercicios isométricos · 12 NtT1P6tu8yY dolor espalda/cervical/ciática · 13 4u-s1SDWLvw Morning Chair Routine 50+ · 14 nWAKf4kACMc RUNNING EN CASA sin cinta · 15 8tx_ISdZpa8 cuánto caminar para perder grasa · 16 aCN6DzRrxzY 7 Cosas que queman más grasa que 10.000 pasos · 17 AFEvLyHJnyg músculos sin salir de la cama.
- L3: Dedupe pre-flight 17/17 limpio contra raw/, wiki/, index.md (2026-11-13). Snapshot del listing: `.atl/scratch/playlist-nueva.json`.
- L4: Incidencias del carril de descarga resueltas (2026-11-14, orquestador): (a) invocación del runner con cwd equivocado (estado fantasma .atl/.atl/) — eliminado; (b) loop bash comparando texto en vez de exit codes — corregido; (c) /tmp inexistente en Git-Bash — ruta local; (d) runner no saltaba meta-fail (regla WL-13) — añadido «meta-fail» a STATUSES_SKIP de .atl/descarga_playlist.py; para un re-pass futuro, resetear a «pending» los meta-fail en estado.json. OuAiit5cyVM meta-fail ×2 (skip tramo). Presupuesto de la salida 143.244.44.179 reseteado a 0 (inflado por intentos fallidos, 0 descargas reales) — registrado en salidas.md.
- L5: Fix estructural del carril (2026-11-14): «0 formatos» de yt-dlp en --dump-json (causa del 100 % de los meta-fails del tramo) resuelto con --ignore-no-formats-error en el bloque de metadatos de .atl/descarga_playlist.py (+ META-RETRY ×3 previo); yt-dlp ya estaba en última versión. HZSqhLG-w7I reseteado a pending. OuAiit5cyVM meta-fail ×20 → skip definitivo (WL-13).

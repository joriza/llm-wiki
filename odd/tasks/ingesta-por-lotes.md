# Ingesta por lotes de raw/para-ingesta.txt

Ingesta por lotes de las entradas sin procesar (11 URLs de YouTube pendientes). Modo lote conforme a AGENTS.md.

## Specs

- S1: «relice una ingesta por lotes de las entradas sin procesar» (pedido del usuario, 2026-11-10).
- S2: «procesar los documentos EN SECUENCIA (uno a la vez; fragmentar los largos)» (AGENTS.md, Operaciones 2).
- S3: «De cada fuente: leer, escribir resumen, actualizar index.md y log.md» (AGENTS.md, Operaciones 2).
- S4: «Aplazar deliberadamente: páginas de concepto y entidad, referencias cruzadas y detección de contradicciones» (AGENTS.md, Operaciones 2).
- S5: «Al finalizar el lote, listar en log.md las fuentes pendientes de consolidación» (AGENTS.md, Operaciones 2).
- S6: Transcripciones de YouTube: guardar en `raw/` como Markdown con metadatos (URL, canal, fecha) y marcas de tiempo `[mm:ss]` por bloque; la normalización (puntuación, errores de reconocimiento) SOLO en los resúmenes, jamás en el archivo original (AGENTS.md, Convenciones).
- S7: «Tras cada ingesta: git add -A && git commit con mensaje descriptivo de la operación» (AGENTS.md, Convenciones).
- S8: Nunca modificar archivos de `raw/`; `raw/para-ingesta.txt` se conserva intacto.
- S9: Las 2 primeras URLs del archivo (`uDBXpyhokfI`, `bH7JU4ctpu8`) ya están procesadas (log 2026-11-10, ingestas 2 y 3); el lote cubre las 11 restantes, en el orden del archivo.

## Tasks

- T1 [S1-S9] Ingesta fuente 1/11: https://www.youtube.com/watch?v=_2lQ-xepUbU — HECHA (raw + resumen + index + log; commit pendiente de registro)
- T2 [S1-S9] Ingesta fuente 2/11: https://www.youtube.com/watch?v=MDRCJ5vgSJk
- T3 [S1-S9] Ingesta fuente 3/11: https://www.youtube.com/watch?v=SFW9V-GZ7gs
- T4 [S1-S9] Ingesta fuente 4/11: https://www.youtube.com/watch?v=TGHJl3Jq91k
- T5 [S1-S9] Ingesta fuente 5/11: https://www.youtube.com/watch?v=gthW3hGebB0
- T6 [S1-S9] Ingesta fuente 6/11: https://www.youtube.com/watch?v=f_dzGFdH0UM
- T7 [S1-S9] Ingesta fuente 7/11: https://www.youtube.com/watch?v=SGoWw1XMRR4
- T8 [S1-S9] Ingesta fuente 8/11: https://www.youtube.com/watch?v=YP-hPDsz-XA
- T9 [S1-S9] Ingesta fuente 9/11: https://www.youtube.com/watch?v=Pf8RyANE1I4
- T10 [S1-S9] Ingesta fuente 10/11: https://www.youtube.com/watch?v=uRBL7io48kU
- T11 [S1-S9] Ingesta fuente 11/11: https://www.youtube.com/watch?v=KB7IV_GhjTY
- T12 [S4-S5] Cierre del lote: listar en log.md las fuentes pendientes de consolidación (conceptos, entidades, referencias cruzadas, contradicciones) y proponer reevaluación de dominios.

Cada tarea Ti termina con: raw creado, resumen en wiki/, fila en index.md, entrada en log.md, commit.

## Log

- L1: «relice una ingesta por lotes de las entradas sin procesar» (pedido original del usuario).
- L2: Verificado en log.md que las URLs 1-2 del archivo ya fueron ingeridas el mismo día; se excluyen del lote (S9).

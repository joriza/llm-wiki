# Ingesta playlist self-hosting

Ingesta de la playlist de YouTube PLqe2XRWDm9REb1UoHx_OJi9mf1ZFXivVz (11 entradas únicas, self-hosting/homelab) al dominio nuevo `self-hosting/`, con bucle descarga→ingesta del runner v2 y relevo de subagente cada 5 fuentes.

## Specs

- S1: "Procese la lista https://www.youtube.com/playlist?list=PLqe2XRWDm9REb1UoHx_OJi9mf1ZFXivVz"
- S2: "Recuerde procesar en un unico sub-agente." (un subagente por tramo, relevos; contexto principal delgado)
- S3: "con relevo cada 5 fuentes" (cortes solo en frontera committed)
- S4: Dominio nuevo `self-hosting/` aprobado por el usuario (dominios.md, index.md, log.md).
- S5: Protocolo íntegro de `protocolo-ingesta-youtube.md` (Regla de descarga v2: puerta mecánica, sonda, taxonomía de errores, commit por fuente con git add por archivo, SKIP definitivo sin subtítulos, 429 → TRAMO-CLOSED).
- S6: Estado al pausar 2026-11-15: fuente 1 (8qxX43V2GCE) descargada en scratch, pendiente de procesar; salida 45.239.32.215 con sonda OK.

## Tasks

- T1 (S1-S6, worker, commit): Relevo 1 — fuentes 1-5. Procesar raw de scratch primero; runner `--one --budget 5`; ciclo por fuente completo (raw intacto → resumen → cruces → index/log → commit por archivo); lectura-tramo1.md.
- T2 (S1-S5, worker, commit): Relevo 2 — fuentes 6-10. Mismo ciclo; lectura-tramo2.md.
- T3 (S1-S5, parent+worker, commit, DONE 2026-11-15): Relevo 3 — fuente 11 + consolidación final (páginas de concepto/entidad, cruces, contradicciones), overview.md, sintesis.md, lectura-tramo3.md. Push solo bajo orden del usuario.

## Log

- L1: "Procese la lista https://www.youtube.com/playlist?list=PLqe2XRWDm9REb1UoHx_OJi9mf1ZFXivVz / Recuerde procesar en un unico sub-agente." — pedido original (2026-11-15).
- L2: "con relevo cada 5 fuentes" — precisión del usuario al relanzar (2026-11-15).
- L3: Dominio nuevo `self-hosting/` aprobado vía pregunta al usuario; creado y commiteado (169deec8).
- L4: Primer intento de writer rechazado por admisión del runtime (exige Spec ODD, backstop o 2+ writers disjuntos). Pausa a pedido del usuario ("detenga para solucionar"); estado documentado en protocolo-ingesta-youtube.md (ede285ee).
- L5: "ok. implemente la opcion 1" — usuario aprueba documento de feature ODD (legítimamente tarea grande: multi-sesión, esperas externas, no resumible desde diff) para habilitar el modo subagente con relevos.

- L6: Cierre 2026-11-15: 11/11 con ciclo completo (T1: cea53077…11306a89; T2: d0aa239e…354581d4; fuente 11: 5aadd6c8). Consolidación T3 por worker: hub self-hosting.md, docker-homelab, pi-hole, casaos, entidad virtualizationhowto, cruce proxmox-homelab, contradicción Delalande vs VirtualizationHowto resuelta (no-contradicción), overview hilo 21, sintesis sección 17 (43087838, acf54109, c6810c71, 97efd778). Implementación permanente: plantilla odd/tasks/_plantilla-ingesta-playlist.md + nota en protocolo (5284a82b). Sin 429 ni skips en todo el lote. Push pendiente de orden del usuario.

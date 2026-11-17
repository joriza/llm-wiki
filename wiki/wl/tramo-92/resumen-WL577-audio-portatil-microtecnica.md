# WL-577 — Diseña tu propio sistema de audio Portatil

- **Fuente original**: `raw/wl/tramo-92/2026-04-14-disena-tu-propio-sistema-de-audio-portatil.md` ([Vídeo](https://www.youtube.com/watch?v=X6gGmzr4W3M))
- **Canal**: MICROTECNICA
- **Publicado**: 2026-04-14 · **Duración**: 27:36
- **Dominio provisional**: electronica-practica (audio/amplificadores)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tutorial didáctico completo de diseño de un sistema de audio portátil con módulos baratos, organizado en las «tres decisiones» previas (potencia/impedancia del parlante, alimentación externa vs batería, solo amplificar vs Bluetooth/radio) y cerrado con armado real:

- **Leer el parlante**: potencia máxima e impedancia vienen impresas en el cono (ejemplos reales: 15 W/4 Ω, 8 Ω/2 W, 6 Ω/5 W, 25 W/8 Ω, woofer 50 W); **polaridad por movimiento del cono** (alimentar y ver si sale o se hunde) y la regla de fase: todos los conos hacia afuera o hay cancelación en graves.
- **Margen de potencia**: al parlante de X W ponerle un amplificador de X o ~10 % menos; la regla de oro del video: **leer el datasheet del fabricante, no el marketing del módulo** — el PAM8403 «tira 3 W» solo con 5 V y carga de 4 Ω; con 3,7 V (celda de litio) y 8 Ω entrega 0,9 W; el PAM8610 entrega 10 W/canal con 8 Ω y 15 W con 4 Ω a 12,5 V — el abanico potencia=tensión×impedancia es el corazón didáctico del video. Nota de campo: el datasheet del 8610 dice 7 V mínimo pero «lo probé con 7 y no funciona; a 8,2 V rendía sin distorsión» — experiencia propia corrigiendo al fabricante.
- **Arquitectura modular**: Bluetooth de salida lineal (nivel bajo) + amplificador + módulo de carga TP4056 son tres bloques separables, o una placa todo-en-uno; mezclas de tensiones resueltas con **LM7805** (hasta 1 A sin disipador, 1-1,5 A con él).
- **Autonomía como aritmética**: consumo a máxima potencia ÷ capacidad de celdas = horas (ejemplo de rechazo: amplificador 2.1 de 50+100 W con 6 celdas de 2,5 Ah «dura 30 minutos — una picardía»; el PAM8610 con 1,2 A máx y 3 celdas de 3 Ah ≈ 2 h, con BMS y equalización); «a mayor potencia, más celdas: eso es equipo fijo, no portátil».
- **Armado real al final**: Bluetooth 5 V + PAM8610 12,5 V + 7805 intermedio, soldadura a 350 °C, prueba de sonido con dos parlantes 4 Ω/20 W — «miren el ruido que hacemos con estas dos placas»; cierre con las dos opciones de alimentación (fuente 12 V o pack 3S 12,6 V con BMS y cargador).

## Señales de triage

- **1.ª mano con datasheets como fuente primaria**: la metodología «PAM8403 espacio datasheet en Google, no hay mentiras que creer» es la mejor práctica del video; las correcciones propias al datasheet (7 V no funciona) son experiencia declarada.
- Demo final auditiva (no medible en texto); cifras de potencia citadas del datasheet — trazables.
- ASR: «PM8403/PAM 8403», «TP456» por TP4056, «datet», «litro» por litio, «baffle», «316» (¿pegamento/loctite?), «consola lanza misiles» ( PSU de banco) — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- **electronica-practica** (audio: eco del clúster de amplificadores; canales de audio en la wiki): par con WL-555 (audio reparado) y WL-569 (banco de pruebas) — hilo «medir antes de conectar».
- «Datasheet > marketing del módulo» ↔ [[routing-por-coste]] (specs reales vs promesa) y WL-561 (no confiar en la superficie); «la letra chica de la potencia según impedancia» ↔ WL-559 (mismas fichas, distintas capacidades).
- Autonomía como aritmética consumo/capacidad ↔ [[kit-usb-portable]] (WL-468) y el clúster de baterías/litio con BMS.
- MICROTECNICA entidad candidata (1.ª fuente, texto plano).

## Veredicto de triage

Muy útil: tutorial metodológico completo (decidir → datasheet → módulos → aritmética de batería → armado), con la lección central exportable («la potencia real depende de tensión e impedancia: leer el datasheet»). Prueba final solo auditiva — señalada. Consolidación diferida (L12): electronica-practica, MICROTECNICA entidad candidata.

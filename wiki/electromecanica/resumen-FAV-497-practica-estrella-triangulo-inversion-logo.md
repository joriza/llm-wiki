# Resumen: Práctica 3.5 — LOGO! RS: arranque estrella-triángulo con inversión de giro

- **Fuente**: `raw/electromecanica/2026-11-15-practica-35-logo-rs-estrella-triangulo-inversion.md` ([YouTube](https://www.youtube.com/watch?v=OaqSaC__qnU), FAV-497, carpeta Electromecanica/PLC)
- **Canal**: José Miguel Pantoja Solano
- **Publicado**: 2023-12-30 · **Duración**: 35:40 · **Recopilado**: 2026-11-15

## Qué cubre

Práctica formativa (formato «PRÁCTICA 3.5», apunte de curso) que combina las dos fuentes anteriores de la carpeta y las extiende: **arranque estrella-triángulo con inversión de giro** de un motor trifásico, programado en un LOGO! real y montado físicamente (control con lámparas piloto + fuerza con 4 contactores). Es la versión extendida de [[resumen-FAV-494-arranque-estrella-triangulo-plc-logo]] (sin inversión) y el paralelo de [[resumen-FAV-496-arranque-estrella-triangulo-cade-simu]] (simulado).

## Ideas clave

- **Programación LOGO! (4 salidas)**:
  - **Q1 = marcha derecha (K1)**: RS con S = AND(I1, I3) — exige presencia de línea; R = OR(Q4, ¬I3, ¬I4).
  - **Q4 = marcha izquierda (K4)**: RS con S = AND(I2, I3); R = OR(Q1, ¬I3, ¬I4). El **enclavamiento cruzado Q1↔Q4** (cada uno resetea al otro) impide ambas marchas simultáneas.
  - **Q3 = estrella (K3)**: RS con S = AND(OR(I1,I2), I3); R = OR(salida del temporizador, ¬I3, ¬I4) — arranca en estrella con cualquiera de las dos marchas.
  - **Q2 = triángulo (K2)**: RS con S = temporizador **On-delay de 5 s** activado por OR(Q1,Q4); R = OR(¬I3, ¬I4). La condición ¬I3/¬I4 (paro / relé térmico F1) corta todo globalmente.
- **Inversión de giro en fuerza**: el contactor **K4 cruza dos fases** respecto de K1 (borne 4↔6 y 6↔4 cruzados) — el truco físico clásico de inversión en motores trifásicos.
- **Circuito de control**: interruptor termomagnético (fase+neutro), pulsador S1 (NA, marcha derecha) y S2 (con contactos NA+NC, marcha izquierda), **paro en I3** y **relé térmico F1 (contacto NC, borne 95-96) en I4** como seguridad global; salidas Q1–Q4 a bobinas A1 de los 4 contactores con lámparas piloto (verde/blanco/amarillo/azul) y retornos comunes a neutro.
- **Verificado en el montaje real**: marcha derecha con S1 arranca en estrella y pasa a triángulo a los 5 s; el enclavamiento eléctrico funciona — **no invierte en marcha** (S2 estando en S1 no hace nada; hay que pasar por paro primero). Prueba simétrica hacia la izquierda con S2.

## Notas

- ASR con garbiñeos («sime» por Siemens, bornes garbiñeados); normalizado solo aquí.
- Umbral consolidado: **arranque estrella-triángulo 3 fuentes** (FAV-494/496/497 — la última con inversión de giro) → página de concepto candidata para la consolidación al cierre de la ventana. Canal José Miguel Pantoja Solano: 1 fuente.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[plc-relays-a-ladder]].

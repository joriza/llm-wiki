# Resumen: Arranque Estrella Triángulo en PLC LOGO! Siemens

- **Fuente**: `raw/electromecanica/2026-11-15-arranque-estrella-triangulo-plc-logo.md` ([YouTube](https://www.youtube.com/watch?v=zo-dp7Wk3QM), FAV-494, carpeta Electromecanica/PLC)
- **Canal**: Antonio Delg
- **Publicado**: 2023-10-18 · **Duración**: 20:44 · **Recopilado**: 2026-11-15

## Qué cubre

Programación **en el propio equipo LOGO! de Siemens** (desde su pantalla y botones, sin software de PC) de un **arranque estrella-triángulo** con maqueta física de 3 contactores — la contraparte programada del cableado de [[resumen-FAV-491-cableado-plc-logo]] y la teoría de [[resumen-FAV-490-conceptos-basicos-plc]].

## Ideas clave

- **Topología del programa**: 3 salidas Q → 3 contactores: **Q1 = KM1** (linea, permanece), **Q3 = KM3** (estrella, entra primero), **Q2 = KM2** (triángulo, entra al vencer el temporizador).
- **Bloque RS (latch/relay) por salida**: Start en S (pulsador NA en I2), Stop en R (pulsador NC en I1). Detalle clave: el LOGO! está pensado para **contactos abiertos**, así que cada contacto físicamente cerrado se **niega/invierte en el programa** engrosando la línea de entrada (alternativa: bloque NoC).
- **Enclavamiento estrella↔triángulo**: Q2 y Q3 **jamás pueden estar activos a la vez** — en la lógica de cada uno se inserta el otro como contacto negado (serie en bloque AND para Q2; rama en bloque OR para Q3).
- **Temporizador con tiempos desfasados**: el cambio estrella→triángulo lo ejecuta un temporizador (bloque On-delay) activado por Q1. Táctica de seguridad: **los tiempos de Q3 y Q2 NO deben ser iguales** — Q3 a 5,0 s y Q2 a 5,1 s garantiza que la estrella se apague antes de que entre el triángulo (sin traslape ni aunque sea por milésimas).
- **Navegación del equipo**: ruta de teclas para programar en pantalla — Program PLT → Editar programa → Nuevo; carpeta **GF** (funciones básicas: AND, OR) vs **SF** (funciones especiales: RS ~52 bloques, temporizadores).
- **Prueba en maqueta**: al pulsar Start entran Q1+Q3 (estrella); a los ~5 s cae Q3 y a los 5,1 s entra Q2 (triángulo, régimen permanente); el Stop desenergiza todo. Verificado físicamente sobre los contactores de la maqueta.

## Notas

- ASR con garbiñeos («lachin relay» por latching relay, «Star/Stock» por Start/Stop); normalizado solo aquí.
- Umbral deferido: **arranque estrella-triángulo** como concepto acumula esta fuente + FAV-496/497 (prácticas siguientes de la carpeta). Canal Antonio Delg: 1 fuente.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[plc-relays-a-ladder]].

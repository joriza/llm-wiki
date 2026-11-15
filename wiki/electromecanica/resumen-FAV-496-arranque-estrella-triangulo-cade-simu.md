# Resumen: Arranque estrella-triángulo con PLC LOGO! en Cade Simu

- **Fuente**: `raw/electromecanica/2026-11-15-arranque-estrella-triangulo-cade-simu.md` ([YouTube](https://www.youtube.com/watch?v=cYQZbnc1BNQ), FAV-496, carpeta Electromecanica/PLC)
- **Canal**: Aprendiendo Electricidad Industrial
- **Publicado**: 2025-05-09 · **Duración**: 17:49 · **Recopilado**: 2026-11-15

## Qué cubre

Montaje completo en **Cade Simu** de un arranque estrella-triángulo comandado por un PLC LOGO! de Siemens: circuito de control (conexiones I/Q), **circuito de fuerza trifásico** y **programación en lenguaje ladder** — integra los tres planos que los videos vecinos tratan por separado ([[resumen-FAV-491-cableado-plc-logo]]: cableado; [[resumen-FAV-494-arranque-estrella-triangulo-plc-logo]]: programación en el equipo real).

## Ideas clave

- **Control**: LOGO! alimentado a 24 V (P1+/P2−), Start en I1, Stop en I2, bobinas KM1 (fuerza), KM2 (delta) y KM3 (estrella) en Q1–Q3 con sus salidas alimentadas.
- **Fuerza**: línea trifásica → **guardamotor** (doble función: térmico + automático) → contactor KM1 → KM2/KM3; **motor de 6 puntas** con el conexionado invertido típico (la punta del medio siempre al centro; la última salida a la primera punta para cerrar estrella).
- **Ladder (lenguaje escalera)**: arranca como un arranque directo — contacto NA (I1/Start), NC (I2/Stop), bobina Q1 y **enclavamiento**; sobre eso se agrega la lógica de transición:
  - Q3 (estrella) activa un **temporizador de conexión de 5 s** de reposo.
  - **Segundo temporizador de protección de 10 ms** (dado el caso 0,1): evita el instante de traslape entre estrella y delta, «porque se hace muy rápido» y sin él el motor sufre corto o daño.
  - Enclavamientos cruzados por contactos NC entre Q3 y Q2 (estrella jamás junto a delta).
- **Referencias obligadas**: en ladder las etiquetas deben ser las del PLC (I1/I2, Q1/Q2/Q3) — usar nombres libres «no funciona» porque todo se vincula al módulo.
- **Simulación**: guardamotor arriba, Start → estrella 5 s → pasa a delta automáticamente. El video cierra honesto: la secuencia funciona (KM1/KM2 enclavadas) pero quedó un cable de fuerza sin energizar el motor — error de conexionado a revisar.

## Notas

- ASR con garbiñeos («Catim/Catimu» por Cade Simu, «lader» por ladder, «estería» por estrella); normalizado solo aquí.
- Umbral acumulado: **arranque estrella-triángulo 3 fuentes** (FAV-494/496 + FAV-497 próxima) y **Cade Simu 2+** — consolidación diferida. Canal Aprendiendo Electricidad Industrial: 1 fuente (emite también para el grupo «Ingeniería Eléctrica de Geosas»).

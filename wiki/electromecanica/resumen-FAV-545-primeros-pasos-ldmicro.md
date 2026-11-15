# Resumen: Primeros pasos en LDmicro (Gaston Sebastian Gallego)

- **Fuente**: `raw/electromecanica/2026-11-15-primeros-pasos-ldmicro.md` ([YouTube](https://www.youtube.com/watch?v=hj08CY_HIII), FAV-545, carpeta Electromecanica)
- **Canal**: Gaston Sebastian Gallego
- **Publicado**: 2022-09-04 · **Duración**: 13:29 · **Recopilado**: 2026-11-15
- **Nota**: `&list=` ajena ignorada por S4. Segunda fuente LDmicro (con [[resumen-FAV-544-ldmicro-arduino-nano-bootloader]] y [[resumen-FAV-546-ldmicro-xloader-arduino]]) — clase con docente (menciona clase previa).

## Qué cubre

Introducción al **lenguaje ladder** desde LDmicro, orientada a quien viene de PLCs industriales (contexto Bahía Blanca: Siemens domina; TIA Portal con licencia).

## Ideas clave

- **Ladder como lenguaje universal de PLCs**: cada fabricante tiene su entorno pero todos son visualmente parecidos — «aprendés acá y después programás en cualquier cosa». Contactos = entradas, **bobinas** = salidas (llamadas así porque activan las bobinas de relés de 24 V).
- **Anatomía**: alimentación arriba, tierra abajo; la «corriente virtual» del ladder fluye de positivo a tierra; **rails** permiten distintos niveles (líneas).
- **Instrucciones básicas**: contacto (tecla `c`, configurable NA/NC — *negated*), bobina (tecla `l`), **AND** implícito en serie (los dos contactos deben estar cerrados para que llegue la corriente), enclavado (contacto ligado a la propia salida con la misma etiqueta).
- **Regla práctica**: **renombrar siempre** los contactos (X1 etc. da errores en simulación/compilación).
- **Simulación en tiempo real**: cambiar estados de entradas a mano y ver las salidas — primer ejercicio AND.
- **Temporizador TON** (retardo a la conexión): al accionar el contacto, espera N ms antes de levantar la salida (ej. 500 ms).
- Al cierre del video: intro a **contadores** (tipo on/off con reset) para el próximo capítulo.

## Cruces

- **Umbral LDmicro/ladder ya con 4 fuentes** (FAV-544/545/546 + serie El Profe Zurco) + clúster PLC industrial (FAV-490..497) → concepto **PLC: industrial vs ladder-hobby** candidato firme para consolidación.
- Bases: [[resumen-FAV-490-conceptos-basicos-plc]] (ciclo de escaneo, entradas/salidas), FAV-494/496/497 (ladder LOGO! con las mismas estructuras).

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[plc-relays-a-ladder]].

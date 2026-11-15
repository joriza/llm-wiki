# Resumen: Cómo realizar el cableado de PLC LOGO! 12/24RCE

- **Fuente**: `raw/electromecanica/2026-11-15-cableado-plc-logo-1224rce.md` ([YouTube](https://www.youtube.com/watch?v=0gEZE2ubCZE), FAV-491, carpeta Electromecanica/PLC)
- **Canal**: Automatizando Ideas
- **Publicado**: 2023-01-07 · **Duración**: 19:42 · **Recopilado**: 2026-11-15

## Qué cubre

Lección práctica de **cableado del Siemens LOGO! 12/24RCE** construida en el simulador **Cade Simu** — es el puente entre la teoría del PLC de [[resumen-FAV-490-conceptos-basicos-plc]] y las prácticas de arranque estrella-triángulo ([[resumen-FAV-494-arranque-estrella-triangulo-plc-logo]] y siguientes de la carpeta).

## Ideas clave

- **Antes de cablear**: tener a mano la **hoja de datos técnicos** del modelo concreto y un **circuito de referencia de cableado** — la alimentación, las entradas y las salidas varían según el modelo, y equivocarse daña (o quema) el equipo.
- **Modelo trabajado**: LOGO! 12/24RCE — alimentación, entradas y salidas en **24 V DC**; el error típico es conectarlo a corriente alterna y dañarlo.
- **Alimentación**: protección termomagnética → **fuente de alimentación 24 V DC** → borne L+/M del LOGO!. La **puesta a tierra** de la fuente es obligatoria al trabajar con equipo electrónico. Prueba recomendada antes de seguir: energizar y verificar que la pantalla del PLC encienda (y que se apague al cortar).
- **Limitaciones del simulador Cade Simu** (que el video señala explícitamente): no simula **entradas analógicas** (el LOGO! real permite convertir digitales en analógicas 0–10 V) ni **salidas de tipo transistor** — solo salidas de relé; y admite alimentación AC y DC, pero el cableado aquí respeta el modelo 12/24RCE (DC).
- **Entradas digitales**: 2 pulsadores normalmente abiertos (bornes 3-4) + 1 normalmente cerrado (bornes 1-2), con **común positivo**; la pantalla del PLC muestra el estado en vivo (el NC está activo en reposo y se corta al pulsar) — verificación práctica de que el cableado es correcto.
- **Salidas**: cada salida de relé funciona como un **contacto/interruptor** comandado por el programa: se cablea el positivo al borne Q, la carga (relés intermedios: dos en 24 V DC y uno en 220 V AC) y el retorno. Un contacto de relé puede conmutar **AC o DC**, respetando los límites máximos de carga inductiva y resistiva del equipo.
- **Moraleja del video**: con el cableado perfecto y sin programa, pulsar las entradas **no activa nada** — a diferencia de un arranque directo con contactor, el PLC exige cargar una **lógica de programación** que defina el comportamiento; «no todo se resuelve cableando».

## Notas

- ASR con garbiñeos («peces» por PLC, «acá decimos» por Cade Simu, «cadecimos»); normalizado solo en este resumen.
- Umbral deferido: **Cade Simu** ya acumula referencias (FAV-493 lista relacionada, FAV-496/497 prácticas en Cade Simu) — candidato a página de concepto/entidad en consolidación. Canal Automatizando Ideas: 1 fuente en la ventana.

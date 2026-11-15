# Resumen: Cómo leer un sensor analógico 4–20 mA (autosen AP016) en PLC LOGO!

- **Fuente**: `raw/electromecanica/2026-11-15-sensor-analogico-4-20ma-plc-logo.md` ([YouTube](https://www.youtube.com/watch?v=oK0rGYagn8s), FAV-495, carpeta Electromecanica/PLC)
- **Canal**: AV Smart Solutions
- **Publicado**: 2025-10-13 · **Duración**: 11:19 · **Recopilado**: 2026-11-15

## Qué cubre

Conexión y **escalamiento de un sensor de presión de 2 hilos con salida 4–20 mA** (Autosen AP016, 0–10 bar) sobre un LOGO! 12/24RCE de Siemens — caso práctico de entrada analógica que continúa la línea de cableado de [[resumen-FAV-491-cableado-plc-logo]] y la introducción de [[resumen-FAV-490-conceptos-basicos-plc]].

## Ideas clave

- **Verificación previa con instrumento patrón**: comprobar que la señal entregada coincide con la hoja de datos del fabricante antes de conectar (4 mA @ 0 bar, 12 mA @ 5 bar…).
- **Conversión mA → V por ley de Ohm**: el LOGO! **no mide corriente, mide voltaje** — una **resistencia de 500 Ω** entre la entrada analógica (I7) y masa convierte 4–20 mA en 2–10 V.
- **Cableado 2 hilos**: brown = alimentación 24 V, white = salida analógica a la entrada configurable (el 12/24RCE tiene 4 entradas analógicas); resistencia entre entrada y masa.
- **Interpretación interna del LOGO!**: no lee 0–10 V directamente sino una escala entera **0–1000**; como el sensor arranca en 4 mA (2 V), el rango útil es **200–1000**, no 0–1000.
- **Escalamiento en LOGO! Soft Comfort**: bloque de entrada analógica → **bloque amplificador analógico** (sensor 4–20 mA, rango 200–1000) → **bloque de instrucción aritmética**: restar el mínimo (200) para que 0 bar dé 0, y multiplicar por el **factor de conversión** (10/800 = 0,0125; el LOGO! no acepta decimales → se maneja como entero y el punto decimal se muestra en el bloque de texto de aviso). Los bloques se habilitan con un 1 lógico (negando el conector o marca de estado high).
- **Validación en vivo**: programa cargado por Ethernet (PC→LOGO); lectura en pantalla contrastada en tiempo real con el instrumento patrón (0/4/3/2 bar coincidentes).

## Notas

- ASR con garbiñeos («420 mamp», «milán pére» por mA); normalizado solo aquí.
- Umbral deferido: **4–20 mA / señales analógicas industriales** — esta es la 2ª fuente del tema en la wiki (FAV-354 en electronica-practica, FAV-495 aquí) → cruce candidato a concepto en consolidación. Canal AV Smart Solutions: 1 fuente.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[plc-relays-a-ladder]].

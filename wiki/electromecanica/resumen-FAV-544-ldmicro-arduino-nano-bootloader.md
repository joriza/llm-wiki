# Resumen: LDmicro con Arduino Nano — bootloader y grabación (El Profe Zurco)

- **Fuente**: `raw/electromecanica/2026-11-15-ldmicro-arduino-nano-bootloader.md` ([YouTube](https://www.youtube.com/watch?v=ieUgc414Et4), FAV-544, carpeta Electromecanica)
- **Canal**: El Profe Zurco
- **Publicado**: 2021-09-25 · **Duración**: 11:05 · **Recopilado**: 2026-11-15

## Qué cubre

Capítulo 10 de la serie **LDmicro** (ladder → microcontrolador): cómo grabar el hex compilado en un **Arduino Nano** cuando AVRDUDES no lo detecta — problema del **bootloader antiguo vs Optiboot** y dos soluciones. Conecta con el clúster PLC del dominio (FAV-490..497).

## Ideas clave

- **El problema**: LDmicro compila para ATmega328P y graba vía AVRDUDES, pero los Nano con **bootloader viejo** (protocolo distinto al Optiboot actual) no son detectados por la herramienta.
- **Solución 1 — programador ISP externo**: USBasp o USB-TinyISP conectado al header ICSP del Nano (MISO/MOSI/SCK/RESET/5V/GND) — funciona pero «no es práctico» para uso cotidiano.
- **Solución 2 — Arduino como ISP** (la recomendada): cargar el ejemplo **ArduinoISP** en un Arduino Uno (comentando la línea del LED de latido para liberar el pin), cablear ISP entre Uno y Nano (13→13, 12→12, 11→11, **10→RESET**, 5V, GND), luego **«Quemar bootloader»** desde el IDE con Arduino as ISP — el Nano queda con Optiboot y AVRDUDES lo detecta directamente.
- **Detalle de flujo LDmicro**: asignación de pines del Nano en LDmicro (D2/D3 set/reset → D13 salida; los analógicos aparecen como A6/A7 porque el Nano no tiene 8 entradas analógicas), compilar → escribir el hex.
- **Ventaja del Nano para PLC casero**: 2 entradas analógicas adicionales vs ATmega suelto y formato compacto para protoboard.

## Cruces

- **Umbral LDmicro/PLC-ladder** (FAV-544 + la serie del canal + el clúster PLC LOGO!/Cade Simu FAV-490..497): enlaza la familia PLC comercial con la versión hobby en Arduino → concepto candidato (PLC: industrial vs LDmicro) para consolidación.
- Canal El Profe Zurco: 1ª fuente (serie LDmicro en curso) → candidato a entidad firme si reaparece (es una serie completa).
- Bases: [[resumen-FAV-490-conceptos-basicos-plc]] (ciclo de escaneo que LDmicro implementa).

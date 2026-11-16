# FAV-361 — Qué pines usar en ESP32 (y cuáles NO tocar)

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=hU49p8zBJjU) · canal TR3BOL Argentina · 2025-09-20 · 09:34 · FAV-361
- **Transcripción**: `raw/microcontroladores/2025-09-20-que-pines-usar-esp32-tr3bol.md`
- **Dominio**: electronica-practica/

## De qué va

Guía tipo «semáforo de pines» del ESP32 clásico (39 GPIO anunciados, no todos utilizables libremente): elegir mal un pin puede impedir el arranque, activar un relé solo o romper el proyecto al encender. Los 5 grupos de pines:

- **🟢 Verdes (seguros)**: GPIO 4, 5, 12–19, 21–23, 25–27, 32, 33 — ideales para relés, sensores, I2C/SPI/UART; recordar pull-ups (ej. GPIO 21/22 para I2C con muchos dispositivos).
- **🟡 Amarillos (con cuidado — strapping pins)**: GPIO 0, 2, 5, 12, 15 — el chip lee su estado al encender; mal conectados, no arranca o entra en modo incorrecto. GPIO 1 (TX0) y 3 (RX0) reservados a UART0/monitor serie; usar UART2 para periféricos.
- **🔴 Rojos (prohibidos)**: GPIO 6–11 (conectados a la flash SPI) y GPIO 34–39 (solo entrada, sin driver de salida).

Casos prácticos: un LED nuevo que rompe todo → probablemente en un strapping o input-only; reservar los input-only para pulsadores; usar convertidores lógicos de tensión para comunicar con dispositivos a 5 V (UART/I2C). Tip: a 115200 baudios el reset imprime advertencias de pines mal configurados.

## Notas

- ASR: «SP32/SP 32» = ESP32, «W 0/WER serial» = UART, «i cuadrado C» = I2C; normalizado solo aquí.
- Cruces: pinout del ESP32-S3 con restricciones propias en [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab]]; strapping y arranque conectan con la arquitectura interna de [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]] y con el uso práctico del botón BOOT de [[resumen-FAV-358-programar-esp32-arduino-electronicspot]]; GPIO 34–39 input-only refuerza la advertencia del ADC del [[resumen-FAV-359-de-arduino-a-esp32-iotlab]]. Mismo canal: [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]] y [[resumen-FAV-364-microcontroladores-industria-mito-tr3bol]].

- **Consolidación (2026-11-15): fuente de la entidad [[tr3bol-argentina]].

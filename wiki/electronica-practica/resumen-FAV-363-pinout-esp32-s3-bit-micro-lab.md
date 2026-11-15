# FAV-363 — Pinout ESP32-S3

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=TeSy1EyjZPM) (`list=` de playlist ajena ignorado, regla S4) · canal Bit Micro Lab · 2026-03-13 · 09:55 · FAV-363
- **Transcripción**: `raw/electronica-practica/2026-03-13-pinout-esp32-s3-bit-micro-lab.md`
- **Dominio**: electronica-practica/

## De qué va

Segundo paso de la serie (tras [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]]): cómo se organizan los pines del ESP32-S3 y qué funciones multiplexa cada GPIO (entrada/salida digital, ADC, PWM, UART, I2C —dos líneas y direcciones únicas—, SPI con MOSI/MISO/clk/CS).

Grupos con restricciones en el ESP32-S3:

- **Strapping pins**: 0, 3, 45 y 46 — definen parámetros de arranque (0 y 46: modo ejecución vs modo descarga); usables después del arranque, con precaución.
- **Reservados**: 19/20 (USB-serial/JTAG), 39–42 (JTAG), 43/44 (UART0 de programación y monitor serie).
- **ADC 2** (pines 11–20): queda inutilizable mientras el WiFi está activo — solo usar ADC1 con WiFi.

El fabricante de cada placa expone solo los pines seguros; consultar siempre el datasheet/pinout de la placa concreta.

## Notas

- Cruces: contrapunto directo con el semáforo de pines del ESP32 clásico de [[resumen-FAV-361-que-pines-usar-esp32-tr3bol]] (strapping distintos: 0/2/5/12/15 vs 0/3/45/46); ADC inaccesible con WiFi refuerza el consejo del ADS1115 externo por I2C de [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]].

- **Consolidación (2026-11-15): fuente de la entidad [[bit-micro-lab]] y cruce de [[ia-en-mcu]].

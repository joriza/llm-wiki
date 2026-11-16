# FAV-362 — Arquitectura del ESP32

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=j3V70WSTgiE) · canal Bit Micro Lab · 2026-03-10 · 12:52 · FAV-362
- **Transcripción**: `raw/microcontroladores/2026-03-10-arquitectura-esp32-bit-micro-lab.md`
- **Dominio**: electronica-practica/

## De qué va

Recorrido conceptual por los bloques internos del ESP32(-S3): CPU Xtensa LX7 de 32 bits **dual-core** (hasta 240 MHz, un núcleo puede leer sensores mientras el otro maneja comunicación — paralelismo que el [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]] explota con FreeRTOS), ~512 KB SRAM + ~384 KB ROM, caché L1 sobre flash externa (4–16 MB según placa).

Periféricos: hasta 45 GPIO en el ESP32-S3, UART, PWM (motores/LED), ADC, temporizadores, interfaces para LCD/cámara/almacenamiento. Conectividad integrada: WiFi 2,4 GHz (150 Mbps, modos estación / SoftAP / ambos simultáneos) y BLE 5.0. Seguridad en hardware: Secure Boot, Flash Encryption, aceleradores AES/SHA/RSA, TRNG y HMAC. Subsistema RTC con memoria de bajo consumo y coprocesadores ULP para deep sleep con despertar por evento. Cierra presentando la placa de desarrollo ESP32-S3 DevKitC-1 v1.1.

## Notas

- ASR: «extensa LX7» = Xtensa LX7; normalizado solo aquí.
- Cruces: el mapa de pines y sus restricciones se desarrolla en [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab]] y [[resumen-FAV-361-que-pines-usar-esp32-tr3bol]]; dual-core y FreeRTOS en [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]]; comparativa general Uno vs ESP32 en [[resumen-FAV-359-de-arduino-a-esp32-iotlab]].

- **Consolidación (2026-11-15): fuente de la entidad [[bit-micro-lab]] y cruce de [[ia-en-mcu]] (el S3 como sustrato edge AI).

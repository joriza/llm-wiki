# FAV-359 — De Arduino a ESP32: Como empezar!

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=GFSmj-4rOgM) · canal IoT Lab · 2025-04-01 · 08:11 · FAV-359
- **Transcripción**: `raw/electronica-practica/2025-04-01-de-arduino-a-esp32-iotlab.md`
- **Dominio**: electronica-practica/

## De qué va

Guía de migración desde Arduino hacia el **ESP32**, con comparativa y fundamentos de conectividad:

- **Arduino Uno vs ESP32**: ATmega328P 8 bits @16 MHz frente a chip Espressif de 32 bits @240 MHz; benchmark ilustrativo de números primos en 30 s (~3.000 vs ~125.000). La aclaración "Arduino" se refiere a placas con chip ATmega, no a los modelos recientes que ya llevan chips ESP.
- **Elección de placa**: la explosión de variantes (S2, S3, C3, Mini, Pico, WROVER…) desborda; consejo práctico: empezar con la más barata para pruebas y elegir en serio cuando el proyecto lo pida; Espressif mantiene una web de comparación de módulos. Típico: WiFi + Bluetooth, ~38 pines.
- **Programación**: la vía más simple es el IDE de Arduino (instalar paquete de placas ESP32, seleccionar "ESP32 Dev Module").
- **Alimentación**: USB, 5 V en pin 5V (con regulador interno) o 3,3 V; nunca sobretensar los pines de 3,3 V.
- **Pines**: 38 en total — 6 de alimentación, 6 reservados a la flash SPI (GPIO D0-D3, CMD, CLK, no usarlos), 26 GPIO utilizables; 22 con PWM de 16 bits (vs 8 bits de Arduino), 16 con ADC de 12 bits (vs 10 bits); 3 UART frente a 1, e I2C/SPI mapeables por software a varios GPIO.
- **WiFi, 3 modos**: estación (conectar a red existente con librería `WiFi`; consejo: **WiFiManager** para configurar credenciales vía portal cautivo sin hardcodearlas), punto de acceso (`SoftAP`, la placa crea su propia red, servible de web), y dual (ambos a la vez; típico del rol de intermediario IoT).
- **Bluetooth**: clásico con `BluetoothSerial` (demo de terminal serie desde el móvil con "Serial Bluetooth Terminal") y BLE (paquetes intermitentes de bajo consumo, ideal para batería).
- **ESP-NOW**: protocolo de Espressif para comunicación directa entre ESP32 sin router, unidireccional o bidireccional, coexiste con WiFi/Bluetooth.

## Notas

- ASR: "Expressive"/"Explif" = Espressif; "DWDQ6" (chip), "SPN/ese pena" = ESP-NOW; "beginin" = `WiFi.begin()`; normalizado solo aquí.
- Cruces: [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] (ESP-NOW en profundidad, mismo canal), [[resumen-FAV-358-programar-esp32-arduino-electronicspot]] (instalación del paquete ESP32 paso a paso), [[resumen-FAV-356-esp-connect-herramienta-web-esp32-iotlab]] (mismo canal), [[resumen-FAV-349-pico-vs-arduino-nano]] (comparativa de placas de bajo costo), [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]] (aprovechar el dual-core).

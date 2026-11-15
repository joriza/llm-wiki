# Pinout de Arduino Nano: guía para principiantes

**Fuente**: [Pinout de Arduino Nano: Guía para principiantes](https://www.pcbasic.com/es/blog/arduino_nano_pinout_2.html) (PCBasic, John William, 2025-11-24; web, sin raw)
**ID**: FAV-385 · **Fecha de ingesta**: 2026-11-15

## Qué cubre

Artículo de referencia del fabricante de PCB PCBasic: mapa completo de los 30 pines del Arduino Nano (ATmega328P), diseño físico, esquema interno, opciones de alimentación, protocolos de comunicación y variantes.

## Contenido técnico

- **Placa**: 45×18 mm (7-8 mm de alto con pines), ideal para protoboard con espacio libre a ambos lados; 30 pines en dos filas de 15; ATmega328P soldado (sin zócalo); mini-USB; ICSP. Mismo cerebro y 16 MHz que el Uno pero en formato compacto.
- **Digitales D0-D13**: 14 E/S, 6 con **PWM** (D3, D5, D6, D9, D10, D11); D0/D1 = UART (RX/TX); D10-D13 = SPI (SS/MOSI/MISO/SCK).
- **Analógicos A0-A7**: A0-A5 también sirven de digitales; **A6 y A7 son solo entradas analógicas** (exclusivos del Nano, no digitales); ADC de 10 bits (0-1023).
- **Alimentación**: USB (5 V, prototipado); **VIN 7-12 V** (el regulador exige ≥7 V — no meter 5 V por VIN); pin **5 V** directo solo para usuarios avanzados (omite el regulador, sin protección de polaridad); salidas reguladas 5 V y 3,3 V; AREF para referencia analógica; pin/botón RESET.
- **Comunicaciones**: UART (D0/D1), **I2C en A4 (SDA)/A5 (SCL)** — misma pareja que el Uno, para OLED, RTC y sensores multi-dispositivo con direcciones —, SPI (D10-D13, más rápido, más cables).
- **Esquema interno**: regulador, conversor USB-serie **FT232 (oficial) vs CH340 (clones, requiere driver)**, cristal 16 MHz; el esquema oficial está en Arduino/GitHub.
- **Variantes**: Nano oficial (ATmega328P), Nano Every (ATmega4809, más RAM/flash), Nano 33 (IoT/BLE/Sense, con WiFi/BT), y clones baratos (~$3) — verificar que el pinout del clon coincida con el estándar.
- **Componentes típicos compatibles**: LEDs, botones, DHT11/22, OLED 0,96" por I2C, HC-05, ultrasónicos, relés, servos, IR.

## Cruces

- La pareja A4/A5 como I2C es exactamente la usada para las pantallas OLED: [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino]] (FAV-382) y [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (FAV-383).
- Familia de guías de pinout: [[resumen-FAV-361-que-pines-usar-esp32-tr3bol|qué pines usar en ESP32]] (FAV-361), [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab|pinout ESP32-S3]] (FAV-363) — contraste AVR clásico vs ESP32.
- Alimentación VIN/regulador cruza con la [[resumen-FAV-369-fuente-protoboard-mb102-bitwise-ar|fuente de protoboard MB102]] (FAV-369).
- El HC-05 por SoftwareSerial se usó en el [[resumen-FAV-378-scroll-matriz-max7219-bluetooth-electronicspot|scroll MAX7219 con Bluetooth]] (FAV-378).
- Nota de contexto: la fuente es un fabricante de PCB/PCBA (PCBasic) y el artículo sirve a su blog comercial — el contenido técnico es genérico y correcto para el Nano clásico.

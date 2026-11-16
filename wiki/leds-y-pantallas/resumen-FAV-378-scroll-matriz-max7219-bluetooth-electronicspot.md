# FAV-378 — Desplazar texto en matriz LED MAX7219 con Arduino y Bluetooth

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=H46f9G4vE0Y) · canal ElectronicSpot · 2023-09-26 · 15:07 · FAV-378
- **Transcripción**: `raw/electronica-practica/2023-09-26-scroll-matriz-led-max7219-bluetooth-electronicspot.md`
- **Dominio**: electronica-practica/

## De qué va

Control de un módulo de 4 matrices LED 8×8 MAX7219 (~6 USD) desde una placa Nano compatible: scroll de texto en las cuatro direcciones, actualización del mensaje desde el monitor serie y desde el teléfono vía Bluetooth (HC-05), y velocidad de desplazamiento regulada con un potenciómetro.

- **Módulo MAX7219**: cada matriz de 8×8 (64 LED monocromo) tiene su propio CI MAX7219 — controlador de displays 7 segmentos y matrices que trabaja en cascada (DOUT de un módulo → DIN del siguiente, hasta 8 módulos). Interfaz de 5 pines: 5 V, GND y tres pines del bus SPI (DIN datos, CS selección de esclavo, CLK reloj) — las 4 matrices funcionan como esclavos SPI de la Nano (maestro).
- **Librería Parola**: instalada desde el gestor con dependencias (MD_Parola + MD_MAX72XX); el ejemplo Parola_Scrolling se adapta editando: `FC16_HW` como tipo de hardware, 4 dispositivos, CLK 11, DATA 12, CS 10 según el esquema. Parámetros clave: `SPEED` (mayor valor = desplazamiento más lento, se ajustó a 50), `MAX_CHARS` (75 caracteres máximo) y `PA_SCROLL_LEFT/RIGHT/UP/DOWN` como dirección del scroll (valores `left/right/up/down`).
- **Velocidad por potenciómetro**: pin analógico A5 (extremos a 5 V y GND, cursor al A5, potenciómetro de 1 kΩ) con el parámetro `USE_POTENTIOMETER`/`speed` en 1 para delegar el control. Gotcha de compilación: falta instalar la librería MD_MAX72XX que Parola incluye en un `#include` — se instala aparte y compila.
- **Monitor serie**: 57 600 baudios (la velocidad configurada en el código) y terminar el mensaje con carácter de nueva línea.
- **Bluetooth HC-05**: RX→pin 2, TX→pin 3, 5 V y GND; se crea una interfaz serial por software (`SoftwareSerial bt(3,2)`, 9 600 baudios de fábrica) y se duplica el método `readSerial` del ejemplo renombrando la interfaz objetivo de `Serial` a `bt`; en el teléfono se empareja (clave típica 1234) y se usa una terminal Bluetooth con carácter LF configurado.

## Notas

- ASR normalizado solo aquí: «odaxpad» = ElectronicSpot (nombre del canal en el saludo), «lete» = LED, «ping-in/pincs/ tensionia o que o» = DIN/CS/CLK, «Spy/espía» = SPI, «magics» = majicDesigns (autor de Parola), «audios» = baudios, «crossfield/va a forzars» = SPEED/MAX_CHARS, «piden/spiden/expiden» = speed, «método iba/web satup/bold Loop» = loop()/setup(), «md bajo Us» = MD_MAX72XX, «répé/repetí» = método auxiliar, «de X/pin de dos» = TX/pin, «Play Store» correcto, «FC 16 guión bajo hw» = FC16_HW.
- Cruces: mismo canal que [[resumen-FAV-358-programar-esp32-arduino-electronicspot]]; el bus SPI lo introduce también el capítulo TFT ILI9341 de Bitwise Ar ([[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar]], SPI con divisores de nivel); matrices/paneles LED en serpiente con WS2812B en [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]] y [[resumen-FAV-377-ws2812-strips-fastled-marios-ideas]] — contraste: controlador dedicado MAX7219 vs LED direccionables; HC-05 Bluetooth en la línea inalámbrica del dominio.

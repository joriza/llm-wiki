# Protocolo I2C: maestro y esclavos con solo dos cables

**Fuente**: [Conectar varios Arduinos con solo dos cables, Maestro y Esclavos, protocolo I2C](https://www.youtube.com/watch?v=9gfZnNPBlVg)
**Canal**: El profe García · **Publicado**: 2020-03-12 · **Duración**: 15:24
**Raw**: `raw/electronica-practica/2026-11-15-protocolo-i2c-maestro-esclavos-profe-garcia.md` (FAV-386, 2026-11-15)

## Qué cubre

Tutorial del bus **I2C** ("inter-integrated circuit", también llamado protocolo de dos cables) con Arduino: conexión física de un maestro y cuatro esclavos, estructura de la trama y programación con la librería Wire.

## Contenido técnico

- **Origen y física**: desarrollado por Philips en 1982 para comunicación interna de sus dispositivos; hoy lo gestiona Arduino. Dos líneas: SCL (reloj, A5 en Uno/Nano/Mini Pro; pin 21 en Mega) y SDA (datos, A4; pin 20 en Mega). El maestro es el único que genera el reloj; los esclavos (sensores, conversores ADC/DAC, LCD, otros Arduinos) comparten el bus.
- **Pull-ups**: el protocolo prevé dos resistencias de pull-up, pero Arduino las activa internamente — no hacen falta. Si se usan fuentes de alimentación distintas, hay que unir las **tierras (GND)**: la falla más común del bus.
- **Trama**: secuencias de **inicio** (SCL se mantiene alto más de lo normal y SDA baja) y **parada** (SCL alto y SDA sube) señalizan el principio y fin de la conversación. Luego va el **byte de dirección** de 7 bits del esclavo, el bit de lectura/escritura (0 = escribir, 1 = leer) y el **ACK** (acuse de recibo) del receptor tras cada byte. Demo con analizador lógico de las dos direcciones de transmisión (maestro→esclavo y esclavo→maestro).
- **Demo de robustez**: desconectar el cable de reloj o el de datos congela todos los esclavos; al reconectar, todo continúa.
- **Programas**: maestro que controla 4 esclavos (3 Arduinos + LCD 16x2 por I2C, dirección 0x27 — el gotcha de que cada fabricante de módulo I2C-LCD usa direcciones distintas: 0x3F, 0x20, 0x38…) vía librería Wire (`Wire.beginTransmission`, `Wire.write`). Esclavo: `Wire.begin(dirección)` + `Wire.onReceive(función)` para leer los bytes recibidos y actuar sobre LEDs. Sketches descargables de elprofegarcia.com.

## Cruces

- Cuarta fuente sobre I2C (umbral ya ≥2 desde antes): OLED por I2C en [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino]] y [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (FAV-382/383); pines A4/A5 del Nano en [[resumen-FAV-385-pinout-arduino-nano-pcbasic|Pinout Arduino Nano]] (FAV-385).
- Mismo canal y autor de los tutoriales de pantallas: [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|Dibujos y plantillas OLED]] (FAV-384).
- LCD 16x2 por I2C conecta con [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (comparación con LCD).

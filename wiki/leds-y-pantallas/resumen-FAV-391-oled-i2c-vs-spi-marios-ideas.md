# OLED: I²C vs SPI explicados para Arduino y ESP32

**Fuente**: [¡No elijas la pantalla OLED equivocada! Explicación de I²C y SPI para Arduino y ESP32](https://www.youtube.com/watch?v=ICXznCN3NOI)
**Canal**: Mario's Ideas · **Publicado**: 2026-02-28 · **Duración**: 19:46 · **Idioma**: en (subs automáticos)
**Raw**: `raw/leds-y-pantallas/2026-02-28-oled-i2c-vs-spi-marios-ideas.md` (FAV-391, 2026-11-15)

## Qué cubre

Comparación práctica de las dos interfaces para pantallas OLED pequeñas (SSD1306-tipo): cableado, inicialización en código, velocidad medida con animaciones reales y viabilidad de múltiples pantallas. Demostrado en ESP32-C3 SuperMini y Arduino Nano.

## Contenido técnico

- **Cableado**: I²C usa 4 pines (VCC, GND, SCL, SDA — en ESP32-C3 SuperMini SCL=GPIO9/SDA=GPIO8; en Nano A5/A4). SPI añade RESET (activo bajo) y DC (datos vs comando) además de SCK/MOSI/MISO y **chip select** (activo bajo) por dispositivo; MISO no se usa en OLED (solo escritura) pero sí en dispositivos bidireccionales como lectores SD compartiendo el bus.
- **Direcciones y select**: en I²C cada esclavo tiene dirección de 7 bits (OLED típica 0x3C, DS3231 RTC 0x68); los no direccionados quedan en alta impedancia. En SPI la selección es por línea CS por módulo.
- **Código**: librería Wire para I²C (sin declarar pines; hay que pasar dirección y "no reset pin"); librería SPI para SPI (MOSI/MISO/SCK fijos por hardware en Nano/Uno; ESP32 tiene **dos buses SPI hardware** independientes; existe software SPI con pines arbitrarios pero hardware SPI es más rápido).
- **Velocidad medida**: I²C estándar 100 kHz / fast 400 kHz (algunas pantallas 1 MHz) vs SPI 4-10 MHz → ~10-20× más rápido. Además de la frecuencia, I²C añade overhead (start, dirección, ACK, bytes de control, stop por el mismo cable) mientras SPI hace streaming continuo del buffer. Test con animación 128×64 (1 KB/foto): SPI ~17 fps, I²C ~12 fps (con ~30 ms extra de render por foto). Con animaciones pequeñas (80×30) la diferencia es imperceptible.
- **¿Merece SPI?**: para texto y formas, I²C sobra; SPI solo importa con refrescos de pantalla completa frecuentes o varias pantallas encadenadas.
- **Múltiples pantallas**: en I²C casi todas las OLED comparten la dirección 0x3C (algunas permiten moverla a 0x3D soldando una resistencia). En SPI teóricamente solo cambia el CS… pero las OLED baratas **no liberan MOSI/SCK cuando su CS está inactivo** → en la práctica solo inicializa una; workaround: CS flotando (incontrolable) o usar los dos buses SPI de un ESP32. Multiplexores/buffers quedan para otro video.
- **Veredicto**: I²C por simplicidad salvo necesidad de refresco rápido o gran display encadenado.

## Cruces

- Quinta fuente del clúster OLED y **cuarta sobre I2C** (umbral ≥2 ya registrado): [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|Protocolo I2C maestro/esclavos]] (FAV-386), [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino]] (FAV-382), [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (FAV-383), [[resumen-FAV-387-videos-animaciones-oled-electronica-con-piero|Videos en OLED]] (FAV-387).
- ESP32-C3 SuperMini como banco de pruebas cruza con [[resumen-FAV-360-esp32-c3-supermini-arduino-ide-surflaweb|ESP32-C3 Super Mini]] (FAV-360).
- Pantallas TFT SPI (alternativa de color) en [[resumen-FAV-390-tft-22-spi-ili9341-arduinolover|Arduino Uno TFT 2.2" SPI]] (FAV-390).

- **Consolidación (2026-11-15): fuente de [[pantallas-oled]] y [[i2c]], y de la entidad [[marios-ideas]].

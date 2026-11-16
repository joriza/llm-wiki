# FAV-360 — ESP32-C3 Supermini en Arduino IDE

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=WpXzMHdGwI0) · canal surflaweb · 2025-03-08 · 02:08 · FAV-360
- **Transcripción**: `raw/microcontroladores/2025-03-08-esp32-c3-supermini-arduino-ide-surflaweb.md`
- **Dominio**: electronica-practica/

## De qué va

Tip corto y práctico: en la placa **ESP32-C3 Super Mini**, seleccionar la placa equivocada en el IDE de Arduino hace que los sketches no respondan. Con "ESP32 Dev Module" un ejemplo de lectura de botón no funciona; la selección correcta es **LoLin C3 Mini** (en Tools → Board).

Dos detalles adicionales que muestra:

- **Sin botón BOOT**: a diferencia de muchas placas ESP32 (donde hay que mantener BOOT al subir, ver [[resumen-FAV-358-programar-esp32-arduino-electronicspot]]), la C3 Super Mini sube el código sin pulsar nada.
- **Lógica invertida del botón**: con el esquema del video, el pin lee LOW en reposo y HIGH al presionar — la interpretación de "presionado/liberado" en el monitor serie queda invertida respecto a lo esperado; conviene revisar el wiring (pull-up/pull-down) o la comparación en el código.

## Notas

- ASR: "sp32"/"SP 32"/"sp32 C3" = ESP32; "los link C3 mini"/"lolin C3 Mini" = LoLin C3 Mini; normalizado solo aquí.
- Cruces: familia ESP32 en Arduino IDE — [[resumen-FAV-358-programar-esp32-arduino-electronicspot]] (setup general y botón BOOT), [[resumen-FAV-359-de-arduino-a-esp32-iotlab]] (elección de variante, mismo problema de "¿qué placa selecciono?").

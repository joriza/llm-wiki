# FAV-410 — Inteligencia Artificial en ESP32: conectando Google Gemini paso a paso (Torelec)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=IVtlDjU4wbs) · `raw/electronica-practica/2026-11-15-ia-esp32-google-gemini.md`
- **Canal**: Torelec (ES, ASR)
- **Dominio**: electronica-practica
- **Fecha**: 2026-11-15

## Qué trata

Tutorial práctico para que un **ESP32** consulte a **Google Gemini** vía su API REST y muestre las respuestas: primero por monitor serial y luego en una pantalla OLED SSD1306 por I2C. Es una integración de IA en la nube (el ESP32 solo envía HTTP y parsea JSON — nada de inferencia local).

## Flujo de trabajo

1. **Clave de API**: crear en Gemini Studio (AI Studio), nombrarla (p. ej. «ESP32») y probarla antes en Postman con una solicitud POST para entender el endpoint y el body.
2. **Elección de modelo**: la documentación vieja apuntaba a Gemini Flash; el tutorial usa **Gemini 2.5 Flash Lite** — el modelo más económico y sencillo (menos tokens, ideal para un proyecto maker gratuito).
3. **Primer ejemplo (API serial)**: librerías `HTTPClient` y `ArduinoJson` (Benoît Blanchon); credenciales en el código (SSID, contraseña Wi-Fi, API key); se escribe la pregunta por el monitor serial a 115200 baudios y se imprime la respuesta.
4. **Segundo ejemplo (con OLED)**: pantalla SSD1306 por I2C (VDD→3.3 V, GND, SCK/SCL y SDA a los pines correspondientes), librería Adafruit SSD1306; la pantalla muestra «pensando…» y luego la respuesta; el serial sigue sirviendo de entrada.
5. **Verificación**: respuesta HTTP 200 → parsear el JSON y extraer el texto.

## Puntos clave

- La API de Gemini tiene capa gratuita con bastantes tokens — a diferencia de la integración previa del canal con OpenAI, que exigía recargar mínimo 5 USD.
- El autor apunta como extensión natural: alimentar la IA desde **sensores** (clima, temperatura, estadísticas) en vez de preguntas escritas a mano — la IA como capa de interpretación de datos IoT.

## Cruces

- [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla]] y [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia]] — la OLED SSD1306 por I2C del montaje.
- [[resumen-FAV-409-walter-placa-iot-definitiva-ia]] — contrapunto de arquitectura: aquí la IA vive en la nube vía API; Walter ejecuta inferencia en el borde con el ESP32-S3.
- [[resumen-FAV-359-de-arduino-a-esp32-iotlab]] — por qué el ESP32 (Wi-Fi integrado) es la elección natural para clientes HTTP.

- **Consolidación (2026-11-15): fuente del concepto [[ia-en-mcu]] (lado API en la nube); cruce de [[pantallas-oled]] y [[i2c]].

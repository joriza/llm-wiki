# IA en microcontroladores (edge AI vs API en la nube)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación diferida de la ventana IOT Gral — umbral ≥2 alcanzado; contraste de arquitectura documentado en ambos resúmenes).
- **Fuentes**: [[resumen-FAV-409-walter-placa-iot-definitiva-ia]] (Walter/Quickspot — inferencia en el dispositivo con ESP32-S3) · [[resumen-FAV-410-ia-esp32-google-gemini-torelec]] (Torelec — IA en la nube vía API Gemini).
- **Ver también**: [[pantallas-oled]] · [[i2c]] (la OLED como salida del montaje de FAV-410).

## El concepto

Dos arquitecturas opuestas para meter IA en un proyecto con microcontrolador, documentadas la misma ventana:

1. **Edge AI — la inferencia vive en el micro** (FAV-409): el ESP32-S3 con 16 MB flash QSPI + 2 MB PSRAM ejecuta ML en el dispositivo, sin enviar datos a la nube — orientado a producción IoT celular (NB-IoT/LTE-M, consumo PSM/eDRX): la placa certificada (Walter) salta la barrera de certificación RF (decenas de miles de dólares y meses) para despliegues «instalar y olvidar».
2. **IA como servicio en la nube** (FAV-410): el ESP32 solo es cliente HTTP — consulta **Gemini 2.5 Flash Lite** por su API REST (capa gratuita; HTTPClient + ArduinoJson; clave probada antes en Postman) y muestra la respuesta en una OLED SSD1306 por I²C. Extensión natural señalada: alimentar la IA desde sensores IoT en vez de preguntas escritas a mano — la IA como capa de interpretación de datos.

El contraste que el clúster deja asentado: edge AI compra privacidad, latencia y autonomía de red al precio de un hardware más grande (S3 con PSRAM); la API compra capacidad de modelo al precio de conectividad, latencia de red y dependencia del proveedor. La elección sigue la carga: un sensor remoto con batería no puede depender de la nube; un proyecto maker interactivo puede.

## Notas

- Cruce transversal con los dominios de IA de la wiki (ia-local/, ia-uso-practico/): el mismo eje local-vs-nube que atraviesa los LLM, aplicado al hardware pequeño.
- El ESP32-S3 como sustrato común de ambas fuentes cruza con [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]] y [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab]].

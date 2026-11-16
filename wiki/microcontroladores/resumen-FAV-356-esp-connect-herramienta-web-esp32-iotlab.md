# FAV-356 — Si NO USAS esta Herramienta, estás PERDIENDO TIEMPO con tu ESP32

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=lnS9YQuderI) · canal IoT Lab · 2025-12-21 · 13:26 · FAV-356
- **Transcripción**: `raw/microcontroladores/2025-12-21-esp-connect-herramienta-web-esp32-iotlab.md`
- **Dominio**: electronica-practica/

## De qué va

Presentación de **ESP Connect**, herramienta web gratuita y open source basada en Web Serial que, con solo conectar la placa ESP32 al USB y pulsar "Connect" en el navegador (sin instalar nada), muestra:

- **Identificación del chip**: variante (ESP32 clásico / S3 / C6…), revisión, MAC, encapsulado, feature set (WiFi, Bluetooth, PSRAM) y versión del bloque de fuses de seguridad.
- **Memoria**: PSRAM y flash total (fabricante/modelo/tamaño), chip puente USB-serie y baudrate ajustable.
- **Particiones**: mapa visual de la flash con tamaño y offset de cada partición (app, SPIFFS/LittleFS, NVS); en el ejemplo, 4 MB de 8 sin usar — "memoria tirada" frente a los partition schemes que se elijan a ciegas en el IDE de Arduino.
- **App activa**: slot, offset, tamaño, versión del framework (ESP-IDF / core Arduino) con que se compiló.
- **Flash Tools** (con aviso de riesgo): backup por partición, backup total o volcado completo de la flash en un `.bin`; restaurar en la misma placa o clonar configuración en varias placas idénticas en segundos (útil para desplegar varios nodos IoT iguales); lectura por offset y borrado total de flash.
- **Sistemas de archivos**: explorador de SPIFFS/LittleFS/FAT con subida/borrado de archivos, previsualización de imágenes y reproducción de MP3 desde el navegador; flujo recomendado backup → cambios → write-back.
- **Monitor serie** integrado, equivalente al del IDE de Arduino; al pararlo se pausa la conexión.

El autor advierte que es una primera versión sin todas las variantes de ESP32 probadas: puede haber errores de identificación o bugs; al ser open source, la comunidad puede contribuir. La herramienta original está explicada en inglés por su autor; este video la difunde en español.

## Notas

- "SP Connect" / "eded memory" del ASR = ESP Connect / embedded memory.
- Cruces: flujo de trabajo con ESP32 — [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] (mismo canal, IoT Lab: conectividad ESP32), [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]] y [[resumen-FAV-348-pico-curso-micropython]] (ecosistemas de programación de microcontroladores).
- **Umbral para consolidación**: canal IoT Lab alcanza 2 fuentes (FAV-353 + FAV-356) → candidata a entidad en la próxima consolidación.

- **Consolidación (2026-11-15): la entidad IoT Lab existe — [[iot-lab]] (umbral superado).

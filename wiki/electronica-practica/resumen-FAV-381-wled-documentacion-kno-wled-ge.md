# WLED — Documentación oficial del proyecto (kno.wled.ge)

**Fuente**: [Bienvenido a WLED — Proyecto WLED](https://kno.wled.ge/) (web, sin raw)
**ID**: FAV-381 · **Fecha de ingesta**: 2026-11-15

## Qué es

WLED es un firmware libre (EUPL-1.2, autor Christian Schwinne / Aircoookie) para ESP32 (y parcialmente ESP8266) que convierte la placa en un servidor web para controlar LED direccionables: NeoPixel (**WS2812B**, WS2811, SK6812), chipsets SPI (WS2801, APA102) y también paneles **HUB75** (video wall). Es la vía estándar para dar brain a una matriz de LED sin escribir código propio.

## Características principales

- Librería **WS2812FX** integrada: más de 100 efectos, efectos de ruido FastLED y 50 paletas.
- **Segmentos**: dividir la tira/matriz en zonas con efectos y colores distintos; hasta 3 salidas de LED por ESP8266 y hasta 10 por ESP32; soporte RGBW.
- Hasta **250 presets** guardables (colores/efectos, con ciclado y ejecución de llamadas API).
- UI web moderna, punto de acceso propio con failsafe, actualización **OTA** por HTTP, configuración sobre filesystem (backup fácil de presets).
- Función nocturna (dimming gradual), límite automático de brillo, reloj analógico configurable, control por relé.
- Integración nativa con **Home Assistant**.

## Interfaces de control

App móvil de la comunidad (Android/iOS, Moustachauve), APIs **JSON y HTTP**, **MQTT**, E1.31/Art-Net/DDP/TPM2.net, Hyperion, UDP realtime, control por voz Alexa, sincronización con Philips Hue, Adalight (ambilight por serie), sincronización entre dispositivos WLED (UDP notifier), mandos IR, temporizadores con NTP. También **ESPNow remotes** y **DMX** in/out.

## Ecosistema de documentación

El sitio (MkDocs) cubre: instalación (binario precompilado, ESP GUI, flasher propio, compilación), wiring y «top 5 mistakes» de cableado, compatibilidad por tira/controlador, audio reactivo, acceso remoto/IFTTT, recuperación de bootloop en ESP32, usermods de la comunidad y utilidades como el **Pixel Art Converter** (imagen → matriz 2D) y PixelForge (GIF).

## Cruces

- Complementa directamente el clúster de matrices WS2812B: [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|pantalla 16×16 con tiras WS2812B]] (FAV-375), [[resumen-FAV-377-ws2812-strips-fastled-marios-ideas|tiras WS2812 con FastLED]] (FAV-377) y el soporte HUB75 que cruza con [[resumen-FAV-379-pixel-display-pico-panel-rgb-matrix-mundo-yakara|PIXEL DISPLAY Pico + HUB75]] (FAV-379) y [[resumen-FAV-380-raspy2dmd-panel-led-matrix-mundo-yakara|Raspy2DMD]] (FAV-380): WLED es la alternativa firmware-vs-código propio a esos montajes con Pico/Raspberry.
- Los efectos de ruido FastLED enlazan con el enfoque de animaciones HSV no bloqueantes de FAV-377.

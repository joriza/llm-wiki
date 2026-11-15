# Controlador LED WS2812 universal con ESP32-C3

**Fuente**: [Construcción de un controlador LED universal WS2812 con ESP32-C3](https://www.youtube.com/watch?v=wHnuPH63Hng)
**Canal**: Mario's Ideas · **Publicado**: 2025-11-26 · **Duración**: 14:46 · **Idioma**: en (subs automáticos)
**Raw**: `raw/electronica-practica/2025-11-26-controlador-led-ws2812-universal-esp32-c3-marios-ideas.md` (FAV-393, 2026-11-15)

## Qué cubre

Construcción de una placa controladora universal de LEDs direccionables WS2812 con ESP32-C3: resolución del problema de niveles 3.3 V→5 V con un level shifter rápido (74AHCT125), pruebas con FastLED en breadboard y diseño de PCB propia en Fritzing con extras (RTC DS3231, OLED y LDR por I2C).

## Contenido técnico

- **Problema central**: las tiras WS2812 requieren lógica de 5 V; los ESP entregan 3.3 V. Los level shifters MOSFET clásicos **no son lo bastante rápidos** para la señal de datos WS2812 (glitches ocasionales); la solución es el **74AHCT125** (buffer TTL): acepta HIGH de 3.3 V y salida limpia de 5 V, respuesta en nanosegundos.
- **Chip**: 14 pines, 4 canales independientes; cada canal tiene enable **activo bajo** (a GND para activar), input y output. Para un solo strip: canal 1 habilitado, los otros 3 deshabilitados (enable alto, inputs a GND para evitar flotantes).
- **Circuito**: GPIO3 → input del canal → output → resistencia de **330 Ω** en la línea de datos → strip. Condensador de **1000 µF** entre +5V y GND del strip y **100 nF** en el level shifter. **Todas las tierras comunes**. Alimentación del strip externa (regla: ~60 mA por LED a blanco pleno).
- **Software**: sketches de ejemplo de la librería **FastLED** (color palette) solo cambiando el pin de datos a GPIO3; funciona igual con matriz 8×8, matriz mayor o tira.
- **Extras por I2C** (GPIO8=SDA/GPIO9=SCL inicialmente): RTC DS3231 y OLED para mostrar hora. Gotcha: el LED azul onboard está en **GPIO8 y parpadea con cada actividad I2C** → se reasigna el bus a SCL=GPIO4/SDA=GPIO5 con `Wire.begin(SDA, SCL)` y el LED queda libre como pin de expansión.
- **LDR para brillo automático**: divisor con fotoresistencia + 10 kΩ a 3.3 V. Error detectado al probar: **GPIO1 no soporta entrada analógica**; ChatGPT (que ayudó a generar el código de mapeo de brillo) señaló usar **GPIO2**. Lección: prototipar en breadboard antes de diseñar la PCB revela errores invisibles en el esquema.
- **PCB**: diseño en **Fritzing**, conector para RTC + espacio para otro dispositivo I2C (OLED) + LDR; design rule check → exportación Gerber → pedido en PCBWay (5→10 placas por el mismo precio).

## Cruces

- Misma placa que [[resumen-FAV-360-esp32-c3-supermini-arduino-ide-surflaweb|ESP32-C3 Super Mini]] (FAV-360) y la serie del canal: [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas|FAV-391]] y [[resumen-FAV-392-esp32-c3-supermini-antena-rssi-marios-ideas|FAV-392]] (el gotcha del LED onboard en GPIO8/I2C reaparece en ambas).
- I2C (RTC DS3231, OLED, `Wire.begin` con pines reasignables) conecta con [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|Protocolo I2C]] (FAV-386) y el clúster OLED (FAV-382/383/387).
- LEDs direccionables WS2812 cruzan con [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|tira/matriz LED 16×16 WS2812B]] (FAV-375).
- LDR conecta con [[resumen-FAV-004-fotoresistencia-ldr-cienciabit|LDR fotorresistencia]] (FAV-004) y el [[resumen-FAV-003-montaje-detector-de-luz|detector de luz]] (FAV-003).
- Fabricación de PCB casera con Fritzing + PCBWay conecta con el clúster diseño-pcb-herramientas/fabricacion-casera-pcb ([[resumen-FAV-317-tutorial-basico-kicad|FAV-317]] y afines).

- **Consolidación (2026-11-15): fuente de la entidad [[marios-ideas]]; cruce de [[cubos-matrices-led]].

# Tira LED al ritmo de la música (El profe García)

**Fuente**: [✅ Tira LED al Ritmo de la Música, muy fácil de hacer en casa](https://www.youtube.com/watch?v=ZsMuX1fI0Fs)
**Canal**: El profe García · **Publicado**: 2021-01-20 · **Duración**: 11:46 · **Idioma**: es (subs automáticos)
**Raw**: `raw/electronica-practica/2021-01-20-tira-led-ritmo-musica-profe-garcia.md` (FAV-406, 2026-11-15)

*Nota*: el bookmark traía una playlist ajena (`list=`), ignorada según S4.

## Qué cubre

Proyecto completo de una barra de tiras LED direccionables (WS2812/WS2812B, "NeoPixel") que reacciona al ritmo de la música, detectada con un módulo de sensor de sonido y procesada por un Arduino. Comparte planos, programa y estructura.

## Contenido técnico

- **Alimentación**: cargador de **5 V / 2 A** — exactamente 5 V, porque Arduino, sensor y tiras comparten el mismo rail (usar 9/12 V quema tanto el Arduino como la tira).
- **Entrada de audio**: módulo de sensor de sonido (micrófono electret + pequeño amplificador) a 5 V, salida al pin analógico **A0**. El punto crítico es el **potenciómetro de ajuste de ganancia**: sin calibrarlo el proyecto "no funciona". Puede apuntar el micrófono al parlante o conectarse por jack.
- **Salida**: pin digital **6** → DAT de la tira; conexión de tiras en paralelo (1 a 4 tiras, 60 LED/m; probado hasta 120). Punto clave de cableado: 5 V en un extremo, GND en el otro, señal al centro.
- **Modos**: pulsador de GND al pin **5** para adelantar entre secuencias (el programa cambia de modo automáticamente tras un tiempo).
- **Estructura**: dos largueros de madera de balsa de 1 m en paralelo (o un larguero de 2 m), tira pegada y atornillada; madera pintada de negro opcional.
- **Software**: programa público (enlace en la descripción), compatible con cualquier Arduino principal; requiere librerías **NeoPixel (Adafruit)** y **FastLED** — solo se ajusta el número de LEDs y el nivel de sensibilidad (bajo si el módulo ya amplifica). Flujo de instalación del IDE, gestión de librerías y carga explicado para principiantes.
- Reutiliza la línea de proyectos con tiras inteligentes del canal: pantalla 16×16 (FAV-375) y monitor gamer.

## Cruces

- Mismo canal: [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|pantalla 16×16 WS2812B]] (FAV-375), [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo LED al PIC]] (FAV-398), [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|I2C]] (FAV-386).
- Tiras direccionables: [[resumen-FAV-393-controlador-led-ws2812-universal-esp32-c3-marios-ideas|controlador WS2812 universal]] (FAV-393).

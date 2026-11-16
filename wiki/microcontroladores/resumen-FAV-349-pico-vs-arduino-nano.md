# FAV-349 — Pi Pico: batalla contra Arduino Nano (El profe García)

- **Fuente original**: `raw/microcontroladores/2021-02-11-pico-vs-arduino-nano.md` — https://www.youtube.com/watch?v=bAAv7i5TISc — canal El profe García, 2021-02-11, 17:20, español (subs automáticos).
- **Dominio**: `electronica-practica/`.

## Qué es

Comparativa categoría por categoría entre la entonces recién salida **Raspberry Pi Pico** (enero 2021, primer microcontrolador de la Fundación Raspberry) y el **Arduino Nano**, con puntaje final y veredicto educativo.

## La batalla (normalizada del ASR)

| Categoría | Pico | Nano | Punto |
|---|---|---|---|
| Precio oficial | 4 USD (EE. UU.; 5-7 USD en LatAm, escasez global) | ~20 USD el original | Pico |
| Microcontrolador | RP2040 dual-core propio | ATmega328P single-core | Pico |
| Reloj | flexible, hasta >133 MHz | 16 MHz | Pico |
| RAM | 264 KB | 2 KB | Pico |
| EEPROM | no tiene | sí (la «memoria ROM programable») | Nano |
| E/S | 26 | 22 (14 digitales + 8 analógicas) | Pico |
| Alimentación | 1.8-5.5 V (lógica 3.3 V — un cargador Quick Charge de 9 V la fríe) | 7-12 V | Nano |
| Comunicaciones | 2×UART, 2×SPI, 2×I2C, 16 PWM, RTC | 1×UART, 1×SPI, 1×I2C, 6 PWM | Pico |
| Programación | MicroPython (≈ Python, lenguaje muy demandado: Netflix, Spotify, Instagram) | IDE Arduino (Processing) | empate |
| Documentación / comunidad | buena, comunidad en formación | excelente, madura (librerías para todo: motores, CNC) | empate + punto Nano |
| Sensores/actuadores | algunos se quedan cortos: la mayoría del mercado está diseñada a 5 V | 5 V nativo | Nano |
| Arquitectura / procesamiento | 32 bits | 8 bits | Pico |

**Resultado: Pico ~7-8, Nano ~4** — «compren los dos»; la verdadera batalla sería comercial.

## Observaciones

- Contexto de la época: desabastecimiento mundial de la Pico en sus primeras semanas, con especulación de precio en tiendas.
- Argumento educativo destacado: aprender MicroPython es aprender Python (empleabilidad); el profe usó Arduino + Scratch for Arduino para enseñar lógica a nivel universitario.

## Relacionado

- Predecesor del mismo eje: [[resumen-FAV-348-pico-curso-micropython]] (curso MicroPython, presenta ambas placas).
- Continúa con pantalla OLED en Pico: [[resumen-FAV-350-pico-juego-oled]] (siguiente favorito).

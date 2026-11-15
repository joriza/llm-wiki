# FAV-348 — Raspberry Pi PICO en Español: Curso de MicroPython [N° 001] (Sergio A. Castaño Giraldo)

- **Fuente original**: `raw/electronica-practica/2021-03-01-curso-micropython-pico-introduccion.md` — https://www.youtube.com/watch?v=2cqeFDw0VLc — canal Sergio A. Castaño Giraldo (Control Automático Educación), 2021-03-01, 06:04, español (subs automáticos).
- **Dominio**: `electronica-practica/`.
- **Nota S4**: la URL lleva `list=` de playlist ajena — procesado como video suelto (capítulo 1 del curso).

## Qué es

Episodio de introducción de un **curso gratuito de MicroPython** enfocado en la Raspberry Pi Pico (con extensiones al ESP8266): qué es MicroPython, de dónde viene y qué placas lo soportan.

## Puntos clave

- **MicroPython** es una implementación reducida de Python 3 para microcontroladores, creada por Damien George (2013, Kickstarter); nació sobre el STM32F405 (placa Pyboard) y se extendió a placas ESP y a la Pico.
- Es lo bastante compacto para caber en 256 KB de código y 16 KB de RAM: el código `.py` se almacena en el chip y se compila en tiempo de ejecución (**bare metal**, sin sistema operativo).
- Ofrece REPL interactivo, enteros de precisión arbitraria, closures, listas por comprensión, generadores y manejo de excepciones.
- **Raspberry Pi Pico**: primera placa de la Raspberry Foundation con el chip propio **RP2040** — 2 núcleos ARM Cortex-M0+ hasta 133 MHz, 264 KB RAM / 2 MB flash (como dijo el video; valores normalizados), sensor de temperatura a bordo, RTC, 40 pines (26 multifunción), SPI/I2C/UART, 3 entradas ADC de 12 bits, 16 canales PWM; programable en Python, C y C++.
- **NodeMCU ESP8266 (versión LoLin)**: chip ESP8266 + WiFi, interfaz USB-serie, regulador 3.3 V, 11 pines GPIO y un pin ADC; programable con MicroPython o Arduino.

## Relacionado

- Mismo eje MicroPython/microcontroladores: [[resumen-FAV-346-upyos-github]] (upyOS corre sobre MicroPython) · [[resumen-FAV-347-upyos-hwlibre-alimentacion]].
- Compara la Pico con el mundo Arduino: [[resumen-FAV-349-pico-vs-arduino-nano]] (siguiente video de la misma serie de favoritos).

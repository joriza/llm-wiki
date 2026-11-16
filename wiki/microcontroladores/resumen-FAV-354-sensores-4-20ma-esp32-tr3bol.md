# FAV-354 — Sensores industriales 4–20 mA con ESP32 (SIN PLC) (TR3BOL Argentina)

- **Fuente original**: `raw/microcontroladores/2025-10-15-sensores-industriales-4-20ma-esp32-tr3bol.md` — https://www.youtube.com/watch?v=XkdxKrvYVnc — canal TR3BOL Argentina, 2025-10-15, 14:27, español (subs automáticos).
- **Dominio**: `electronica-practica/`.

## Qué es

Cómo leer sensores industriales con lazo de corriente **4–20 mA** (transductores de presión, sensores de nivel de 2 cables, conductímetros; variantes de 3+ cables) usando un ESP32 en lugar de un PLC.

## Contenido técnico

- **Simulación del sensor**: módulo comercial convertidor tensión→corriente (entrada 0-3.3 V → salida 4-20 mA), calibrado con potenciómetro multivuelta en los extremos (4 mA y 20 mA exactos). Cuidado con el sobrepico al encender la fuente (no enchufar bajo corriente).
- **Resistencia shunt**: convertir el lazo de corriente a tensión legible por el ADC. Una de 220 Ω da 3.58 V a 20 mA — fuera del rango seguro del ESP32; se elige **120 Ω** (0.43–2.16 V, dentro de 0-3.3 V). Recomendación: precisión 0.1 %, baja deriva térmica (~25 ppm).
- **ADC**: ADC del ESP32 de 12 bits (vs 10 bits del ESP8266), con precisión aceptable aunque no ideal.
- **Escalado con hardware externo**: ADC externo **ADS1115** por I2C (solo 2 pines + conversor lógico de niveles), multiplicable con el mux **TCA9548A** para leer muchos canales 4–20 mA.
- **Demo real**: sensor de nivel sumergible de 2 cables alimentado a 24 V, shunt de 120 Ω en el negativo: 4 mA en aire → ~5.32 mA al fondo del tanque; lectura impresa en mA por el ESP32 en todo el rango.

## Cruces

- Línea ESP32 del dominio: conecta con [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] (conectividad) y FAV-355 (FreeRTOS, mismo ecosistema).
- I2C vuelve como bus de expansión (ADS1115/TCA9548A) — mismo patrón que el OLED I2C de [[resumen-FAV-350-pico-juego-oled]].

- **Consolidación (2026-11-15): fuente de la entidad [[tr3bol-argentina]] y cruce del concepto [[i2c]] (ADS1115/TCA9548A).

# FAV-352 — Proyecto timbre de un colegio: reloj de tiempo real RTC (El profe García)

- **Fuente original**: `raw/electronica-practica/2017-06-28-reloj-tiempo-real-rtc-profe-garcia.md` — https://www.youtube.com/watch?v=tYuSah73zxY — canal El profe García, 2017-06-28, 14:43, español (subtítulos manuales es-419; `list=` de playlist ajena ignorado por regla S4).
- **Dominio**: `electronica-practica/`.

## Qué es

Tutorial del módulo de reloj de tiempo real (RTC) con Arduino. El título menciona el «proyecto timbre de un colegio» como caso de uso final (programar el horario de clases), pero el video desarrolla el componente clave: cómo el RTC mantiene fecha y hora actualizadas durante ~2-3 años gracias a su batería interna, aun con cortes de energía.

## Contenido técnico

- **Usos típicos**: riego programado, alimentación de ganado, registro de datos con fecha/hora (data logging), horarios de campanas escolares.
- **Comunicación por I2C**: 3 señales obligatorias (reloj, datos, GND) + VCC opcional (5 V, admite fuentes separadas para Arduino y módulo).
- **Conexión**: los pines I2C del Arduino (SDA/SCL junto a A4/A5, no marcados en la placa) hacia el módulo RTC.
- Programación de la fecha/hora inicial y lectura posterior para disparar eventos según horario.

## Cruces

- El protocolo I2C vuelve en varias fuentes del dominio ([[resumen-FAV-350-pico-juego-oled]]: OLED por I2C; FAV-396 pendiente de carpeta ESP32: pantallas I2C vs SPI) — candidato a página de concepto si alcanza el umbral en consolidación.
- Complementa la línea Arduino/ESP32 del dominio ([[resumen-FAV-349-pico-vs-arduino-nano]]).

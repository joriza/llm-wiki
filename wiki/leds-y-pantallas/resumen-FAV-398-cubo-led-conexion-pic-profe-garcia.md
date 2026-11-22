# Cubo LED: conexión al PIC (El profe García)

**Fuente**: [✅ Cubo LED, Como armarlo paso a paso (LED Cube)](https://www.youtube.com/watch?v=Ia3viImc_KM)
**Canal**: El profe García · **Publicado**: 2014-03-26 · **Duración**: 07:24 · **Idioma**: es (subs automáticos)
**Raw**: `raw/leds-y-pantallas/2014-03-26-cubo-led-conexion-pic-profe-garcia.md` (FAV-398, 2026-11-15)

*Nota*: el bookmark traía una playlist ajena en la URL (`list=PLnwu2s7...`), ignorada según S4; el video real es el capítulo de **conexión del cubo LED al PIC** (paso a paso del montaje eléctrico, no del ensamblado de LEDs, que remite a videos previos del canal).

## Qué cubre

Cableado completo de un cubo LED 4×4×4 (torre de 4 LEDs por piso) a un **PIC16F** para la multiplexación: alimentación, reloj, y las 8 salidas del puerto B repartidas entre capas y columnas con transistores.

## Contenido técnico

- **Alimentación**: fuente de 12 V → regulador **LM7805** (entrada izquierda, GND centro, 5 V a la derecha) para alimentar el PIC (pata 14); los 12 V se mantienen para las columnas. Reset (pata 4/MCLR) a positivo vía 10 kΩ. Reloj: cristal de **4 MHz** entre patas 15-16 con dos condensadores de lenteja **22 pF** a tierra. Tierra por pata 5.
- **Salidas del puerto B (8 bits)** divididas en dos grupos de 4:
  - **Capas/pisos** (bits con patas 13/12/11/10): cada piso unifica sus negativos en un cable → base de un **2N2222A** vía **10 kΩ**; emisor a tierra, colector al piso. El transistor conduce la tierra del piso activo (conmutación por el lado bajo).
  - **Columnas** (patas 9 y afines): transistores 2N2222A en configuración de conmutación por el lado alto: colector a **+12 V vía resistencia limitadora de 500 Ω ½ W** (el autor usó 330 Ω por falta de la correcta — advierte calentamiento), emisor libre hacia las columnas del cubo; base vía 10 kΩ desde el puerto.
- **Multiplexación efectiva**: al activar una columna (positivo a los 4 LEDs de esa columna en todos los pisos) y a la vez una sola capa con su transistor, solo los LEDs de la intersección capa×columna se encienden.
- **Expansión**: se pueden conectar cubos adicionales **en paralelo** en los mismos puntos — los transistores amplifican la corriente, así manejan 2-4 cubos sin problema.
- Serie del canal: ensamblado de los pisos, programación del PIC y grabado con FlowCode + PICkit 2 en videos previos.

## Cruces

- Mismo canal: [[resumen-FAV-351-que-es-un-fpga-profe-garcia|FPGA]] (FAV-351), [[resumen-FAV-352-rtc-timbre-colegio-profe-garcia|RTC/timbre]] (FAV-352), [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|pantalla 16×16 WS2812B]] (FAV-375), [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (FAV-383), [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|dibujos OLED]] (FAV-384), [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|I2C]] (FAV-386).
- Clúster cubos LED: [[resumen-FAV-397-matriz-led-sin-controlador-arduino-demmake|matriz LED sin controlador]] (FAV-397, mismo multiplexado capas×columnas), big 8x8x8 cube (sin resumen en la wiki) (FAV-399), 8x8x8 cube at home (sin resumen en la wiki) (FAV-400).
- Transistores como conmutadores: [[transistor-bjt]].

- **Consolidación (2026-11-15): fuente de [[cubos-matrices-led]] y de la entidad [[el-profe-garcia]].

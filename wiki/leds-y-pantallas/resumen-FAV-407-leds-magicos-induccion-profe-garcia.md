# LEDs mágicos por inducción electromagnética (El profe García)

**Fuente**: [✅LED Mágicos, el secreto revelado y construcción desde cero](https://www.youtube.com/watch?v=-zV_KVFG-iY)
**Canal**: El profe García · **Publicado**: 2022-05-18 · **Duración**: 13:03 · **Idioma**: es (subs automáticos)
**Raw**: `raw/leds-y-pantallas/2022-05-18-leds-magicos-induccion-profe-garcia.md` (FAV-407, 2026-11-15)

*Nota*: el bookmark traía una playlist ajena (`list=`), ignorada según S4.

## Qué cubre

Revela el "secreto" de los LEDs mágicos comerciales (~20 USD): **inducción electromagnética** — el LED nunca toca la batería; un transmisor oculto bajo la mesa (bobina oscilante) induce corriente en la bobina del receptor. Replica el circuito completo por ~1 dólar.

## Contenido técnico

- **Receptor comercial**: LED + **bobina de ~7 cm** + pequeño condensador en paralelo. Alcance medido: **~7,5 cm** horizontal y vertical (con regla plástica — la metálica perturbe el campo y falsifica la medición). Girar el LED 90° lo apaga: la orientación de la bobina respecto al campo importa.
- **Receptor casero**: primera prueba con la **bobina de un relé** (funciona, muy tenue); luego bobina propia enrollada con cable normal de protoboard → funciona mejor que la del relé, sin condensador.
- **Transmisor**: oscilador de **un solo transistor 2N2222A** (izquierda emisor, centro base, derecha colector) con bobina de **tap central**: dos cables (marrón + blanco) enrollados, la unión de ambos es el tap (base) y los extremos van a colector y positivo. Alimenta una fuente variable: el punto óptimo está entre **1 y 3 V** (probado ~1,69 V / 0,2 A; también funciona a 1,3 V — batería comercial). Más voltaje quema el transistor.
- **Resultados**: alcance ~1,5-2 cm con el transmisor casero (vs 7,5 cm del comercial), atraviesa una tabla de ~2 cm. Coste < 1 USD.
- **Conexión conceptual**: es el mismo principio de la **carga inalámbrica de celulares** (Qi), solo que con circuito más caro.

## Cruces

- Mismo canal: [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo LED al PIC]] (FAV-398), [[resumen-FAV-405-conectar-100-leds-una-salida-profe-garcia|100 LEDs a una salida]] (FAV-405 — 2N2222A conmutador), [[resumen-FAV-406-tira-led-ritmo-musica-profe-garcia|tira LED música]] (FAV-406).
- Transistores: [[transistor-bjt]].

- **Consolidación (2026-11-15): fuente de la entidad [[el-profe-garcia]].

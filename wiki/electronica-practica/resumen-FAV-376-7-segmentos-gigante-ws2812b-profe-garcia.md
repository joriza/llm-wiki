# FAV-376 — Display de 7 segmentos gigante con WS2812B

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=I3Q0RrcN8iY) · canal El profe García · 2026-01-11 · 12:54 · FAV-376
- **Transcripción**: `raw/electronica-practica/2026-01-11-7-segmentos-gigante-ws2812b-profe-garcia.md`
- **Dominio**: electronica-practica/

## De qué va

Construcción de un display de 7 segmentos ~10× más grande que el clásico de protoboard, formado con tiras de LED inteligentes WS2812B (dos LED por segmento), PCB propio mandado a fabricar y control por ESP32. Aplicaciones: contador de segundos/cronómetro, digiturno y marcador de tenis/pádel (uniendo módulos de 2 dígitos en cascada).

- **Cableado de segmentos**: abandona el orden clásico del display 7 segmentos (A-G + dp) y renumera los segmentos siguiendo una «S invertida» para que la señal DIN→DOUT del WS2812B recorra los segmentos en secuencia con el mínimo cableado; cada segmento puede ir del color que se quiera (LED RGB direccionable).
- **Diseño 3D y PCB**: carcasa modelada en Tinkercad (2 mm de alto para las pruebas, STL y diseño compartidos); PCB diseñado con Gerbers y fabricado vía JLCPCB. Nota de hardware: las curvas cerradas de las pistas de datos causaban LED fantasma a la frecuencia de ~800 kHz del WS2812B — hubo que abrir las pistas y puentear la línea de datos con cables.
- **Montaje y enseñanzas**: componentes primero, tiras LED al final (soldando 5 V/señal/GND); las soldaduras en ángulo recto sobre pistas provocaron LED fantasma y se rehicieron con cables. Difusor: una simple hoja de papel o papel contact da mejor lectura que acrílicos gruesos (>1 cm distorsiona). Carcasa de PLA blanco pintada de negro para evitar fuga de luz entre módulos (PLA negro directo es mejor).
- **Software**: sketch generado asistidamente con ChatGPT (describiendo pines, cantidad de LED y brillo; hubo que corregir el mapeo al orden de segmentos propio). Contador de segundos en verde y décimas en azul/magenta, reset al reiniciar el micro. LDRs previstos en los extremos para reacción al tapado (marcador de pádel) en un proyecto posterior.

## Notas

- ASR normalizado solo aquí: «Tinkercat» = Tinkercad, «Chag/CH GPT» = ChatGPT, «dinastatecnologica» = dinastiatecnologica.com (proveedor de tiras mencionado), «JLCspcB» = JLCPCB, «LR o fotorresistencias» = LDR.
- Cruces: misma técnica de tiras direccionables WS2812B que [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]] (protocolo de un cable, DIN→DOUT, LED fantasma también por ruido); mismo canal y línea de curso que [[resumen-FAV-351-que-es-un-fpga-profe-garcia]], [[resumen-FAV-352-rtc-timbre-colegio-profe-garcia]] y [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]]; fabricación de PCB vía servicio externo (JLCPCB) en contraste con la fabricación casera de [[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]] y las herramientas de diseño de [[diseno-pcb-herramientas]].

- **Consolidación (2026-11-15): fuente de la entidad [[el-profe-garcia]].

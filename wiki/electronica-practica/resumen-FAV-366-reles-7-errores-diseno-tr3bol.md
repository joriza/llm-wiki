# FAV-366 — [RELAY] 7 FORMAS de ARRUINAR tus DISEÑOS

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=IlfEYTcdfHE) · canal TR3BOL Argentina · 2025-01-14 · 10:58 · FAV-366
- **Transcripción**: `raw/electronica-practica/2025-01-14-reles-7-errores-diseno-tr3bol.md`
- **Dominio**: electronica-practica/

## De qué va

Los 7 errores clásicos al incorporar relés (activación de potencia) en diseños de PCB con microcontrolador, cada uno con demo de laboratorio:

1. **Conexión directa al GPIO**: un pin no puede manejar potencia — el GPIO del ATmega328P admite máx. 40 mA absoluto (trabajar a ≤4-5 mA); el consumo de establecimiento de un relé de 5 V ronda 70 mA. Solución: etapa de amplificación con transistor (base ~1 mA × β=100 → hasta 100 mA).
2. **Olvidar el diodo de recirculación**: la bobina es carga inductiva; al abrir el circuito el sobre-pico puede ser decenas de veces la tensión nominal y crece con la frecuencia. Un 1N4007 en paralelo con la bobina elimina los picos.
3. **Olvidar el optoacoplador**: aislación eléctrica entre lógica y potencia (ej. PC817C): opto-LED → optotransistor → transistor → relé.
4. **Usar la misma fuente de alimentación** para lógica y potencia: el opto no sirve de nada si comparten fuente; ideal dos fuentes separadas, o al menos filtrar la alimentación del micro.
5. **Mal relleno de GND**: conexión estrella — camino de GND independiente para lógica y potencia, unidos en un solo punto (cerca de la bornera de la PCB o mejor aún fuera de ella); el relleno de cobre debe excluirse del GND de potencia.
6. **No usar caladura (slot)** entre bobina y contactos del relé cuando la potencia es alta: evita arcos eléctricos; indicable en la huella.
7. **Activación por HIGH (el más peligroso en ESP32/ESP8266)**: muchos pines son high-on-boot — durante el arranque se cierra la carga de forma no deseada. Lo seguro es activar por LOW (además el pin drena más corriente como sumidero — 28 mA en ESP32 — que la que suministra como fuente — 20 mA).

## Notas

- ASR: «trebola» = TR3BOL, «ad mea 328p» = ATmega328P, «sp32/SP 32» = ESP32, «caladura» = caladura/slot de aislación; normalizado solo aquí.
- Cruces: los strapping pins y high-on-boot detallan el semáforo de [[resumen-FAV-361-que-pines-usar-esp32-tr3bol]]; corriente fuente/sumidero del GPIO conecta con la arquitectura del [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]]; el transistor como amplificador enlaza con [[transistor-bjt]]; el mismo criterio de fiabilidad por diseño de PCB aparece en [[resumen-FAV-364-microcontroladores-industria-mito-tr3bol]]. Mismo canal: [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]].

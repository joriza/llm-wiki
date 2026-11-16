# FAV-364 — ¿Microcontroladores en la industria: mito o realidad?

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=kgdIz0SuABI) · canal TR3BOL Argentina · 2025-03-20 · 11:10 · FAV-364
- **Transcripción**: `raw/microcontroladores/2025-03-20-microcontroladores-industria-mito-tr3bol.md`
- **Dominio**: electronica-practica/

## De qué va

Desmonte del mito «los microcontroladores (ESP32, ESP8266, Arduino, STM32, PIC) no sirven en la industria» desde la experiencia de TR3BOL (700+ desarrollos industriales). Ideas centrales:

- **MCU vs placa de desarrollo**: el MCU es el chip (procesador + memoria + periféricos); la placa (Arduino Uno/Nano = mismo ATmega328P en THT/SMD, NodeMCU = ESP8266, DevKit = ESP32) es solo un extensor de pines con regulador, USB-UART (CH340) y cristal. Arduino: 2 capas; placas NodeMCU/ESP: 4 capas.
- **¿Qué hay dentro de un PLC?** Sin carcasa: una placa de procesamiento/comunicación, una de E/S **optoacopladas** con salidas a relé y una fuente conmutada. Usan MCUs comunes (Arm Cortex-M/A, x86) y protocolos nativos RS-232/RS-485, Modbus, Profibus, EtherCAT. Es decir: un PLC también es un microcontrolador con buen diseño.
- **Conclusión**: la fiabilidad no depende del micro sino del diseño de PCB (protecciones, inmunidad al ruido, filtros, watchdog) y de la programación embebida. Ventajas del micro bien diseñado frente a PLC: soluciones a medida, costo menor en series, consumo (baterías), tamaño y conectividad integrada (WiFi/LoRa/Bluetooth).

## Notas

- ASR: «sp32/sp82 66» = ESP32/ESP8266, «pls» = PLC, «izan» = Siemens(?); normalizado solo aquí.
- Cruces: complementa la parte práctica industrial del mismo canal en [[resumen-FAV-354-sensores-4-20ma-esp32-tr3bol]] (lazos 4–20 mA sin PLC) y [[resumen-FAV-361-que-pines-usar-esp32-tr3bol]] (buenas prácticas de pines); diseño de PCB profesional conecta con [[diseno-pcb-herramientas]].

- **Consolidación (2026-11-15): fuente de la entidad [[tr3bol-argentina]].
- Ver también: [[resumen-FAV-408-amplificador-audio-transistor-13003-tokio-electronic]] — contrapunto práctico discreto vs micro.

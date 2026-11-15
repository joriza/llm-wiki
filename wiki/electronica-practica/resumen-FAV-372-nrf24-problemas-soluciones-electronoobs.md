# FAV-372 — Problemas con NRF24: soluciones y mejoras

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=8YIy0IyV4c4) · canal ELECTRONOOBS en Español · 2022-10-22 · 12:54 · FAV-372
- **Transcripción**: `raw/electronica-practica/2022-10-22-nrf24-problemas-soluciones-electronoobs.md`
- **Dominio**: electronica-practica/

## De qué va

ELECTRONOOBS repasa los problemas típicos del módulo de radio NRF24L01 (~30 % de sus comentarios son frustraciones) y sus soluciones, desde la perspectiva de sus propios proyectos (mandos de radio, mini dron, ELECTRONOOBINO):

- **Conexiones**: el módulo usa SPI y necesita 7 pines (alimentación, MOSI/MISO, CE, CSN, SCK) — mucho cable y alta probabilidad de error; además su conector de 2 filas no entra en protoboard (hace falta adaptador). Recomendación: PCB propia o adaptador con regulador incluido.
- **Ruido en SPI**: los picos de corriente de motores DC o pistas PWM inducen ruido en las pistas SPI; no enrutar SPI cerca de alimentación conmutada, no intentar «jaula de Faraday» con vías (empeoró el ruido — para eso existen módulos con blindaje metálico), y truco práctico en protoboard: enrollar el cable de GND alrededor de MOSI/MISO.
- **Alimentación**: funciona a 3,3 V estrictos (más lo quema, menos no funciona); ~20 mA en uso (más el modelo amplificado). El AMS1117 tiene dropout de 1,1 V (con LiPo 4,2 V da solo 3,1 V — insuficiente); mejor el HT7333 (dropout 100 mV, pero 250 mA máx — repartidos con todo el PCB puede no alcanzar). Nunca reguladores conmutados; añadir condensador (cerámico electrolítico o de tantalio) soldado lo más cerca posible del pin de 3,3 V del módulo.
- **Alcance**: el módulo amplificado con RFX2401C y antena externa de ~10 cm da mucho más alcance (ideal para el transmisor de un mando); versión SMD (NRF24LE1/variantes) para proyectos pequeños sin amplificación, y hoy también existe la SMD amplificada.
- **Software**: pines SPI de hardware fijos (11/12/13 en Uno); verificar mismo canal en TX y RX; bajar la velocidad a 250 kbps reduce errores.

## Notas

- Subtítulos manuales; ASR mínimo.
- Cruces: radio 2,4 GHz para IoT sin router, alternativa al ESP-NOW de [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] y a BLE/WiFi comparados en [[resumen-FAV-359-de-arduino-a-esp32-iotlab]]; los pines SPI 11/12/13 son los mismos que usa la pantalla TFT de [[resumen-FAV-371-arduino-desde-cero-cap54-tft-ili9341-bitwise-ar]] (compartir bus SPI entre periféricos); el cuidado con ruido de pistas conmutadas y reguladores conecta con el diseño de fuentes conmutadas ([[resumen-FAV-316-fuente-conmutada-oscilando]]) y con el ajuste de corriente/estabilidad visto en el reloj de precisión del powerTimer ([[resumen-FAV-368-powertimer-consumo-cero-developonchip]]).

# WL-746 — Lo que el ESP32 hace y tu Arduino no (por 5 dólares) (Soy Prototipo Cero)

- **Fuente original**: `raw/wl/tramo-106/2026-11-18-lo-que-el-esp32-hace-y-tu-arduino-no-por-5-dolares.md` ([YouTube](https://www.youtube.com/watch?v=3pLG1FhKCFk))
- **Canal**: Soy Prototipo Cero (1.ª fuente en la wiki)
- **Publicado**: 2026-11-18 · **Duración**: 11:57 · **Idioma**: es-419 (**subtítulos manuales** — sin garbiñeos de ASR)
- **Tramo**: 106 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Duelo comparativo Arduino Uno R3 vs. ESP32 ($5) en formato pelea por puntos, bien pedagógico y con datos verificables (hojas de datos, informes anuales de Espressif). Microlección de la **historia accidental del ESP8266**: en 2014 la comunidad descubrió en una tienda china una placa de $5 con WiFi cuyo manual venía en chino — la tradujeron a mano línea por línea en foros, y en 2015 ya se programaba con el IDE de Arduino. Espressif capitalizó: ESP32 en 2016 (dos núcleos, BT, touch), 1.500 millones de chips vendidos hoy (los últimos 500 M en poco más de dos años — probablemente dentro de enchifes, focos y cafeteras ajenos al hobby).

## Los 5 puntos del duelo (datos concretos)

1. **Cerebro**: ATmega328P 16 MHz/8-bit/2 KB RAM vs. ESP32 dual-core 240 MHz/32-bit/520 KB RAM (~260× más memoria).
2. **WiFi nativo**: radio 2,4 GHz con antena PCB dibujada en el circuito; puede SER una página web, crear su propia red (modo AP) o avisar desde cualquier lugar por internet. **Trampa que casi nadie cuenta**: con el WiFi encendido mueren las 10 entradas del ADC2 (la radio las usa internamente) — los sensores analógicos van en ADC1.
3. **Bluetooth dual**: clásico (puede hacerse pasar por parlante con un amplificador) + BLE (teclado/HID de juego desde un botón de protoboard). Ojo: el ESP32-S3 solo trae BLE — para audio, la variante clásica (ESP32-WROOM-32).
4. **Sueño profundo**: ~10 µA (24.000× menos que transmitiendo a 240 mA) → meses de batería con ciclo despertar-medir-enviar-dormir. **Matiz honesto**: en la placa de desarrollo típica el dormido real es ~4 mA (400× peor) — el culpable es el entorno (regulador, chip USB, LED de encendido), no el chip; los proyectos que duran meses usan el módulo solo o placas sin LED.
5. **Touch capacitivo**: 10 patas que detectan el dedo midiendo la variación de carga del cuerpo (balde más grande = menos ciclos de carga/descarga), incluso como fuente de despertar del sueño profundo.

## El giro final (la tesis real del video)

Contraejemplos del ESP32 señalados con honestidad: lógica a 5 V vs. 3,3 V (sensor de 5 V directo = chip quemado; hace falta divisor o convertidor de nivel), ADC no lineal en los extremos, y simplicidad pedagógica del Arduino ("lo que escribes es lo que pasa"). Y el remate: **la pelea nunca fue Arduino contra ESP32** — la Arduino Uno R4 WiFi (2023) lleva un ESP32-S3 de Espressif adentro.

## Cruces

- Complemento en español del hilo ESP32 del dominio: [[resumen-FAV-359-de-arduino-a-esp32-iotlab]] (la misma migración contada como tutorial), [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] (la radio que este video presenta), [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]] (los dos núcleos que aquí solo se mencionan). Sin página de concepto [[esp32]] aún — candidata fuerte para consolidación (≥10 fuentes en `microcontroladores/`).
- El duelo Pico vs. Arduino ya cubierto en [[resumen-FAV-349-pico-vs-arduino-nano]]: tercer marco comparativo del dominio, mismo género didáctico.

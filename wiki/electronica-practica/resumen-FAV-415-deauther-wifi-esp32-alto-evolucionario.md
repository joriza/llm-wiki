# FAV-415 — Atacando redes Wi-Fi con NodeMCU ESP32 Deauther (PMKID, WPA2 handshake) — Alto Evolucionario

- **Fuente original**: raw/electronica-practica/2026-11-15-deauther-wifi-esp32-nodemcu.md (YouTube hJBYvOV51QQ, canal Alto Evolucionario, 2024-02-29, ES con subs automáticos, 21:05).
- **Dominio**: `electronica-practica/`.

## Qué es

Tutorial paso a paso en español para convertir una placa **NodeMCU ESP32 (DuIT ESP32 Kit V1)** en una herramienta de **penetración Wi-Fi** basada en el proyecto **ESP32 Deauther**: captura de **PMKID**, captura de **handshake WPA/WPA2** y **ataques de desautenticación** contra redes 802.11 b/g/n en la banda de 2,4 GHz. El canal ya había construido una herramienta equivalente sobre ESP8266 («WiPa»); esta versión añade funciones y aprovecha la potencia del ESP32 (dual-core Xtensa LX6 a 160/240 MHz, 520 KB SRAM, 4 MB flash).

## Contenido

- **Marco legal y ético**: herramienta de prueba sobre redes propias; el ataque de deautenticación es un DoS conocido al que muchos dispositivos baratos de IoT siguen siendo vulnerables — sirve para auditar si hay que modernizar la red.
- **Instalación vía 1**: compilación con **ESP-IDF 4.1.4** (framework oficial de Espressif) + VS Code 1.86; descarga del proyecto (repo o fork) como ZIP, configuración con `menuconfig` (frecuencia CPU 240 MHz, controlador Wi-Fi), selección de método de carga UART y flasheo con el pulsador BOOT.
- **Instalación vía 2 (sin programar)**: flasheo directo de los binarios (bootloader, particiones, app) con **ESP32 Download Tool (Flash Download Tool)** en modo develop, chip ESP32, carga UART.
- **Uso**: al arrancar, la placa crea un AP de gestión (SSID tipo «TP-Link_management_IP»); desde el navegador se eligen red y clientes objetivo, método de ataque «deauth combine all» y duración (default 120 s; el demo usa 30 s). Se verifica el éxito desconectando y reconectando un cliente.

## Relacionado

- Documentación del proyecto hermano sobre ESP8266: [[resumen-FAV-412-esp8266-deauther-spacehuhn]] (el tutorial hace referencia explícita a su «WiPa» basada en ese firmware).
- Programación del ESP32 desde Arduino IDE como alternativa al IDF: [[resumen-FAV-358-programar-esp32-arduino-electronicspot]]; migración Arduino→ESP32: [[resumen-FAV-359-de-arduino-a-esp32-iotlab]]; placa ESP32-C3 SuperMini: [[resumen-FAV-360-esp32-c3-supermini-arduino-ide-surflaweb]].


## Consolidación (2026-11-15)

- Clúster y canal consolidados: [[deauther-wifi-ofensivo]] · entidad [[alto-evolucionario]].

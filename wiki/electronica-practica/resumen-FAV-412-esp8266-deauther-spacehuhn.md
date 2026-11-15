# FAV-412 — ESP8266 Deauther (docs de Spacehuhn)

- **Fuente original**: fuente web no-YouTube (sin raw) — https://docs.spacehuhn.com/deauther/ — documentación oficial del ESP8266 Deauther de Spacehuhn.
- **Dominio**: `electronica-practica/`.

## Qué es

Firmware open source para **ESP8266** que convierte la placa en una herramienta de **prueba de redes 802.11** con tres funciones principales:

- **Escaneo Wi-Fi**: vista en tiempo real de access points y clientes cercanos.
- **Ataque de deautenticación**: envío de tramas deauth para desconectar dispositivos seleccionados (el ataque DoS principal; muchos dispositivos antiguos y hardware IoT barato siguen siendo vulnerables — con Wi-Fi 6 la exposición disminuye).
- **Beacon y probe flooding**: creación de decenas de redes falsas y envío de probe requests falsificados para confundir escáneres y trackers.

## Notas

- Documentación de instalación desde GitHub; interfaz web de gestión con AP «pwned» (contraseña `deauther`).
- Posicionamiento del proyecto: **proof of concept educativo** — usar solo contra redes y dispositivos propios y conforme a la regulación local; ni el ESP8266 ni su SDK fueron diseñados para esto y pueden fallar.
- Excelente proyecto de aprendizaje sobre Wi-Fi, microcontroladores, Arduino y electrónica/programación.

## Relacionado

- Tutorial en video del mismo tipo de herramienta sobre ESP32: [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]].
- NodeMCU ESP8266 programado desde Arduino IDE: [[resumen-FAV-357-nodemcu-esp8266-arduino-beeggle]].

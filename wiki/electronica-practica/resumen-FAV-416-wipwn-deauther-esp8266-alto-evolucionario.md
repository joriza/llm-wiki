# FAV-416 — Atacando redes Wi-Fi con Wi-PWN ESP8266 NodeMCU — Alto Evolucionario

- **Fuente original**: raw/electronica-practica/2026-11-15-deauther-wifi-wipwn-esp8266-nodemcu.md (YouTube HJ2jhVcDb5E, canal Alto Evolucionario, 2021-10-27, ES con subs automáticos, 28:11).
- **Dominio**: `electronica-practica/`.

## Qué es

Tutorial paso a paso para instalar, configurar y usar **Wi-PWN**, el firmware antecesor del **ESP8266 Deauther**, sobre una placa **NodeMCU ESP8266 (ESP-12)**. Convierte la placa en una herramienta de auditoría de redes 802.11 b/g/n (solo banda 2,4 GHz) controlada desde una **app Android** (no desde el navegador como el Deauther moderno). Marco ético explícito: pruebas solo sobre redes propias o autorizadas.

## Los tres métodos de ataque

1. **Deauthentication attack** (el principal): suplanta tramas de desautenticación enviadas desde el AP hacia la dirección broadcast; los clientes se desasocian y se re-autentican en bucle. Eficaz e inmediato.
2. **Beacon flood attack**: inunda el espectro con tramas baliza que imitan muchos APs falsos con el mismo SSID pero direcciones MAC distintas, interrumpiendo la asociación de clientes.
3. **Probe request attack** (en desuso): satura al AP con tramas de solicitud; hoy los APs procesan suficiente volumen como para resistirlo.

## Instalación (puntos delicados)

- Código fuente del repo (carpeta `arduino/wipwn`) extraído en el directorio de proyectos de Arduino IDE 1.8.16.
- Núcleo ESP8266 **versión 2.0.0 exacta** vía Boards Manager — cualquier otra versión hace que el ataque no envíe paquetes (error más común según el video).
- Parche manual: editar `user_interface.h` del SDK (`packages/esp8266/hardware/esp8266/2.0.0/tools/sdk/include/`) añadiendo líneas antes del `#endif`, más copiar los fixes `esp8266-wifi.cpp/.h` de la carpeta `sdk_fix`.
- Uso: la placa crea un AP abierto de gestión («GuayPavón» por defecto); desde la app Android se renombra y protege, se escanean redes y clientes, se eligen objetivos y se lanza el ataque (verificable: el LED azul indica actividad; sin conteo de paquetes = instalación mal hecha).

## Relacionado

- Documentación del proyecto sucesor: [[resumen-FAV-412-esp8266-deauther-spacehuhn]]; versión ESP32 con PMKID/handshake del mismo canal: [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]] (Wi-PWN es el antecesor directo del Deauther de Spacehuhn).
- Placa NodeMCU ESP8266: [[resumen-FAV-357-nodemcu-esp8266-arduino-beeggle]].


## Consolidación (2026-11-15)

- Clúster y canal consolidados: [[deauther-wifi-ofensivo]] · entidad [[alto-evolucionario]].

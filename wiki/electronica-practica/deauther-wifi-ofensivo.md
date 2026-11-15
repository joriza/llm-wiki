# Deauther / Wi-Fi ofensivo con ESP8266-ESP32

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — clúster evaluado en el encargo con 5 fuentes confirmadas por conteo real + marco ético común; se crea la página en `electronica-practica/` y se actualizan los back-links).
- **Fuentes**: [[resumen-FAV-412-esp8266-deauther-spacehuhn]] (docs oficiales Spacehuhn) · [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]] (ESP32 Deauther: PMKID + handshake WPA2) · [[resumen-FAV-416-wipwn-deauther-esp8266-alto-evolucionario]] (Wi-PWN, antecesor del Deauther, app Android) · [[resumen-FAV-478-nodemcu-exact-password-evil-twin-techchip]] (Evil Twin + deauth + verificación de contraseña) · [[resumen-FAV-479-esp32c5-deauther-dual-band-short-thebitnest]] (Ghost ESP en ESP32-C5, dual band).
- **Ver también**: los repetidores NAT del mismo dominio ([[resumen-FAV-474-repetidor-wifi-esp32-extensor-alcance-computadoras-y-sensores]], [[resumen-FAV-480-esp32-nat-repetidor-wifi-computadoras-y-sensores]]) — la misma placa como router legítimo, contraste de uso; cruces con la línea ESP32 del dominio.

## El concepto

El **deauther** convierte una placa de desarrollo barata (ESP8266 ~150-300 rupias / ESP32) en una herramienta de prueba de redes 802.11. Las funciones recurrentes en las cinco fuentes:

1. **Deautenticación** (el ataque principal): tramas deauth suplantadas (del AP al broadcast) que desasocian clientes en bucle — un DoS al que mucho hardware IoT barato sigue siendo vulnerable; con Wi-Fi 6 la exposición disminuye.
2. **Captura de credenciales**: PMKID y handshake WPA/WPA2 (FAV-415); **Evil Twin** con portal de phishing que captura y verifica la contraseña real (FAV-478).
3. **Flooding**: beacon flood (muchos APs falsos con el mismo SSID) y probe request (en desuso — los APs modernos lo resisten).

## La genealogía del firmware

Wi-PWN (FAV-416, 2021, app Android) → **ESP8266 Deauther** de Spacehuhn (FAV-412, docs oficiales, control por web) → ESP32 Deauther (FAV-415, más potencia: dual-core 240 MHz, ESP-IDF o binarios con Flash Download Tool) → **Ghost ESP** en ESP32-C5 (FAV-479, 2025: la novedad dual band — llega a 5 GHz, donde los clásicos solo llegaban a 2,4).

## Marco ético común

Todas las fuentes lo declaran explícitamente: **herramienta de auditoría sobre redes propias o autorizadas**. El uso ofensivo contra redes ajenas es ilegal en prácticamente todas las jurisdicciones; el valor didáctico es auditar qué dispositivos de la propia red siguen siendo vulnerables.

## Notas

- FAV-478: fuente en hindi con ASR degradado; el nombre de la herramienta sale garbiñado (identificado por funciones como el ecosistema ESP8266 Deauther) — incertidumbre señalada en el resumen.
- Contraste de placa: el mismo ESP32 que en los repetidores NAT de Computadoras y Sensores construye red legítima (NAT/repetidor) y aquí construye ataque — dos caras del mismo hardware.

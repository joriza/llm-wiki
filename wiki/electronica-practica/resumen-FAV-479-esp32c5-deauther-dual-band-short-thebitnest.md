# FAV-479 — WiFi Hacking Device: deauther dual band ESP32-C5 (theBitnest, Short)

- **Fuente**: [Short en YouTube](https://www.youtube.com/shorts/NOH1t-q8KP8) — Canal **theBitnest**, publicado 2025-06-21, 00:33, EN (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-esp32c5-dual-band-deauther-short.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Qué muestra

Demo de 33 s de un **deauther WiFi de doble banda** basado en **ESP32-C5** — novedad relevante: soporte de **5 GHz** además de los 2,4 GHz habituales en los deauthers del clúster (ESP8266/ESP32 clásicos solo llegan a 2,4).

## Firmware: Ghost ESP

- Repo del firmware: **Ghost ESP**. Flasheado, se opera por **consola serie** con comandos:
  - `scan` — descubre redes vecinas de 2,4 **y** 5 GHz (los LEDs se encienden).
  - `-a 4` — selección del AP objetivo por índice.
  - `attack -d` — inicia el ataque de desautenticación; comando de stop para terminar.

## Valor

Actualización del clúster deauther del dominio ([[resumen-FAV-412-esp8266-deauther-spacehuhn]], [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]], [[resumen-FAV-478-nodemcu-exact-password-evil-twin-techchip]]): primera fuente con banda 5 GHz (ESP32-C5) e interfaz puramente CLI. Video mínimo (33 s, sin explicación): valor de catálogo, no de tutorial. Canal theBitnest: 1 fuente (umbral no alcanzado).

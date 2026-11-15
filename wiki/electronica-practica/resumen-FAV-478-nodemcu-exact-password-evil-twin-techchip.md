# FAV-478 — Capturar la contraseña WiFi con NodeMCU: ataque Evil Twin (TechChip, hindi)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=VeMaF27B0nA) — Canal **TechChip** (Anil), publicado 2024-08-18, 10:00, HI (subtítulos automáticos en hindi, transcripción literal; interpretación al español en este resumen, nombres propios según el ASR con incertidumbre señalada).
- **Raw**: `raw/electronica-practica/2026-11-15-nodemcu-exact-password-hindi.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Qué demuestra

Cómo un **NodeMCU** (placa de desarrollo ESP8266, ~150-300 rupias) se usa para obtener la contraseña exacta de una red WiFi mediante **WiFi phishing / ataque Evil Twin**, alternativa al cracking clásico por handshake (brute force / diccionario), que con contraseñas fuertes puede tardar demasiado o fracasar.

## El ataque

- Se crea un **Access Point clon** del WiFi objetivo; si el usuario cae en la trampa e introduce su contraseña en la página falsa, el atacante la captura y puede **verificar** si es correcta.
- Herramienta usada (el nombre sale degradado en el ASR; por las funciones descritas corresponde al ecosistema del **ESP8266 Deauther**): **deautenticación** de clientes del AP objetivo + Evil Twin simultáneos, con verificación del password capturado.
- Dos vías de instalación: compilar desde el IDE de Arduino (permite personalizar) o flashear el binario precompilado para Windows del release del proyecto.

## Advertencia

El autor insiste en que la demo se hace **en entorno controlado, sobre su propia red**, y alerta al espectador contra este engaño: conectar solo a redes de confianza — es contenido educativo de seguridad, no una incitación.

## Valor

Encaja en el clúster WiFi-ofensivo/ESP8266 del dominio junto a los deauthers ya procesados ([[resumen-FAV-412-esp8266-deauther-spacehuhn]], Spacehuhn; [[resumen-FAV-415-deauther-wifi-esp32-alto-evolucionario]]): aporta la variante Evil Twin/captura de credenciales, complementaria al jamming por desautenticación. Canal TechChip: 1 fuente (umbral no alcanzado).

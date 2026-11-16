# FAV-477 — WiFiManager: gestión dinámica de redes WiFi en ESP32 (Jadsa Tech)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RSKU4f5l9SA) — Canal **Jadsa Tech**, publicado 2023-03-20, 09:59, ES (subtítulos automáticos).
- **Raw**: `raw/microcontroladores/2026-11-15-esp32-wifimanager-redes-dinamicas.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## El problema que resuelve

Credenciales WiFi escritas a fuego en el código: cambiar de red exige editar, compilar y reflashear — inviable para un producto comercial. La librería **WiFiManager** (tzapu, GitHub, >1.200 commits, compatible ESP8266 + ESP32, v2.0.15-RC) lo elimina: el dispositivo gestiona sus redes dinámicamente.

## Funcionamiento

- Modo por defecto **estación + Access Point**: si no encuentra una red conocida, crea su propio AP y levanta un **portal cautivo** de configuración (IP 192.168.4.1 — la misma del repetidor de [[resumen-FAV-474-repetidor-wifi-esp32-extensor-alcance-computadoras-y-sensores]]).
- Uso básico (`AutoConnect`): instancia `WiFiManager`, opcional `resetSettings()` para partir de cero, `autoConnect("SSID", "password")` con nombre propio (mejor que el chip ID críptico por defecto). Si falla la conexión → AP + portal; si conecta → sigue el programa.
- El portal muestra info (chip ID, IPs, temperatura, versión de la librería) y lista las redes detectadas para elegir y guardar credenciales; el ESP32 se reconecta y retoma el loop (blink del LED onboard, pin 5 en la Lolin32 de ejemplo).
- Instalación desde el gestor de librerías del IDE clásico, IDE 2.0 o VS Code + PlatformIO.

## Extensiones

Usos avanzados con parámetros personalizados en el portal requieren HTML/CSS/JS básicos; el canal dejó un WiFiManager propio para un video futuro.

## Valor

Pieza del clúster WiFi/ESP32 del dominio: complementa el repetidor NAT de FAV-474 y los capítulos de redes de la serie ESP32. Canal Jadsa Tech: 1 fuente (umbral no alcanzado).

# FAV-353 — Esto cambia TODO lo que sabías sobre conectar ESP32: ESP-NOW (IoT Lab)

- **Fuente original**: `raw/electronica-practica/2026-01-11-esp-now-conectar-esp32-iotlab.md` — https://www.youtube.com/watch?v=Mwsj5db-5_I — canal IoT Lab, 2026-01-11, 12:43, español (subs automáticos).
- **Dominio**: `electronica-practica/`.

## Qué es

Explicación y tutorial del protocolo **ESP-NOW** de Espressif: comunicación directa entre placas ESP32/ESP8266 usando la radio WiFi de 2,4 GHz **sin router, sin punto de acceso y sin emparejamiento** — alternativa a WiFi (IP, sockets, MQTT/HTTP) y a BLE (parejas, roles, servicios) para mensajes locales pequeños y rápidos. ~70 s iniciales de patrocinio Vitrico (excluido de la síntesis).

## Conceptos clave

- **Dirección MAC como identificador**: cada ESP se registra como «peer» por su MAC (6 bytes, el «DNI» de su interfaz WiFi); se envía a una MAC concreta.
- **Modo estación sin red visible**: se inicializa `WiFi.STA` solo para encender la radio, sin crear AP.
- **Topologías**: 1:1 (botón→LED), estrella (n→1, sensores a un nodo central), broadcast y hasta n:n.
- **Payload**: hasta 250 bytes por mensaje (Arduino); sin garantía de entrega (sin conexión — rápido pero un paquete puntual puede perderse); cifrado en capa de enlace o propio (AES).
- **Puente WiFi**: un ESP32 puede recibir por ESP-NOW y estar a la vez conectado al router, actuando de gateway.

## Comparativa WiFi vs BLE vs ESP-NOW

| Criterio | WiFi | BLE | ESP-NOW |
|---|---|---|---|
| Caudal | alto (OTA, vídeo) | bajo | mensajes pequeños |
| Latencia | peajes (router, IP, TCP/TLS) | depende de configuración | instantánea (paquete directo) |
| Consumo | alto | el mejor (pila/wearables) | eficiente a ráfagas (despertar-enviar-dormir) |
| Fricción de setup | SSID, contraseñas, red | emparejamiento, servicios | cero: la MAC del otro y listo |

## Demo

Emisor con pulsador + receptor con LED (GPIO17): estructura `message` con estado booleano, callback de recepción (`OnDataRecv`) que copia el payload y hace `digitalWrite` — primer sistema inalámbrico ESP-NOW en minutos con dos placas cualquiera.

## Cruces

- Línea ESP32 del dominio (será el tema dominante de la ventana: ver [[resumen-FAV-354]] y FAV-355, 4-20 mA y FreeRTOS).
- Complementa el clúster MicroPython/Pico ([[resumen-FAV-350-pico-juego-oled]]) como contraste de ecosistemas.

- **Consolidación (2026-11-15): fuente de la entidad [[iot-lab]].

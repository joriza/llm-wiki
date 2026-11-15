# FAV-474 — Repetidor WiFi ESP32: extensor de alcance (Computadoras y Sensores)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=naJQhnYYlak) — Canal **Computadoras y Sensores** (Carlos), publicado 2023-01-14, 10:18, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-repetidor-wifi-esp32-extensor-alcance-computadoras-y-sensores.md`
- **Dominio**: `electronica-practica/` (subcarpeta Arduino de la cola Vs+Docencia).

## Qué construye

El ESP32 se convierte en un **router NAT / repetidor WiFi**: se conecta a la red existente como cliente y crea su propia red con otro SSID, extendiendo la cobertura a zonas que la señal original no alcanza.

## Instalación y puesta en marcha

- Firmware desde **GitHub** del proyecto (descarga ZIP, 1,3 MB) + soporte de placas ESP32/ESP8266 de **Espressif** en el IDE.
- La placa pasa a **development mode** (salvo placas de dos puertos USB); se selecciona el directorio del firmware y el puerto **COM** correspondiente al puente USB (COM4 en el ejemplo), cambiando la velocidad a **576.000 baudios**; Start y se observa la consola de flasheo.
- El punto de acceso del dispositivo tiene **IP estática 192.168.4.1**: desde el navegador se abren las configuraciones (SSID, contraseña de la red a repetir, credenciales de la nueva red) y se finaliza.

## Verificación

- Conexión al ESP32 (desconectado de la red original) y **test de velocidad**: resultados «más que aceptables» respecto a la conexión directa.
- Medición de potencia de señal con la app iOS **Airport** (Apple) para comparar la intensidad recibida.

## Valor

Caso práctico de la vertiente WiFi del clúster ESP32 del dominio: complementa la serie de redes ([[resumen-FAV-353-esp-now-conectar-esp32-iotlab]], ESP-NOW) y los repetidores/NAT que continúan en la cola de esta ventana (FAV-476/480, mismo tema). Canal Computadoras y Sensores: 1 fuente (umbral no alcanzado).

## Notas

- Mismo bookmark repetido tres veces en la cola con timestamps distintos (FAV-474/475/476): FAV-475 marcado DUPLICADO en este relevo; FAV-476 queda para el siguiente.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[computadoras-y-sensores]].

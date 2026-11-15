# FAV-357 — Como programar placa Nodemcu con Esp8266

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=vJ3Q-m46cgU) · canal Beeggle Technology - Electronics · 2021-11-20 · 06:24 · FAV-357
- **Transcripción**: `raw/electronica-practica/2021-11-20-programar-nodemcu-esp8266-beeggle.md`
- **Dominio**: electronica-practica/

## De qué va

Tutorial introductorio del equipo de biotecnología de Beeggle Technology sobre el módulo WiFi **NodeMCU con ESP8266** (microcontrolador de 32 bits, bajo consumo, con pila TCP/IP completa), orientado a conectar proyectos de sensores y control a Internet (IoT).

Contenido práctico:

- **Instalación en el IDE de Arduino**: agregar la URL del gestor de tarjetas en Archivo → Preferencias, instalar el paquete de placas ESP desde el Gestor de tarjetas y seleccionar la placa NodeMCU; identificar el puerto COM en el Administrador de dispositivos de Windows.
- **Prueba 1 — conexión WiFi**: sketch con la librería `WiFi` y credenciales de red declaradas como variables; subir el código y verificar la conexión en el monitor serie.
- **Prueba 2 — salida digital**: control de encendido/apagado de un LED usando el pin GPIO12 como salida con `digitalWrite` y retardos.

## Notas

- ASR muy degradado (el reconocimiento devozuela "NodeMCU ESP8266" como "huallpa ms vcp 82-66", "arruinó" por Arduino, "esp 32" por el paquete de placas en el gestor): los nombres correctos están normalizados solo aquí, no en el raw.
- Es un video promocional de tienda (menciona redes, WhatsApp, Mercado Libre); ese material se excluye de la síntesis.
- Cruces: familia ESP como plataforma IoT — [[resumen-FAV-356-esp-connect-herramienta-web-esp32-iotlab]] (herramientas para ESP32), [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]], [[resumen-FAV-348-pico-curso-micropython]] (MicroPython como alternativa a Arduino IDE en microcontroladores).

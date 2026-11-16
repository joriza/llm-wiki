# WL-400 — CREA TU ALEXA POR $10 USD CON ESP32 Y DEEPSEEK HARNESS

- **Fuente**: `raw/wl/tramo-65/2026-09-04-crea-tu-alexa-por-10-usd-con-esp32-y-deepseek-harness.md` (`r6S6w5H6FSE`, https://www.youtube.com/watch?v=r6S6w5H6FSE)
- **Canal**: Programador Novato (1.ª fuente WL)
- **Publicado**: 2026-09-03 · **Duración**: 23:19 · **Idioma**: es (subtítulos automáticos; ASR «Deep Sleep/Deep Speech Harness/Tipsy Hermes/DHS/DSH» = DeepSeek Harness — normalizado solo aquí)
- **Dominio previsto**: ia-uso-practico (proyecto hardware+IA; tangencia electronica-practica)
- **Tramo**: 65 (relevo 5 de 12 del pedido L34)

## Qué trata

Tutorial de 1.ª mano (demo en vivo) de un asistente de voz casero ~10 USD que une tres piezas: ESP32 con micrófono KY-037 y actuadores, Whisper local para transcribir, y **DeepSeek Harness** en la PC como intérprete de intención:

- **Arquitectura**: pulsador → ESP32 graba ≤2 s de audio → POST al servidor Python (puerto 5000) → Whisper (es) transcribe → prompt instruye al Harness «interpreta la orden exacta, devuelve solo JSON válido sin markdown» con acciones acotadas (abrir/cerrar válvula, encender/apagar LED, consultar estado; lista vacía si nada aplica) → el servidor ejecuta la acción devuelta en el ESP32 (LED, servomotor de válvula/grifo, sensor ultrasónico de nivel de tinaco).
- **Montaje**: diagrama y código `.ino` (C/C++) compartidos en la descripción; prototipado previo en **Wokwi** (simulador — el KY-037 se simula con un tensiómetro); Arduino IDE con librería ESP32 Servo; WiFi credentials e IP de la PC hardcodeadas en el firmware; IP del ESP32 se lee por el monitor serie tras reset.
- **Servidor**: Python **3.11 obligatorio** («la que tiene las librerías de audio») en venv dedicado; instalación de DeepSeek Harness vía comando con Node.js como requisito; el prompt de sistema va en `servidor_whisper.py`, no en el Harness.
- **Demo real**: enciende/apaga el foco por voz, abre la válvula (servo), consulta «¿qué tan lleno está el tinaco?» → 28 cm ≈ 72 %, válvula abierta, LED apagado. Portátil con power bank (limitado por WiFi).
- **Límites declarados**: el ESP32 básico solo aguanta grabaciones de 2 s (el S3 u otros más potentes para más); micrófono KY-037 ultrabarato (~1-2 USD) exige acercarse y hablar fuerte; no usar ESP8266 (memoria insuficiente); coste total del dispositivo ~5-7 USD.
- Casos sugeridos: robots, seguridad, talleres inteligentes, asistencia; «excelente proyecto para la escuela».

## Señales de calidad

- Demo de 1.ª mano con fallas visibles en vivo (pulsaciones accidentales, respuestas no reconocidas corregidas re-formulando) — señal de honestidad; códigos y diagrama publicados en descripción (no verificados).
- Versión/paso «instalar Python 3.11 limpiando otras versiones en la carpeta» descrito de forma confusa en el raw (venv dedicado es lo correcto) — matiz normalizado en el resumen.
- Cierre con invitación a su comunidad de pago — excluido de la síntesis.

## Cruces (consolidación diferida, L12)

- [[deepseek-harness]] +1 (caso de uso IoT/voz; cluster WL-23/24/25/27/88), [[delegacion-cognitiva-ia]] tangencial.
- Cluster IA local + hardware: [[inferencia-local]] (Whisper local), WL-147 (seguridad de montajes locales — este diseño manda audio en claro por la LAN, sin capa de seguridad — gap señalado).
- Programador Novato: candidato a entidad de canal (1.ª fuente).

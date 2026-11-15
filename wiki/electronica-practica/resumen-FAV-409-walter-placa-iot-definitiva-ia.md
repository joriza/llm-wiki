# FAV-409 — Walter: la placa IoT definitiva con IA (El Próximo Framework en Ingeniería)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Q1hAE8VwkZY) · `raw/electronica-practica/2026-11-15-walter-placa-iot-definitiva-con-ia.md`
- **Canal**: El Próximo Framework en Ingeniería (ES, ASR)
- **Dominio**: electronica-practica
- **Fecha**: 2026-11-15

## Qué trata

Análisis de la placa **Walter** (Quickspot), una placa IoT celular de grado industrial construida alrededor del **ESP32-S3**, con enfoque en conectividad LPWAN (NB-IoT / LTE-M), consumo ultra bajo y despliegues «instalar y olvidar» a escala de producción — no solo prototipado maker.

## Los cuatro pilares del hardware

1. **Cerebro**: ESP32-S3 con 16 MB flash Quad SPI + 2 MB PSRAM, capaz de ejecutar inferencias de machine learning en el dispositivo (edge AI) sin enviar datos a la nube.
2. **Modem celular** de segunda generación integrado, preparado para 5G, que gestiona nativamente LTE-M (cat. M1) y NB-IoT (NB1/NB2): ahorra espacio, reduce consumo y simplifica el diseño del producto.
3. **Gestión de energía**: regulador que convierte entrada de USB-C o pin (3–5,5 V); modos de ahorro **PSM** y **eDRX** — la analogía del vídeo: el dispositivo duerme como una persona parada y solo «corre» unos segundos para transmitir.
4. **Radiofrecuencia**: conectores U.FL para antenas externas de celular y GNSS; se recomienda antena pasiva porque las activas tienen un consumo impredecible.

## Contexto de redes (espectro IoT)

- **Sigfox/LoRa**: años de batería y unos cientos de bits, pero lentos — nada de actualizaciones de firmware remotas.
- **5G tradicional**: latencia casi nula, pero inviable para un sensor con batería.
- **LPWAN celular (NB-IoT / LTE-M)**: aprovecha la infraestructura LTE existente; LTE-M soporta handover entre torres (esencial para trackers móviles: vehículos, ganado); NB-IoT es el «susurro digital» de espectro estrechísimo.
- Crucial: el proveedor de conectividad debe soportar PSM y eDRX; las SIM eUICC (como las Hyper de la plataforma) cambian de operador por aire.

## Software y ecosistema

- Arduino, MicroPython y ESP-IDF; PlatformIO como segundo escalón para control de bajo nivel (modos de energía, ambos núcleos + coprocesador).
- Esquemáticos y footprint públicos en GitHub (auditoría y derivación de diseños propios).
- Ejemplos listos: MQTT, modem sequence, deep sleep.

## Punto clave: prototipo → producto

Plataformas como Walter están diseñadas para producción en masa: la certificación RF de un producto propio cuesta decenas de miles de dólares y meses; partir de una placa ya certificada reduce la barrera de entrada de forma drástica para agricultura, logística y ciudades inteligentes.

## Cruces

- [[resumen-FAV-362-arquitectura-esp32-bit-micro-lab]] y [[resumen-FAV-363-pinout-esp32-s3-bit-micro-lab]] — el ESP32-S3 en detalle; Walter lo envuelve con conectividad celular.
- [[resumen-FAV-353-esp-now-conectar-esp32-iotlab]] — contraste de alcance: ESP-NOW es corto alcance sin red; Walter apunta a cobertura mundial celular.
- [[resumen-FAV-355-freertos-multitarea-core-esp32-profe-garcia]] — los dos núcleos del S3 que PlatformIO permite controlar.

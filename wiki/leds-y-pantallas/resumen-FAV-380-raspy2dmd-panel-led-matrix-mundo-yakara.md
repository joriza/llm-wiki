# FAV-380 — Raspy2DMD: GIFs, videos y más en panel LED matrix con Raspberry Pi Zero 2 W

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=eaNmocPyS_k) · canal Mundo Yakara · 2024-02-02 · 40:04 · FAV-380
- **Transcripción**: `raw/electronica-practica/2024-02-02-raspy2dmd-gifs-videos-panel-led-matrix-mundo-yakara.md`
- **Dominio**: electronica-practica/

## De qué va

Segunda parte del panel LED matrix del canal: marquesina de 2 paneles HUB75 32×64 (32×128 combinados) manejada por una Raspberry Pi Zero 2 W (~20 USD; la Pico/Zero 1 no alcanza) con la imagen **Raspy2DMD** — alternativa gratuita francesa (raspy-darts, v1.5.6) al Raspi-DMD de pago — que reproduce GIFs, imágenes, videos, clima y textos editables por WiFi desde el navegador.

- **Hardware**: Raspberry Pi Zero 2 W con pines GPIO soldados (patita corta hacia la tarjeta; técnica de anclaje en esquinas opuestas antes de estañar todos los puntos) + «hat» adaptador específico para paneles matrix por GPIO, conexión por contacto. Los 2 paneles se encadenan con el flex incluido (salida del primero → entrada del segundo, identificado por la serigrafía legible) y se unen con soporte impreso en 3D (modelo del autor) o pegamento.
- **Alimentación medida**: el hat alimentado desde el pin 5V/GND de la propia Pi (soldando los cables rojo/negro del conector del panel); consumo total medido con amperímetro: ~0,3 A arrancando, **1 A con pantalla encendida** — un eliminador USB de 2 A basta, sin fuente externa separada (contraste con el video anterior del canal). Arranque lento: 3-4 minutos.
- **Instalación**: imagen Raspy2DMD descargada de la página francesa, flasheada a la SD con balenaEtcher (cuidado de no seleccionar otro disco; cancelar todos los formatos que Windows ofrece para las particiones); WiFi configurado editando `wpa_supplicant.conf` (SSID y password entre comillas, con Notepad++ para no corromperlo) y copiado a la raíz de la partición **Boot**. Si el WiFi quedó bien, la pantalla muestra la dirección `rasp2dmd.local`.
- **Configuración web** (`http://rasp2dmd.local` desde cualquier equipo de la misma red): modo *stand-alone* (sin Raspy-Darts de dardos), hardware (128×32, paneles horizontales/verticales, brillo programable día/noche), clima vía OpenWeather (ciudad, lat/long, unidades), textos con fuente, color, dirección y dirección aleatoria, y orden de reproducción (gif→texto→gif→texto…) arrastrando elementos; 600 GIFs incluidos de fábrica. Cada cambio reinicia la Pi; actualizar sistema y Raspy2DMD desde el propio menú.

## Notas

- ASR normalizado solo aquí: «rasberry p02/p 02/berry p02» = Raspberry Pi Zero 2 W, «p01» = Pi Zero 1, «raspy dogs/raspy darts/raspy ars/raspar» = raspy-darts (proyecto francés), «echer vanela/balena decher» = balenaEtcher, «notepad gu Plus» = Notepad++, «b ssid/b mod de pas/sk» = SSID/psk, «chac» = jack, «inpack» = fuente pixel mencionada, «Jet laac» = opción de hora, «mundo cara/mundo acara» = Mundo Yakara.
- Cruces: continuación directa de [[resumen-FAV-379-pixel-display-pico-panel-rgb-matrix-mundo-yakara]] (mismo canal; Pico+soldadura punto a punto vs Zero 2 W+hat comercial; ahí sí hizo falta fuente externa y aquí no — medición con amperímetro); contraste con controladores dedicados MAX7219 ([[resumen-FAV-378-scroll-matriz-max7219-bluetooth-electronicspot]]) y LED direccionables WS2812B ([[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]], [[resumen-FAV-377-ws2812-strips-fastled-marios-ideas]]).

- **Consolidación (2026-11-15): fuente de la entidad [[mundo-yakara]].

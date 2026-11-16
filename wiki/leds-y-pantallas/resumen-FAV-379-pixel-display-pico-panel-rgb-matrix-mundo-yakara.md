# FAV-379 — PIXEL DISPLAY: Raspberry Pico en panel RGB matrix

- **Fuente**: [YouTube](https://www.youtube.com/watch?v=heakxsSaNao&t=1824s) · canal Mundo Yakara · 2023-10-27 · 43:14 · FAV-379
- **Transcripción**: `raw/leds-y-pantallas/2023-10-27-pixel-display-raspberry-pico-panel-rgb-matrix-mundo-yakara.md`
- **Dominio**: electronica-practica/

## De qué va

Proyecto del canal (saga de 10 proyectos con Raspberry Pi Pico): panel LED RGB HUB75 (32×64; existen 32×32 y 64×64) mostrando sprites y animaciones (GIF→BMP) reproducidos por una Raspberry Pi Pico con CircuitPython — adaptación libre del proyecto MatrixPortal de Adafruit, cuyo código estaba atado a su tarjeta Feather 2040 (usa un pin inexistente en la Pico estándar); el autor documentó el mapeo alternativo de pines y modificó la librería para Pico clásica.

- **Cableado HUB75**: regleta de 2×8 pines (16, tres de ellos GND); siempre soldar a la línea de entrada (Data In, según serigrafía/flechas; la de salida sirve para encadenar paneles). Mapeo documentado en el diagrama del autor (GitHub): R1→GP2, G1→GP3, R2→GP5, B2→GP9, A→GP10, C→GP18, CLK→GP1, OE→GP13, G2→GP8, B→GP16, D→GP20, LAT→GP12, más GND repartidos entre varios pines de la Pico para no saturar un punto. Sin resistencias ni componentes extra: solo cable IDE estañado con flux.
- **Alimentación**: 5 V pero ~1 A por panel — no confundir voltaje con corriente; con varios paneles, fuente proporcional (2 paneles → 2 A…). Un solo puerto USB puede no alcanzar; inyección de 5 V directo por el conector del panel (cargador o fuente adicional). Sin corriente suficiente el panel se distorsiona («película de terror»). Puente opcional entre la entrada VBUS y el cable de 5 V. Recomendación de difusor (hoja de papel): el brillo directo es muy alto.
- **Puesta en marcha**: flash-nuke (borrado) y firmware CircuitPython arrastrados a la raíz de la Pico en modo BOOTSEL; luego copiar el proyecto del autor a la raíz. La Pico (8 MB, quedan ~313 KB tras las imágenes de prueba) reproduce en bucle los archivos BMP de 64×32 de la carpeta `bmp` — agregar animación = copiar y pegar.
- **Creación de animaciones**: flujo online sin instalar nada — GIF (o sprite sheet de juegos retro, con fondo transparente) → editor Piskel/Pixel-App (redimensionar a 64 de ancho, plantilla a 32 de alto, máx. 30-40 fotogramas) → exportar PNG en UNA sola columna → convertir online a BMP. La animación es una única imagen alta cuyos fotogramas salta cada 32 px (sprite sheet vertical); imágenes de sprite sheets existentes se importan ajustando offset y tamaño de celda. Orientación vertical: girar los fotogramas antes de recortar a 32×32.
- Continúa en una segunda parte (ajuste de tiempos y velocidad por animación) y acepta pull requests en su GitHub.

## Notas

- ASR normalizado solo aquí: «rasberry/rasb pipico» = Raspberry Pi Pico, «2040 feeder/feeder 2040» = Feather 2040, «rp 20400» = RP2040, «Matrix portal» correcto, «spray/spray sheets» = sprite/sprite sheets, «mujen» = MUGEN, «piskel/pisket App/Pixel app» = Piskel, «nest sprites» = NES sprites, «lede» = LED, «quedaría hasta acá» etc.
- Cruces: línea Raspberry Pi Pico del dominio ([[resumen-FAV-348-pico-curso-micropython]] y siguientes de la saga Pico; panel en serpiente con WS2812B de [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]] y [[resumen-FAV-377-ws2812-strips-fastled-marios-ideas]] — contraste HUB75 con driver vs LED direccionables); inyección de 5 V por corriente insuficiente repite el patrón de alimentación de [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia]]; sprites de consolas retro conectan con el marcador de pádel del 7 segmentos gigante ([[resumen-FAV-376-7-segmentos-gigante-ws2812b-profe-garcia]]).

- **Consolidación (2026-11-15): fuente de la entidad [[mundo-yakara]].

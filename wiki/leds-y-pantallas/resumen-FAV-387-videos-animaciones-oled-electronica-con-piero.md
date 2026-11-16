# Videos y animaciones en OLED con Arduino

**Fuente**: [Videos y Animaciones en Oled con Arduino](https://www.youtube.com/watch?v=AXo3sLMQ89o)
**Canal**: Electrónica Con Piero · **Publicado**: 2021-04-22 · **Duración**: 07:18
**Raw**: `raw/leds-y-pantallas/2021-04-22-videos-animaciones-oled-arduino-electronica-con-piero.md` (FAV-387, 2026-11-15)

## Qué cubre

Cómo reproducir **videos cortos animados en una OLED 128×64** con Arduino, convirtiendo el video en arrays de bytes que se dibujan secuencialmente.

## Contenido técnico

- **Límite físico**: solo caben videos de ~8-10 fotogramas guardados en flash (el Uno tiene 32 KB); nada de videos largos sin almacenamiento externo.
- **Pipeline de conversión**:
  1. Editar el video a **blanco y negro** y redimensionarlo a 128×64 (usa Camtasia; sirve cualquier editor).
  2. Descomponerlo en **fotogramas** con VLC (formato JPG, extrayendo 1 de cada 6 para quedarse en ~10 fps; filtro de escena).
  3. Guardar cada fotograma en Paint como **mapa de bits monocromático** (paso manual más tedioso).
  4. Convertir todos los BMP a **matrices de bytes** con la web image2cpp: formato de salida "código Arduino", un array por fotograma, nombres numerados.
- **Reproducción**: bucle que dibuja el fotograma, lo borra a los ~17 ms y dibuja el siguiente (clear + display por frame con las librerías Adafruit). Sketch completo en la descripción.
- El autor reta a los viewers a lograr videos largos con una **tarjeta SD** (extensión no cubierta en el video).

## Cruces

- Clúster OLED (ahora 5 fuentes, consolidación deferida): [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino]] (mismo pipeline image2cpp + PROGMEM para imágenes estáticas), [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|Dibujos y plantillas OLED]] (image2cpp frame a frame estático vs aquí animado), [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] y [[resumen-FAV-350-pico-juego-oled|juego en OLED con Pico]]. La animación en displays conecta con [[resumen-FAV-380-raspy2dmd-panel-led-matrix-mundo-yakara|Raspy2DMD]] (GIFs en panel LED, con más memoria).

- **Consolidación (2026-11-15): fuente del concepto [[pantallas-oled]].

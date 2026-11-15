# Pantallas OLED con Arduino: librerías y ejemplos (deMMake)

**Fuente**: [Pantallas Oled con Arduino Librerias y Ejemplos](https://www.youtube.com/watch?v=XYBcr1KpN3Y)
**Canal**: deMMake · **Publicado**: 2019-05-30 · **Duración**: 12:23 · **Idioma**: es (subs automáticos)
**Raw**: `raw/electronica-practica/2019-05-30-pantallas-oled-arduino-librerias-ejemplos-demmake.md` (FAV-396, 2026-11-15)

## Qué cubre

Capítulo del curso Arduino desde cero de deMMake dedicado a las pantallas OLED: tecnología, variantes de mercado, cableado I2C y recorrido por las principales librerías (OLED I2C de Rinky-Dink Electronics, Adafruit SSD1306 + GFX, U8glib/U8x8) con ejemplos de dibujo, fuentes personalizadas y bitmaps.

## Contenido técnico

- **Tecnología OLED**: LED orgánico; cada píxel se ilumina por sí mismo, sin retroiluminación → mayor ángulo de visión, colores vivos, consumo bajo y mejor legibilidad a luz solar frente a LCD/LED clásicas; por eso vienen en tamaños pequeños.
- **Variantes de mercado**: controlador casi siempre **SSD1306** (integrado dentro del cristal); tamaños 0.96"–1.5", monocromáticas **128×64** o **128×32**, bicolor por zonas (16 filas amarillas + resto blancas), incluso versiones con 256 colores; comunicación **I2C** y/o **SPI**.
- **Cableado I2C** (placa usada: 128×64 0.96"): VCC→5V, GND→GND, SDA→A4, SCL→A5 (pines I2C fijos del Arduino Uno).
- **Librerías comparadas**:
  - **OLED I2C de Rinky-Dink Electronics** (la elegida del video): sencilla, bien documentada y **ocupa mucho menos memoria** que Adafruit GFX para el mismo resultado.
  - **Adafruit SSD1306 + Adafruit GFX**: requiere además definir pin de reset; constructor con referencia a `Wire` (`&Wire`); `begin` con dirección I2C (0x3C/0x3D — el ASR dice "0x13").
  - **U8glib**: más funciones pero sintaxis muy distinta; se reserva para otro video.
- **Flujo básico**: incluir librería → definir ancho/alto → instanciar objeto → declarar fuentes → `begin` → `clearDisplay`/`clrScr` → funciones de dibujo → **siempre `update()`/`display()` para refrescar**. Origen de coordenadas: esquina superior izquierda. Si la dirección I2C no responde, usar el **I2C scanner** (visto en un capítulo anterior del curso).
- **Ejemplos dibujados**: líneas con `drawLine` (marco + coordenadas), batería con nivel de carga (`drawRect`/`drawRoundRect` + ciclo for para animación).
- **Fuentes personalizadas**: la librería trae pocas y pequeñas; en la web de Rinky-Dink se bajan fuentes (con imagen de mapa de caracteres), se convierten con su conversor para pantallas monocromáticas y se pegan en un archivo `.h` como pestaña del sketch (`#include "fuente.h"` con comillas). Solo `setFont` carga la fuente elegida en memoria (incluir todas no ocupa RAM); incluye una fuente de símbolos/iconos.
- **Bitmaps**: imagen en Paint → 128×64 px → PNG → convertidor del sitio → array `.c` → `drawBitmap(x, y, ancho, alto)` + `update`; `invert()` invierte colores para hacerla parpadear.
- Mención final: **Arduboy**, consola de videojuegos con Arduino + OLED.

## Cruces

- Clúster OLED (ahora 7 fuentes): [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 Arduino]] (FAV-382), [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD]] (FAV-383), [[resumen-FAV-384-dibujos-plantillas-pantalla-oled|dibujos/plantillas OLED]] (FAV-384), [[resumen-FAV-387-videos-animaciones-oled-electronica-con-piero|animaciones OLED]] (FAV-387), [[resumen-FAV-391-oled-i2c-vs-spi-marios-ideas|I2C vs SPI]] (FAV-391).
- Bus I2C y dirección del display (I2C scanner) conecta con [[resumen-FAV-386-protocolo-i2c-maestro-esclavos-profe-garcia|Protocolo I2C]] (FAV-386).

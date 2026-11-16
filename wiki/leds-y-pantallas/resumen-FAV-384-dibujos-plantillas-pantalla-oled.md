# Dibujos y plantillas en pantalla OLED

**Fuente**: [Dibujos en Pantalla OLED, No creerás lo fácil que es crear plantillas](https://www.youtube.com/watch?v=QJcN89AFxV0)
**Canal**: El profe García · **Publicado**: 2020-11-25 · **Duración**: 14:46
**Raw**: `raw/electronica-practica/2026-11-15-dibujos-plantillas-pantalla-oled.md` (FAV-384, 2026-11-15)

## Qué cubre

Segunda parte del tutorial OLED del canal: cómo **dibujar diseños propios** (plantillas de batería, iconos de redes sociales, "teléfono celular") y **copiar imágenes de internet** a la pantalla OLED 128×64 con Arduino.

## Contenido técnico

- **Método 1 — dibujar a mano con Excel**: archivo con macro (de María Paula del canal Aprende y Verifica, la misma colaboradora del vídeo de la matriz 16×16 WS2812B) donde cada clic del mouse pinta un píxel en una cuadrícula de 128×64; los antivirus pueden rechazar la macro (es solo el clic). La macro genera el array binario: lee los píxeles **8 a 8 en vertical** (un byte por columna de 8) y los convierte a hexadecimal — exactamente el mismo formato que produce image2cpp.
- **Método 2 — imagen de internet**: flujo probado sin errores (a diferencia de otros tutoriales):
  1. Capturar la imagen y **quitar el fondo con PowerPoint** (formato → quitar fondo; marcar en rosado todo lo no deseado) — sin esto, la app de conversión da errores.
  2. Redimensionar exactamente a **128×64** (Paint u otro editor) y exportar con nombre propio.
  3. Convertir con la app web (image2cpp) → archivo `.c` → abrir con editor de texto y copiar **solo los valores hexadecimales** al array del sketch (todo el `.c` también vale, pero innecesario).
  4. Pegar en el programa base (librería OLED del vídeo anterior), verificar, compilar y subir.
- **Plantillas (templates)**: dibujar primero solo los bordes/formato (marco de teléfono, batería, iconos de WhatsApp/Instagram/YouTube/etc.) y rellenar dinámicamente desde el sketch por zonas — técnica base para indicadores de señal, batería y menús.
- Nota de hardware: usa un Arduino Pro Mini configurado como Uno; si no compila, falta instalar las librerías del vídeo anterior.

## Cruces

- Parte anterior del mismo tutorial: [[resumen-FAV-383-oled-vs-lcd-profe-garcia|OLED vs LCD, profe García]] (FAV-383).
- El mismo flujo bitmap + PROGMEM en detalle: [[resumen-FAV-382-oled-ssd1306-arduino-labuhardilla|OLED SSD1306 con Arduino]] (FAV-382, logo del canal con image2cpp).
- La colaboradora María Paula también hizo el Excel del mapeo de la [[resumen-FAV-375-tira-led-pantalla-16x16-ws2812b-profe-garcia|pantalla 16×16 WS2812B]] (FAV-375): mismo enfoque píxel-a-matriz.

- **Consolidación (2026-11-15): fuente de [[pantallas-oled]] y de la entidad [[el-profe-garcia]].

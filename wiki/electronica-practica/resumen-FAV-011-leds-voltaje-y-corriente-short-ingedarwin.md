# LEDs voltaje y corriente 🤓✌️ #ingedarwin #electrónica (short)

- **Fuente**: [Short en YouTube](https://www.youtube.com/shorts/SEXx1eYsvAQ)
- **Canal**: IngE Darwin
- **Publicado**: 2024-05-26
- **Duración**: 00:57
- **Fuente original**: `raw/electronica-practica/2024-05-26-leds-voltaje-y-corriente-short.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Short (~1 min) de referencia rápida: **tensiones directas e intensidades de trabajo de un LED según su color**:

| Color | Vf (rango) | Corriente |
|---|---|---|
| Rojo | 1,63–2,03 V | 15 mA |
| Azul | 2,48–3,70 V | 20 mA |
| Verde | 1,90–4,00 V | 15 mA |
| Amarillo | 2,10–2,18 V | 15 mA |
| Naranja | 2,03–2,10 V | 15 mA |
| Blanco | 3,50 V– | 20 mA |

Dato de diseño: el rojo/amarillo/naranja (LEDs "clásicos") caen ~2 V, mientras azul/blanco (basados en InGaN) necesitan ~3,5 V — coherente con los LEDs de 3/6/9/12 V de las bombillas de FAV-008/009. Valores de un solo video sin fuente citada: útiles como orden de magnitud, verificar contra datasheet para diseño fino.

## ASR a corregir

«mamp / m» = mA; «pas» = relleno ASR final («amor y pas» ≈ cierre del saludo). Rango del blanco «3,50 V a» truncado en el ASR (falta el límite superior y la corriente dice 20 mA).

## CRUCES

- Con [[resumen-FAV-008-foco-led-fuente-conmutada-jwb1981-electrotube]] y [[resumen-FAV-009-foco-led-fuente-conmutada-bp2861-electrotube]]: explica por qué las bombillas LED se fabrican con cadenas de LEDs de 3/6/9/12 V y por qué la R de current sense varía según cantidad y color de los LED.
- Con [[resumen-FAV-010-leds-220v-sin-transformador-electgpl]]: los 2,5 V/20 mA del cálculo de Electgpl corresponden a un LED "clásico" de esta tabla.
- **[[como-se-hace-lo-cotidiano]]**: la tabla de color→tensión es la chuleta de todo protoboard con LED.

## ADVERTENCIA

Subtítulos automáticos: unidades mA mal transcritas y rango del blanco truncado. Sin fuente técnica citada — tratar como referencia didáctica, no como especificación.

## Dominio

`electronica-practica/` (componentes: LED, tensiones directas por color, corriente de trabajo).

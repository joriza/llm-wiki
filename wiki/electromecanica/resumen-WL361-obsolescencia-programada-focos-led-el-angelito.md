# WL-361 — Truco para eliminar la obsolescencia programada en focos LED

- **Fuente original**: `raw/electromecanica/2026-09-18-truco-para-eliminar-la-obsolescencia-programada-en-focos.md` ([vídeo](https://www.youtube.com/watch?v=RSR-JaOYROo))
- **Canal**: EL ANGELITO
- **Publicado**: 2026-09-18 · **Duración**: ~11:00 · **Ingesta**: 2026-11-16 (tramo 56)
- **Tipo**: demo técnica de reparación (1.ª mano: mediciones propias con vatímetro, termómetro, amperímetro y luxómetro de teléfono)
- **Dominios destino propuestos (consolidación aplazada)**: electromecanica o general (hogar/reparación)

## Idea central

Modificación sencilla que alarga la vida de los focos LED: sustituir la resistencia de sensado del driver de tensión por una de mayor valor (~22 Ω → ~28 Ω) reduce la tensión alimentada a los LED — ~20% menos consumo y ~14 °C menos de temperatura con una pérdida de luminosidad imperceptible (~18/330 lúmenes).

## Puntos clave

- **Diagnóstico** [00:00]: los LED se queman por temperatura interna; el fabricante no tiene incentivo para alargar la vida (marco de obsolescencia programada, afirmado sin prueba — opinión, señalada); un dimmer común no sirve porque la mayoría de los focos no vienen dimerizables.
- **Metodología experimental** [01:45]: tres focos idénticos de 9 W, misma altura y disposición; 10 min de calentamiento; mediciones comparadas: consumo 8,1-8,4 W vs. 6,9 W (≈−20%); temperatura 95,7-96,3 °C vs. 81,8 °C (−14 °C); luminosidad 330-340 vs. 312 lúmenes (medida con app de teléfono — instrumento de precisión limitada, señalado).
- **La modificación** [07:56]: el driver es un regulador de tensión cuya salida depende de una resistencia de sensado (una sola RS1 o dos RS1/RS2 en paralelo, ≈22 Ω total según modelo); se reemplaza por una equivalente de ~27,4-28 Ω (tres de 81 Ω en paralelo); «es soldar nomás»; el foco modificado con el cambio hecho para la demo.
- **Interpretación**: al bajar la corriente por los LED cae la disipación (la causa de la muerte prematura); el trade-off de luz es imperceptible a simple vista.

## Evaluación

- Demo con mediciones directas y procedimiento reproducible — la evidencia central (consumo, temperatura, lúmenes) es de 1.ª mano y se muestra en pantalla; limitaciones señaladas: instrumentos caseros (app de luxómetro), muestra de un solo par de focos por modelo, marco de obsolescencia afirmado como opinión sin prueba documental. El 20% de ahorro se calcula sobre mediciones de un caso puntual.
- Patrocinio propio excluido: bloque promocional del curso de reparación de lavadoras (elangelitoacademia.net, [04:06-04:47]); cierre like/suscripción excluido.
- ASR garbiñeado normalizado solo donde seguro: «culote»→(juego de palabras del autor, mantenido como lo pronuncia), «resis-»→resistencia, «RS1/RS2», «luxómetro/lúmenes», «Ω»→ohm.

## Cruces

- Cluster electromecanica junto a WL-304 y los bloques hogar/oficios (WL-207); el tema obsolescencia conecta con el consumidor WL-235 y con [[historia-de-la-tecnologia]] (diseño para fallar); la lógica «bajar tensión = alargar vida» es la contraparte física del argumento térmico de WL-346 (hardware). Canal EL ANGELITO 1.ª fuente en WL.


## Ver también

- [[historia-de-la-tecnologia]]

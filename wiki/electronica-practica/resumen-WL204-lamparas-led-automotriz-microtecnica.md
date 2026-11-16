# WL-204 · La solución de $0,50 para que duren 4 veces más (lámparas LED automotrices)

- **Fuente original**: `raw/electronica-practica/2026-09-29-la-solucion-de-0-50-para-que-duren-4-veces-mas.md`
- **Video**: [La solución de $0,50 para que duren 4 veces más](https://www.youtube.com/watch?v=Hibdwr8SOLI)
- **Canal**: MICROTECNICA
- **Publicado**: 2026-09-29 · **Duración**: 21:38 · **Ingesta**: 2026-11-15 (tramo 28, formato dominio pendiente de consolidación)
- **Marco**: video técnico experimental con mediciones instrumentales; un bloque de patrocinio (JLCPCB) excluido de la síntesis.

## Qué trata

Análisis de laboratorio de lámparas LED automotrices económicas (par de ~10 USD): el canal mide potencia real, consumo, lúmenes y temperatura dentro de la óptica, comprueba que las especificaciones del fabricante no se cumplen, y propone una reforma barata (dos diodos 1N5408 en serie) para alargar su vida útil a costa de algo de brillo.

## Puntos clave

- **Marketing engañoso "DOB"**: la caja anuncia LED "DOB", pero en realidad son LED COB estándar — juego de palabras para parecer tecnología nueva.
- **Potencia real vs anunciada**: la lámpara declara 36 W por par (el canal interpreta 18 W cada una); la medición con amperímetro en serie a ~13,3-13,4 V (tensión real de alternador) da ~12,5 W por lámpara, ~25 W el par — un tercio menos de lo anunciado.
- **Sobrecalentamiento**: el chip LED alcanza 145-150 °C dentro de la óptica (110 °C fuera, +7-9 °C dentro), muy por encima del régimen sano de trabajo — previsible muerte prematura en meses, compatible con los comentarios del canal sobre lámparas quemadas.
- **Lúmenes inflados**: los ~11.000 lm anunciados son físicamente implausibles; el luxómetro mide ~2.900 lm reales por lámpara.
- **La reforma de $0,50**: dos diodos 1N5408 (3 A, caída ~0,7 V cada uno) soldados en serie en el positivo bajan ~1,3-1,4 V la alimentación → corriente y temperatura bajan (de ~145-150 °C a ~114-120 °C) a cambio de perder brillo (~2.900 → ~2.600 lm). El canal la describe como paliativo, no como solución óptima.
- **Variantes de lámpara**: las que traen placa driver interna regulan picos del alternador pero elevan la temperatura (capacitor electrolítico dentro del bloque de aluminio a ~100 °C); las sin placa se benefician más de los diodos en serie.
- **Obsolescencia programada**: el canal encuadra el hallazgo (operar el LED por encima de sus especificaciones) como sospecha de vida útil acortada de fábrica.

## Observaciones de triage

- Fuente técnica de primera mano con metodología explícita (multímetro, amperímetro en serie, cámara térmica, luxómetro) y resultados reproducibles — calidad alta dentro del dominio electrónica/hobby.
- Patrocinio JLCPCB presente pero separable del contenido técnico.
- Cruces previstos en consolidación: electrónica retro/hobby (WL-175 amplificador, WL-114), tema obsolescencia programada (WL-117 historia de software, posible concepto); entidad de canal candidata (MICROTECNICA).
- Dominio previsto: general (electrónica/automotriz DIY — consolidación diferida, S4: no se crean dominios nuevos).

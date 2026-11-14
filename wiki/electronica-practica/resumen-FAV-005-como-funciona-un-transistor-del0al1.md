# Cómo funciona un transistor y cómo usarlo correctamente

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=qLxECOjrJVg)
- **Canal**: Del 0 al 1
- **Publicado**: 2025-12-15
- **Duración**: 14:20
- **Fuente original**: `raw/electronica-practica/2025-12-15-como-funciona-un-transistor-y-como-usarlo-correctamente.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Tutorial de introducción al **transistor** (BJT), de la física interna al primer montaje:

- **Qué es**: dispositivo de **estado sólido** (sin partes móviles) usado como **interruptor o amplificador**; tres terminales (positivo / negativo / control, cuyos nombres dependen del tipo). Conmuta a velocidades enormes (los más avanzados, ~1 THz) — sin él no existiría la electrónica moderna.
- **Semiconductores y dopaje**: silicio (4 electrones de valencia, red cristalina covalente) dopado con **fósforo** (5 valencias → electrón libre → material **tipo N**) o con **boro** (3 valencias → hueco → material **tipo P**).
- **Unión PN**: la recombinación de portadores genera un campo eléctrico → **zona de agotamiento** (casi aislante). Con polarización directa se vence con **0,6–0,7 V** (silicio); en inversa la zona crece y no circula corriente.
- **BJT NPN por dentro**: emisor dopado densamente (N+), base muy delgada y débilmente dopada (P), colector N moderado y alargado. Con ~0,7 V en la base-emisor, los electrones del emisor cruzan hacia la base pero, al ser esta tan delgada, la mayoría es **capturada por el campo del colector** → la corriente emisor→colector se controla con la pequeña corriente de base (**ganancia** = amplificación; dos estados = interruptor). Los **FET** quedan para otro video.
- **Montaje práctico**: LED controlado por un **2N2222A** en protoboard — botón → resistencia de 2 KΩ → base; LED + 100 Ω al colector; **resistencia pull-down de 10 KΩ** en la base para asegurar 0 V cuando el botón no está presionado. Identificación de terminales con la cara plana hacia uno: colector–base–emisor.

## ASR a corregir

«P2N22A» = 2N2222A; «1 terzo» = 1 terahercio; «un trillón de veces» (aprox. del presentador); «topamos/dopar» = dopamos; «Feds» = FET (Field Effect Transistor); «1 kmio» = 1 kΩ; «10 kierra» = 10 KΩ; «aguotamiento» = agotamiento; «tío» = video (cierre ASR).

## CRUCES

- **Base conceptual del dominio**: sustenta FAV-003 (detector de luz con 2N2222A como interruptor) y anticipa FAV-005 (NPN vs PNP, anuncio explícito al final del video) y FAV-006 (condensador).
- **[[como-se-hace-lo-cotidiano]]**: «toda la tecnología moderna (computadoras, celulares, autos, satélites) existe gracias al transistor» — el componente invisible detrás de lo cotidiano; su versión a escala de miles de millones es la base de los procesadores (puente futuro con informatica-teoria/).
- Tema-candidato: **transistor-bjt** (umbral 1/2; con FAV-005 alcanza 2).

## ADVERTENCIA

Subtítulos automáticos con unidades mal transcritas (ver ASR); el montaje omite el cálculo de las resistencias de base y colector (prometido para otros videos); «1 THz» es una cifra de transistor de investigación, no del 2N2222A (que conmuta en el rango de ~100-300 MHz) — no atribuir al componente del montaje.

## Dominio

`electronica-practica/` (componentes: transistor BJT, semiconductores, dopaje, montajes).

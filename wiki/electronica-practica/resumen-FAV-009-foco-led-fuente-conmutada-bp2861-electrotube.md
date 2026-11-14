# Como Funciona una Bombilla o foco LED y su Fuente Conmutada | #tl431 smps

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=z85eNiv1EqE)
- **Canal**: Electrotube tv
- **Publicado**: 2024-11-02
- **Duración**: 08:06
- **Fuente original**: `raw/electronica-practica/2024-11-02-como-funciona-una-bombilla-o-foco-led-y-su-fuente-conmutada-tl431-smps.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Anatomía de la fuente conmutada de una bombilla LED alrededor del integrado **BP2861** (primer video de la serie; el segundo, FAV-008, usa el JWB1981 con puente interno):

- **Motivación**: reparar bombillas LED que no encienden (filtro en mal estado, pistas dañadas, LED quemado) requiere entender el circuito.
- **Layout típico**: rosca → **R limitadora de 45 Ω** (también fusible contra picos) → **puente rectificador** discreto (aquí NO está interno, a diferencia del JWB1981) → **capacitor de filtro de ~400 V** que convierte el rectificado en un continuo estable → integrado BP2861 → bobina → LEDs.
- **Pines del BP2861**: pin 4 toma energía directamente de la línea de alto voltaje (arranque); pin 1 = GND; **pin 7 = current sense**, conectado a una **resistencia de bajo valor (1,8 Ω)** a tierra para medir la corriente de los LED y ajustar el pulso de conmutación del MOSFET; pines 5 y 6 = **drain del MOSFET interno**, a la bobina hacia los LED; el otro extremo de los LED vuelve al pin 4.
- **Red RC (75 kΩ + condensador) en paralelo** con la salida hacia los LED.
- **Operación**: con voltaje en pin 4 y corriente medida en pin 7, el MOSFET interno **conmuta a alta velocidad** (enciende/apaga) regulando el flujo por la bobina → corriente constante que protege de sobrecargas. Los LED **parpadean a alta frecuencia** invisible para el ojo humano — nunca están encendidos fijos.
- Rol de los componentes de salida: el condensador en paralelo con los LED suaviza oscilaciones residuales; la resistencia limita la corriente inicial de encendido.
- Cierre: esquema básico casi siempre igual — base para reparar bombillas LED.

## ASR a corregir

«bpe 2861 / bp 2 861» = BP2861; «electr tub TV» = Electrotube tv; «kohi» = kΩ; «Pines drine número cco y se» = pines drain 5 y 6; «switchear/switcheo» = conmutar/conmutación; «con mutara» = conmutará; «ilinol/ilumin» = ilumina/iluminarán; «240 V» (texto) vs 220 — el video dice la red según el país; «foreign» = relleno ASR.

## CRUCES

- Tema **fuente-conmutada-led** (2/3): segunda voz del clúster con FAV-008 (JWB1981: mismo esquema pero con puente rectificador interno y current sense de 20 Ω vs 1,8 Ω aquí; diferencias de pines entre integrados) y FAV-010 (LEDs a 220 V sin transformador) — umbral casi alcanzado.
- Tema **condensador-rc** (3/3 vía FAV-007): filtro de 400 V + condensador de salida suavizando oscilaciones = misma física de carga/descarga RC.
- **[[como-se-hace-lo-cotidiano]]**: por qué fallan y cómo se reparan las bombillas LED del hogar; el parpadeo invisible como fenómeno cotidiano oculto.

## ADVERTENCIA

Subtítulos automáticos con errores sistemáticos (ver ASR); numeración de pines según el video, sin datasheet a la vista — verificar contra el BP2861 real antes de replicar. Circuito conectado a red 120/240 V: riesgo eléctrico real. El título menciona #tl431 pero la explicación no menciona el TL431 en ningún momento (referencia del hashtag del canal, no del contenido).

## Dominio

`electronica-practica/` (alimentación: fuentes conmutadas, drivers de LED, SMPS con integrado dedicado).

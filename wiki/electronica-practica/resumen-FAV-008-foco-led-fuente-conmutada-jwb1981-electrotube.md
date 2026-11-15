# Como Funciona una Bombilla o foco led Fuente Conmutada con JWB1981 smps #tl431

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=2IFIRgJz64Q)
- **Canal**: Electrotube tv
- **Publicado**: 2024-11-09
- **Duración**: 09:58
- **Fuente original**: `raw/electronica-practica/2024-11-09-como-funciona-una-bombilla-o-foco-led-fuente-conmutada-con-jwb1981-smps-tl431.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Anatomía de la fuente conmutada de una bombilla LED típica alrededor del integrado **JWB1981** (SMPS driver, segundo video de una serie):

- **Integración**: a diferencia de otros circuitos de bombillas LED, no hay puente de diodos a la vista — el **puente rectificador está interno** en el integrado (pines 1, 7, 2 y 6), junto con un **operacional** y un **MOSFET** de conmutación.
- **Recorrido de la energía**: red (120/220 V AC según el país) → rosca → **resistencia limitadora de 30 Ω** (funciona también de fusible contra picos) → puente interno (AC entra por pines 1 y 7, DC sale por pin 6; pin 2 = negativo/tierra) → **capacitor de filtro de 400 V** (también hay de 200/250 V según fabricante y red) que suaviza y estabiliza.
- **Current sense (pin 4)**: resistencia detectora de corriente (aquí 20 Ω) — clave para mantener la corriente de los LEDs estable. **Su valor depende del número y voltaje de los LEDs** (bombillas de LEDs de 3, 6, 9 o 12 V, vendidas por watts). Truco de reparación/mejora: **subir esa resistencia baja la corriente** → los LED trabajan más relajados y duran más.
- **Etapa de salida**: pin 5 = **drain del MOSFET** interno → **bobina** → LEDs; el positivo del filtro va también a los LEDs. Una **resistencia de descarga de 1 MΩ** en paralelo con el filtro evita que la bombilla quede brillando o apagándose paulatinamente al cortar la luz (descarga el capacitor).
- **Operación**: cuando el integrado detecta voltaje listo (pin 6) y corriente suficiente (pin 4), activa el MOSFET, que **conmuta a alta frecuencia** (enciende/apaga); esa conmutación regula el flujo por la bobina y mantiene la corriente constante. Los LED en realidad **parpadean a alta frecuencia** — el ojo humano no lo percibe: no están encendidos fijos.
- Cierre: con este esquema básico (casi siempre igual) se entiende cómo **reparar** bombillas LED y cómo bajar la corriente de los LED ajustando la resistencia de current sense.

## ASR a corregir

«electr TV» = Electrotube tv; «J W b181 / W b181 / doj W b181» = JWB1981; «con mutada» = conmutada; «illas led» = bombillas led; «pin número si» = pin 7; «un megio» = 1 MΩ (megohmio); «switar/switcheo» = conmutar/conmutación; «iré ADO» = va conectado; «paíz» = país; «abran» = habrá.

## CRUCES

- **[[fuente-conmutada-led]]** (1/3): página de concepto creada en la consolidación (2026-11-14) junto a FAV-009 y FAV-010.
- **[[condensador-rc]]** (vía FAV-007): el capacitor de filtro de 400 V y la resistencia de 1 MΩ de descarga son exactamente el condensador y su descarga de FAV-007 aplicados a una fuente real.
- **[[como-se-hace-lo-cotidiano]]**: la bombilla LED del hogar explicada por dentro, con el truco práctico de alargar la vida de los LED bajando su corriente.

## ADVERTENCIA

Subtítulos automáticos con errores sistemáticos en las referencias de pines y unidades (ver ASR). La numeración de pines (1-7) es la que dicta el video sin datasheet a la vista — verificar contra el integrado real antes de replicar. Circuito a 120/220 V de red: riesgo eléctrico real.

## Dominio

`electronica-practica/` (alimentación: fuentes conmutadas, drivers de LED, SMPS con integrado dedicado).

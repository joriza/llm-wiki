# Fuente conmutada para LEDs (alimentación de LED desde la red)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — tema registrado con umbral en los cierres de las ventanas `Gral/Electronica Basica/`).
- **Fuentes**: [[resumen-FAV-008-foco-led-fuente-conmutada-jwb1981-electrotube]] (Electrotube tv, JWB1981 con puente interno), [[resumen-FAV-009-foco-led-fuente-conmutada-bp2861-electrotube]] (Electrotube tv, BP2861 con puente discreto) y [[resumen-FAV-010-leds-220v-sin-transformador-electgpl]] (Electgpl, fuente capacitiva sin transformador).
- **Ver también**: [[diodo-zener]] (el zener como mejora de estabilización en FAV-010) · [[como-se-hace-lo-cotidiano]] · cruces [[resumen-FAV-315-analizando-fuentes-tcon-parte-1]] y [[resumen-FAV-316-fuente-conmutada-oscilando]] (topologías y diagnóstico de fuentes conmutadas en TV).

## El concepto

Cómo se alimentan LEDs directamente desde la red de 120/220 V sin transformador de frecuencia de línea, en tres niveles de sofisticación creciente que el clúster documenta:

| Fuente | Topología | Idea clave |
| --- | --- | --- |
| FAV-010 | Fuente capacitiva (artesanal) | Un capacitor limita la corriente por **reactancia** (Xc = 1/ωC) sin disipar potencia — la corriente está adelantada 90°, así que P = V·I ≈ 0 en el capacitor; cálculo completo para 4 LEDs (221 nF/400 V) y filtro 1 µF/A a 50 Hz |
| FAV-009 | SMPS con integrado dedicado (BP2861) | La red se rectifica (puente discreto), filtra a ~400 V y un MOSFET interno **conmuta a alta frecuencia** por una bobina; la corriente de los LED se fija con la resistencia de **current sense** (1,8 Ω, pin 7) |
| FAV-008 | SMPS más integrado (JWB1981) | Igual esquema con el **puente rectificador también interno** (pines 1/7/2/6), current sense de 20 Ω (pin 4); truco de reparación: subir la R de current sense baja la corriente y alarga la vida de los LED |

Denominador común: **los LED nunca están encendidos fijos — parpadean a alta frecuencia que el ojo no percibe**; el layout básico (limitación → rectificación → filtro → regulación de corriente constante) es casi siempre el mismo, y esa anatomía es la base para reparar bombillas LED.

## Notas de verificación y confianza

- La numeración de pines de JWB1981 y BP2861 es la que dictan los videos **sin datasheet a la vista** — verificar contra el integrado real antes de replicar; los títulos mencionan #tl431 pero el TL431 no aparece en la explicación (hashtag del canal).
- El circuito de FAV-010 queda **directo a red, sin aislación galvánica** (todo a potencial de red; el filtro tarda en descargarse) — no construir sin experiencia.
- FAV-011 ([[resumen-FAV-011-leds-voltaje-y-corriente-short-ingedarwin]]) aporta la tabla color→Vf/corriente que explica por qué las bombillas se arman en cadenas de 3/6/9/12 V y por qué la R de current sense varía — valores de un solo short sin fuente citada: orden de magnitud, no especificación.

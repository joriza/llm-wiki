# Como Conectar LEDs a 220V sin transformador

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=MPydeX-V2n4)
- **Canal**: Electgpl
- **Publicado**: 2015-05-09
- **Duración**: 12:43
- **Fuente original**: `raw/electronica-practica/2015-05-09-como-conectar-leds-a-220v-sin-transformador.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Diseño completo **con cálculos** de una fuente capacitiva (sin transformador) para alimentar LEDs desde 220 V — el clásico circuito de luminarias LED económicas:

- **Circuito**: capacitor limitador de entrada → **puente rectificador** → capacitor de filtrado → LEDs (demo con 4). Sin resistencia limitadora: en lugar de la resistencia limitadora clásica se usa un **capacitor**, cuya reactancia limita la corriente sin disipar potencia (en el capacitor la corriente está adelantada 90° respecto de la tensión: en el pico de tensión la corriente es cero, por lo que P=V·I ≈ 0 salvo las pérdidas reales — por eso se prefiere a una resistencia, que calentaría).
- **Base eléctrica**: red senoidal de ~210 V medidos (220 nominal); valor **RMS/eficaz = 0,707 del pico** (raíz de 2 sobre 2); pico ≈ 210·√2 ≈ **298 V**.
- **Cálculos paso a paso**: 4 LEDs de 2,5 V / 20 mA → 10 V totales; R equivalente por ley de Ohm: (298−10)/20 mA = **14,4 kΩ**; reactancia capacitiva Xc = 1/(ω·C) con ω = 2π·50 Hz ≈ 314 → C = 1/(314·14400) ≈ **221 nF**, capacitor de poliéster de **400 V** (se puede 200 V, pero la diferencia de precio es mínima).
- **Capacitor de filtrado**: ~100 µF / 16 V sobra para <100 mA (regla práctica: 1 µF por amperio a 50 Hz); la tensión de trabajo es la de los LED (10 V). Si la tira tuviera 100 LEDs (~250 V), habría que subir la tensión del filtro.
- **Medición real**: 9,35 V sobre los LED en vez de los 10 calculados — la **caída de tensión de los diodos del puente** se descuenta; el circuito además es **sensible a subidas/bajadas de la red**.
- **Mejoras propuestas**: resistencia en serie con el capacitor de entrada para su carga/descarga (menos estrés), y una etapa posterior con **diodo zener** para estabilizar (p. ej. dejar 20 V y regulados a 10 V) tolerando las variaciones de línea.
- Truco de implementación: sin capacitor de 221 nF, cuatro de 1 µF **en serie** ≈ 250 nF.

## ASR a corregir

«mamp» = mA; «200 21 nanofaradios» = 221 nF; «4 200 vol» = 400 V; «microfarad/ios» = µF; «diyener/cener» = diodo zener; «clavados» = relleno ASR sobre 314; «0,707 al 63,9 %» — confusión hablada: 0,707 corresponde al valor eficaz respecto del pico; «1 sobre Omega xc» = 1/(ω·Xc) (despeje mal enunciado verbalmente).

## CRUCES

- **[[fuente-conmutada-led]]** (3/3 → página de concepto creada en la consolidación, 2026-11-14): tercera voz del clúster de alimentación de LED desde la red — con FAV-008/009 (fuente conmutada con integrado dedicado como evolución industrial de este esquema artesanal).
- **[[condensador-rc]]** (página creada con FAV-007 como fuente principal): reactancia capacitiva, filtro y carga/descarga del capacitor — la teoría RC aplicada al cálculo real.
- Con [[resumen-FAV-002-analisis-de-mallas-con-kirchhoff-y-ohm]]: la ley de Ohm en uso (cálculo de la resistencia/capacitancia limitadora).
- **[[como-se-hace-lo-cotidiano]]**: cómo se alimentan realmente las luminarias LED baratas sin transformador.

## ADVERTENCIA

Subtítulos automáticos con números mal transcritos — verificar los cálculos contra la fórmula (Xc = 1/(2πfC)), no contra la transcripción. Circuito ** directo a 220 V, sin aislación galvánica**: todo queda a potencial de red; el propio autor recomienda protección (llave térmica) y advierte que el capacitor de filtro tarda en descargarse tras apagar. No construir sin experiencia.

## Dominio

`electronica-practica/` (alimentación: fuente capacitiva sin transformador, rectificación, limitación por reactancia).

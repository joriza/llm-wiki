# Fuente sin transformador (capacitiva / conmutada)

**Concepto** consolidado con **2 fuentes nucleares** contadas (FAV-504, 506) + puente con la familia conmutada de LED de electronica-practica (FAV-010 [[resumen-FAV-010-leds-220v-sin-transformador-electgpl]] y las fuentes de TV FAV-315/316 de [[fuente-conmutada-led]]).

## El principio común

Eliminar el transformador de red usando la **reactancia** de un componente para bajar la tensión: un capacitor (fuente capacitiva) o la conmutación de alta frecuencia (fuente conmutada). El capacitor «vale» Xc = 1/(2πfC) y limita la corriente **sin disipar calor** — el motivo de la elección frente a una resistencia (que disiparía 12+ W).

## Las dos fuentes nucleares

- **Electgpl, 220 V, cálculo completo** [[resumen-FAV-504-fuente-capacitiva-sin-transformador]]: X2 390 nF → 8,1 kΩ → 27 mA; amortiguación del inrush, descarga de 1 MΩ, zener sin resistencia serie, verificación en LTspice.
- **Aprenda Electrónica, 120 V, versión mínima** [[resumen-FAV-506-fuente-capacitiva-aprenda-electronica]]: 5 componentes (2,2 µF → ~1,2 kΩ @ 60 Hz, puente, zener 12 V, descarga 560 kΩ); limitada a ~100 mA.

## Coincidencias (red distinta, misma física)

Ambas: sin aislación galvánica — **todo el circuito vive «en caliente»** (advertencia fuerte en las dos); si el zener falla, el condensador queda expuesto a sobretensión; la resistencia de descarga es imprescindible; corriente limitada a decenas/cientos de mA (usos: LED, microcontroladores, cargadores chicos).

## Puente con la familia conmutada

Las fuentes conmutadas de LED y TV ([[fuente-conmutada-led]], FAV-008/009/010/315/316 en electronica-practica) resuelven el mismo problema «sin transformador de 50/60 Hz» pero con conmutación de alta frecuencia y aislación por transformador toroidal pequeño — más eficientes y más seguras, a costa de complejidad. Electgpl aparece en las dos familias (FAV-010 y FAV-504).

## Cruces

- [[resumen-FAV-505-cargador-baterias-fuente-pc]] como el otro extremo (alta corriente, misma ausencia de aislación segura); bases: [[condensador-rc]], [[diodo-zener]], [[resumen-FAV-499-diodos-explicados]], [[resumen-FAV-498-factor-de-potencia]].

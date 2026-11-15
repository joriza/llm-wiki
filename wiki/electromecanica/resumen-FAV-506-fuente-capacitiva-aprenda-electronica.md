# Resumen: Fuente capacitiva 120 V → 12 V (Aprenda Electrónica)

- **Fuente**: `raw/electromecanica/2026-11-15-fuente-capacitiva-aprenda-electronica.md` ([YouTube](https://www.youtube.com/watch?v=yBCiz6xEB-4), FAV-506, carpeta Electromecanica/Proyectos)
- **Canal**: Aprenda Electronica
- **Publicado**: 2025-02-26 · **Duración**: 17:39 · **Recopilado**: 2026-11-15

## Qué cubre

Construcción y explicación paso a paso de una **fuente capacitiva** (sin transformador) de 120 V AC → 12 V DC con 5 componentes. Segunda fuente del umbral «fuente sin transformador» junto a [[resumen-FAV-504-fuente-capacitiva-sin-transformador]] (Electgpl, 220 V): mismo principio, red distinta (60 Hz vs 50 Hz).

## Ideas clave

- **BOM mínimo**: capacitor AC **2,2 µF / 250 V** (código «225»), puente rectificador, electrolítico **470 µF / 35 V**, resistencia de **descarga 560 kΩ** en paralelo con el capacitor, **zener de 12 V** (ánodo a negativo, cátodo a positivo).
- **Elemento estrella**: el capacitor AC «vale» una **reactancia capacitiva Xc = 1/(2πfC)** — con 2,2 µF @ 60 Hz da **~1,2 kΩ**; actúa como «resistencia de corriente alterna» que reduce la amplitud de la senoidal sin disipar calor.
- **Cadena de etapas**: capacitor reduce amplitud → puente rectifica (invierte el semiciclo negativo) → electrolítico alisa → zener ajusta a 12 V.
- **Papel de la 560 kΩ**: descarga el capacitor al desconectar (los capacitores quedan cargados); el electrolítico ayuda a estabilizar el voltaje.
- **Verificación práctica**: tira LED de 12 V y ventilador de 12 V funcionan a voltaje nominal medido.
- **Desventajas declaradas** (coinciden con FAV-504): **sin aislación de red** (no tocar en funcionamiento), si el zener falla el capacitor puede recibir >35 V, y **limitada a ~100 mA** — por encima el voltaje cae.
- **Ventajas**: simple, barata; usos típicos: cargadores pequeños (~50 mA), focos LED.

## Cruces

- Umbral cumplido con [[resumen-FAV-504-fuente-capacitiva-sin-transformador]] → página de concepto **fuente-sin-transformador** candidata en la próxima consolidación (2 fuentes, escalas distintas: 27–55 mA @ 220 V vs ~100 mA @ 120 V).
- Fundamentos: [[resumen-FAV-500-capacitores-explicados]] (reactancia, alisado), [[resumen-FAV-499-diodos-explicados]] (puente, zener), [[resumen-FAV-498-factor-de-potencia]] (carga reactiva pura).

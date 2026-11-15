# Resumen: Fuente Capacitiva sin Transformador — cálculos y pruebas

- **Fuente**: `raw/electromecanica/2026-11-15-fuente-capacitiva-sin-transformador.md` ([YouTube](https://www.youtube.com/watch?v=jI3v-zjCesw), FAV-504, carpeta Electromecanica/Proyectos)
- **Canal**: Electgpl
- **Publicado**: 2018-11-29 · **Duración**: 17:07 · **Recopilado**: 2026-11-15

## Qué cubre

Proyecto y cálculo completo de una **fuente sin transformador** («transformerless») para alimentar circuitos de poca potencia (LEDs, microcontroladores) desde 220 V — aplica directamente los condensadores de [[resumen-FAV-500-capacitores-explicados]], los diodos de [[resumen-FAV-499-diodos-explicados]] y la corrección reactiva de [[resumen-FAV-498-factor-de-potencia]]. Primera fuente del subclúster «Proyectos» de la carpeta.

## Ideas clave

- **¿Capacitiva o resistiva?** La familia correcta es «transformerless»: puede ser capacitiva o resistiva. Con resistencia de potencia el cálculo da ~12 W de disipación (55 mA² × 4 kΩ) → resistencia cerámica enorme; el **capacitor limita corriente sin disipar calor** — es el motivo de elección, no la eficiencia (una fuente con transformador es más eficiente; esta es la opción barata).
- **Arquitectura básica**: **resistencia de amortiguación (~50 Ω, dos de 100 Ω en paralelo)** → **capacitor de reactancia (390 nF, tipo X2, ≥250 V — mejor 400 V)** → **resistencia de descarga 1 MΩ en paralelo** → **puente rectificador** → **electrolítico de filtrado + zener de protección** → salida regulada.
- **Función de cada pieza**:
  - La resistencia de entrada **amortigua el pico de encendido** (si se enchufa en el pico de la senoidal, el inrush estresa los componentes — reduce, no elimina).
  - El capacitor «vale» una **reactancia capacitiva Xc = 1/(2πfC)**: 390 nF @ 50 Hz → **~8,16 kΩ** → corriente de cortocircuito ~**27 mA** (220/8,1k). En paralelo (2×390 nF → 780 nF → 4 kΩ → **55 mA**) se duplica la corriente disponible.
  - La **1 MΩ de descarga** desinfla el capacitor al desenchufar (si no, el usuario recibe la carga con los dedos); es eléctricamente despreciable frente a la reactancia.
  - El **zener sin resistencia serie es válido** porque la corriente ya está limitada aguas arriba por la reactancia; cálculo térmico: 13 V × 27 mA ≈ **0,35 W** → zener de 13 V ½ W sobra. Cotas el electrolítico (16 V) y clampea la salida.
  - Salida regulable: zener de 5,1 V para un micro, o **78L05** (versión L justamente por la poca corriente) con filtrado.
- **Verificación en LTspice**: 311 V pico de entrada → limitado a ~12 V por el zener → ~5 V de salida estable, 27 mA coincidentes con el cálculo; alimentando un Arduino real.
- **⚠️ Seguridad (fuerte en el video)**: la fuente está **SIN aislación galvánica de la red** — todo el circuito vive «en caliente»; gabinete plástico cerrado, sin contactos tocables, botones de plástico aislados si se conecta un micro.

## Notas

- Contenido con patrocinio PCBWay (bloque largo a mitad del video) — excluido de la síntesis.
- ASR con garbiñeos («cener/senner/zer» por zener, «X2» OK); normalizado solo aquí.
- Canal Electgpl: 1 fuente. Umbral: **fuente capacitiva/sin transformador** ya tiene par en la lista (FAV-506 «Fuente capacitiva» siguiente) → concepto candidato al cierre. Cruces naturales: FAV-499/500/498.

## Cruces

- Pareja del umbral **fuente sin transformador** con [[resumen-FAV-506-fuente-capacitiva-aprenda-electronica]] (120 V, ~100 mA, zener + descarga 560 kΩ): mismo principio de reactancia capacitiva en dos redes y escalas → concepto candidato en la próxima consolidación. Contraste con [[resumen-FAV-505-cargador-baterias-fuente-pc]]: poca corriente vs fuente ATX de 16 A.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[fuente-sin-transformador]], entidad [[electgpl]].

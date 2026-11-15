# Resumen: Repara o modifica tu cautín — con datos (A. Electronic)

- **Fuente**: `raw/electromecanica/2026-11-15-reparar-modificar-cautin.md` ([YouTube](https://www.youtube.com/watch?v=uyFW6-19NDo), FAV-542, carpeta Electromecanica)
- **Canal**: A. Electronic
- **Publicado**: 2024-04-30 · **Duración**: 16:34 · **Recopilado**: 2026-11-15

## Qué cubre

Reparación de un cautín de 35 W con **método estructurado y cálculos** (ley de Ohm, temperaturas objetivo, materiales de aislación) — la versión rigurosa del clúster cautines con [[resumen-FAV-541-cautin-no-suelda-punta-cobre]].

## Ideas clave

- **Nicrom**: aleación níquel-cromo, **óhmica** (resistencia estable aun caliente, aunque sube ligeramente al calentar — medido: 9 Ω frío → 9,7 Ω caliente); reciclable de tostadoras, calefactores, secadores, planchas.
- **Temperatura de referencia**: un cautín JBC profesional ronda **350 °C** en punta → el nicrom **NO debe llegar a la incandescencia** (los tramos incandescentes de los videos de YouTube son espiras apretadas con poca resistencia — y degradan el cautín y las PCB). El original roto llegaba a ~600 °C.
- **Aislación**: fundas de **fibra de vidrio** — las de silicona/resina/poliuretano aguantan solo 155-350 °C y desprenden humo; la **de aluminio aguanta 550 °C pero aísla el calor** (la punta no se enta). La correcta es la **fibra básica sin recubrimiento**: 550 °C, buen traspaso de calor, sin humos.
- **Rediseño del elemento con ley de Ohm**: con alimentador de 5 V/2 A haría falta 2,35 Ω — hilo tan corto que no cubre el vástago (2,5 cm) → **subir el voltaje**. Con alimentador de laptop **19 V/3,42 A** → R = 19/2 ≈ 9,5 Ω → hilo suficiente, medido ~390 °C, punta a ~355 °C. Enrollar apretado sin que las espiras se toquen, funda encima, verificación continua (continuidad + resistencia + aislación del vástago en cada paso).
- **Metodología del canal**: medir todo en cada paso, partir de lo reciclado, verificar antes de cada prueba — un ejemplo de ingeniería casera disciplinada.

## Cruces

- Clúster cautines 2ª fuente → **umbral cumplido**: emergencia (FAV-541) vs rediseño calculado (este) → concepto candidato a consolidación.
- La ley de Ohm aplicada al calor conecta con [[resumen-FAV-498-factor-de-potencia]] (pérdidas I²R) y con la regla «subir voltaje para bajar corriente» de [[resumen-FAV-525-mppt-que-es-como-funciona]] (aquí al revés: subir V para poder usar más hilo).

# Resumen: Transistor Explicado (BJT)

- **Fuente**: `raw/electromecanica/2026-11-15-transistor-explicado.md` ([YouTube](https://www.youtube.com/watch?v=zh7PeHAZRLY), FAV-502, carpeta Electromecanica/Electronica)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2021-03-27 · **Duración**: 18:19 · **Recopilado**: 2026-11-15

## Qué cubre

Fundamentos del **transistor bipolar (BJT)** — cuarto de la serie de componentes del canal en el dominio ([[resumen-FAV-499-diodos-explicados]], [[resumen-FAV-500-capacitores-explicados]], [[resumen-FAV-501-inductores-explicados]], este) y contraparte teórica de [[transistor-bjt]] (electronica-practica) y de FAV-503 MOSFET.

## Ideas clave

- **Dos funciones**: **interruptor** (controlar circuitos, automatizable con sensor en la base) y **amplificador** (pequeña señal de base → gran cambio en el circuito principal, ej. micrófono).
- **Terminales**: **emisor, base y colector** (E-B-C); en carcasa de resina de borde plano típicamente izquierda/medio/derecha, pero **siempre verificar la hoja de datos** (el número de parte impreso da acceso a V e I máximas). Potencia alta → carcasa metálica + disipador (ejemplo medido: sin disipador, 45 °C con solo 1,2 A en MOSFETs de una fuente DC).
- **Umbral de base**: se necesita ~**0,6–0,7 V** en la base para conducir. Demostración gradual con LED a 9 V: 0,5 V apagado; 0,6 V atenuado; 0,7 V casi todo; 0,8 V pleno. La base maneja corrientes de ~1 mA frente a decenas de mA del colector.
- **Ganancia de corriente (β)**: I_colector / I_base (ej. 100 mA / 1 mA = 100); fórmula reordenable, valor en la hoja de datos.
- **NPN vs PNP**: parecen idénticos — identificar por número de parte. NPN: corriente entra por colector y base, sale por emisor (se acumula). PNP: emisor al positivo, la corriente se **divide** (entra por emisor, sale por colector y base). La **flecha del símbolo** está en el emisor y marca la corriente convencional.
- **Analogía**: tubería principal bloqueada por un disco que se abre con una compuerta giratoria accionada por una tubería pequeña — el caudal chico de la pequeña abre cada vez más el paso del grande.
- **Física interna** (retoma y extiende FAV-499): dopaje P/N, unión P-N, región de agotamiento con barrera de ~0,7 V. El NPN son **dos uniones** (N-P-N: base P delgada y ligeramente dopada a propósito); polarizar base-emisor en directa colapsa esa barrera; la mayoría de electrones cruza la base delgada sin caer en huecos y es arrastrada a través de la unión base-colector polarizada en inversa — así circula corriente «contra» una polarización inversa.
- **Flujo convencional vs de electrones**: se diseña con corriente convencional (+→−, Thompson demostró que los electrones van −→+); el video muestra ambos lados por separado.

## Notas

- ASR con garbiñeos («nn/pnp» por NPN/PNP, «10.000 amperes» por 100 mA, «yen pére» por mA); normalizado solo aquí.
- Canal Engineering Mindset **6ª fuente de la ventana** (490/498/499/500/501/502) — entidad candidata firme. Serie de componentes completa (diodo/capacitor/inductor/transistor) + MOSFET FAV-503 siguiente → página de concepto serie al cierre. Cruces: [[transistor-bjt]], FAV-503.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[serie-componentes-basicos]], [[detectores-de-metales]], entidad [[mentalidad-de-ingenieria]].

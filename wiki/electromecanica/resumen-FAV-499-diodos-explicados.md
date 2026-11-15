# Resumen: Diodos Explicados

- **Fuente**: `raw/electromecanica/2026-11-15-diodos-explicados.md` ([YouTube](https://www.youtube.com/watch?v=aPY3I8pG478), FAV-499, carpeta Electromecanica/Electronica)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2020-05-26 · **Duración**: 11:32 · **Recopilado**: 2026-11-15

## Qué cubre

Tutorial de fundamentos del **diodo**: qué es, cómo funciona internamente (unión P-N), cómo leer su hoja de características y usos típicos. Es la pieza teórica de electrónica básica del dominio que sirve de base a la serie de componentes siguiente (FAV-500 capacitores, FAV-501 inductores, FAV-502 transistores).

## Ideas clave

- **Definición**: permite corriente en **una sola dirección** (analogía de válvula de oscilación en tubería). Terminal con raya = **cátodo** (va al negativo), opuesto = **ánodo**. **Polarización directa** (ánodo a +) conduce; **inversa** aísla. Flujo convencional (+→−) vs de electrones (−→+): da igual cuál usar, pero ser consistente.
- **Física interna**: conductores (valencia 1-3, banda de conducción superpuesta), aislantes (capa llena, banda lejos) y **semiconductores** (silicio: aislante a temperatura ambiente pero con banda cercana — energía externa libera electrones). El **dopaje** crea los dos tipos: **N** (fósforo, 5 electrones de valencia → electrones libres) y **P** (aluminio, 3 → agujeros). La **unión P-N** forma la **región de agotamiento**: migración electrones→agujeros crea barrera con campo eléctrico, ~**0,7 V** de barrera en diodos típicos. Conduce solo si la fuente supera esa barrera; en inversa la barrera se expande y aísla.
- **Hoja de características (curva V-I)**: en inversa aísla **hasta cierto voltaje de ruptura** — superarlo lo vuelve conductor y lo destruye (y probablemente el circuito); en directa también hay límites de V e I. El código impreso identifica el modelo (ej. 1N4001).
- **Caída de tensión**: un diodo en conducción deja ~0,7 V (medido 0,71 en un circuito con LED).
- **Usos**:
  1. **Protección** contra polaridad invertida de la fuente.
  2. **Rectificación**: 1 diodo = media onda (CC pulsante rústica); **4 diodos = puente de onda completa** (la mitad negativa se invierte); **+ condensadores** alisanan la ondulación → CC suave.
- **Prueba con multímetro** (función diodo): negro a la raya, rojo al otro extremo → lectura (~0,5 V en el 1N4001, el mínimo para activarlo); invertido → «OL» (fuera de límites). **Lectura en ambas direcciones = diodo defectuoso**.

## Notas

- ASR con garbiñeos («diodo cenero» por zener, «cea/cc» por CA/CC, «automóvil» por átomo vecino); normalizado solo aquí.
- **Canal Engineering Mindset 3ª fuente de la ventana** (490/498/499) — entidad candidata firme para la consolidación (ya con 2 fuentes previas en electronica-practica). Cruce natural con [[diodo-zener]] (electronica-practica): el video lo menciona como variante sin desarrollarlo. Umbral: **diodo P-N como componente** — par teórico con la serie 500/501/502 del mismo canal.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[serie-componentes-basicos]], entidad [[mentalidad-de-ingenieria]].

# Cautines: mantenimiento y modificación

**Concepto** consolidado con **2 fuentes** contadas (FAV-541, 542) — dos filosofías para el mismo problema.

## El problema común

La punta ennegrecida que **no moja estaño**: la capa oxidada repele la soldadura ni lima ni lija la arreglan.

## Solución de emergencia: punta de cobre macizo

[[resumen-FAV-541-cautin-no-suelda-punta-cobre]] — 1 m de cable sólido n°8 (n°6 mejor), cortado al largo de la punta original, afinado con taladro + disco de corte, montado en el tornillo del cautín. Calienta más rápido y moja estaño de inmediato; sirve para cautines de 1 USD o de 20. Límite implícito: el cobre desnudo se oxida rápido — estañar siempre al calentar.

## Solución de fondo: rediseño del elemento con cálculo

[[resumen-FAV-542-reparar-modificar-cautin]] — reparar el hilo de **nicrom** (Ni-Cr, resistivo y estable al calor; reciclable de tostadoras/secadores) con método estructurado:

- **Temperatura de referencia**: 350 °C en punta (un JBC profesional); el nicrom **no debe llegar a la incandescencia** — los tramos al rojo de los videos virales son espiras apretadas que degradan el cautín y las PCB (el original roto llegaba a ~600 °C).
- **Aislación**: fibra de vidrio **básica sin recubrimiento** (550 °C continuo, traspasa el calor, sin humos); las de silicona/resina (≤350 °C) sueltan humo y la de aluminio (550 °C) **aísla el calor** y la punta no se enta.
- **Ley de Ohm para dimensionar**: con 5 V/2 A haría falta 2,35 Ω — hilo demasiado corto para el vástago → **subir el voltaje** (alimentador de laptop 19 V → 9,5 Ω → hilo suficiente). Medido: nicrom sube de 9 Ω frío a 9,7 Ω caliente; punta a ~355 °C.
- **Método**: medir resistencia, continuidad y aislación del vástago en cada paso antes de avanzar.

## Cruces

- Las pérdidas I²R del elemento conectan con [[resumen-FAV-498-factor-de-potencia]] y con la regla «subir tensión para bajar corriente» de [[reguladores-carga-solar]] (aquí invertida: subir V para usar más hilo).
- Curiosidad registrada en FAV-541 (hipótesis, no de las fuentes): la punta de cobre desnudo oxidaría menos niquelada — ver [[electrolisis-niquelado]].

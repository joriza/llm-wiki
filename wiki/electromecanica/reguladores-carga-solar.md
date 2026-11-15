# Reguladores de carga solar: PWM vs MPPT

**Concepto** consolidado con **4 fuentes nucleares + 2 periféricas** contadas (FAV-523, 525, 526, 535 nucleares; 533 casero y 534 kit como contraste).

## El problema

Una fuente variable (panel solar, turbina eólica) no impone tensión ni corriente: la potencia P = V×I tiene un **punto de máxima potencia** que se mueve todo el día con sol, temperatura y sombras. El regulador debe encontrarlo y quedarse en él.

## PWM (modulación de ancho de pulsos)

- Recorta la tensión a la del banco de baterías y deja pasar la misma corriente — **la potencia sobrante se pierde**.
- Números coincidentes en las fuentes: eficiencia 60-90% (FAV-523), 70-90% (FAV-535); ejemplo calculado: panel 250 W / 30,2 V regulado a 14 V → **46% aprovechado** (FAV-535).
- Barato (~25 USD / 30 A). Aceptable solo cuando **la tensión del panel es similar a la del banco** (panel chico ~150 W de 18 V → 80-85%).

## MPPT (seguimiento del punto de máxima potencia)

- Algoritmo de prueba y error (bucle proporcional): incrementa la corriente mientras la potencia sube, retrocede cuando baja. Arranca en circuito abierto y «quita volt de a uno».
- **Nunca trabaja siempre en MPPT**: batería muy descargada → fase de rampa PWM hasta igualar voltajes; el panel debe superar siempre la tensión de la batería (diodo anti-retorno).
- Eficiencia ~99% (FAV-523), 90-99% (FAV-535), 20-30% más eficiente que PWM (FAV-525). 3-4× más caro — regla: **panel >200 W o tensión muy superior al banco → MPPT obligatorio** (FAV-535).
- **En inversores interconectados** (FAV-526): cada MPPT es un convertidor DC-DC hacia un bus común (V_bus ≈ V_rms×√2 + ~30 V); inversores multi-MPPT admiten cadenas de distinta orientación. Trampa: una sombra crea **máximos locales falsos** en la curva I-V.

## Variantes y contraste

- Implementación casera de corte simple (relé + zener) sin modulación: [[resumen-FAV-533-regulador-voltaje-casero-solar]].
- Kit sin regulación, con buck LM2596 ajustado a 14,4 V: [[resumen-FAV-534-kit-solar-cortes-luz]].
- Roadmap DIY con ESP32/IGBT/shunt: [[resumen-FAV-525-mppt-que-es-como-funciona]].

## Contradicción menor registrada

La cifra de eficiencia MPPT varía por fuente (99% en FAV-523 — video con apoyo de marca SRNE — vs 95% de aprovechamiento medido en FAV-535): tomar el rango 90-99%, no el punto.

## Cruces

- Curva I-V del panel: [[resumen-FAV-521-paneles-solares-explicados]]; configuraciones serie/paralelo que definen la tensión de entrada: [[resumen-FAV-529-serie-o-paralelo-paneles-solares]]; bases: [[transistor-bjt]], [[condensador-rc]].

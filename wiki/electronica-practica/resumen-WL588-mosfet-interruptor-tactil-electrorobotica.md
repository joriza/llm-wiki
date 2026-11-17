# WL-588 — No mas Interruptores de Pared, en su lugar usa un Transistor MOSFET

- **Fuente original**: `raw/electronica-practica/2026-05-31-no-mas-interruptores-de-pared-en-su-lugar-usa-un-transistor-mosfet.md` ([Vídeo](https://www.youtube.com/watch?v=mD4zkcNCnok))
- **Canal**: ElectroRobotica3D («profe Nelson»)
- **Publicado**: 2026-05-31 · **Duración**: 12:51
- **Dominio definitivo**: electronica-practica (consolidación T97 relevo 3, 2026-11-17) (transistores / conmutación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Clase-taller de electrónica básica: teoría y práctica del **MOSFET de canal N (IRFZ44N)** como interruptor, hasta una demo real con foco a 220 V:

- **Teoría clara**: estructura interna (oblea P, fuente/drenador N, óxido de silicio aislando la compuerta); la tensión positiva en la compuerta atrae cargas y forma el canal — resistencia menor a mayor VGS (10-12 V = canal bien formado); **el enclavamiento**: la compuerta «funciona como un capacitor» que retiene la carga, así que sin descarga explícita el MOSFET queda encendido — la propiedad que aprovecha el diseño de interruptor táctil.
- **Verificación previa**: con el multímetro en diodo confirma alta/baja resistencia y enclavamiento antes de armar.
- **El circuito**: tres electrodos expuestos (compuerta / positivo / negativo); tocar compuerta-positive activa el relé → foco a 220 V; tocar compuerta-negativo lo apaga.
- **El fallo honesto y su arreglo**: al primer intento el circuito «enciende y apaga solo» — **el cuerpo del operador funciona como antena** e inyecta ruido senoidal en la compuerta de alta impedancia; solución: **capacitor cerámico/poliéster (47 nF o 100 nF) entre compuerta y negativo** para filtrar el ruido del cuerpo — ambos valores probados OK.
- **Demo final con 220 V** y cierre responsable: «esto es para aprender y comprender, no es para reemplazarlo» — desalienta explícitamente el uso real del interruptor casero.

## Señales de triage

- **1.ª mano demostrada**: teoría verificada con multímetro, fallo del ruido mostrado (con audio del zumbido) y arreglo probado con dos valores de capacitor — la mejor didáctica del tramo sobre MOSFET.
- La analogía «compuerta = capacitor» es correcta (capacitancia de gate); el manejo a 220 V con relé mostrado sin detallar aislamiento — no recomendado por el propio canal, señalado.
- ASR mínimo («nanos»); raw intacto. Saludos a miembros/suscriptores — estándar, sin funnel agresivo.

## Cruces

- **electronica-practica** (transistores): par directo con el clúster MOSFET/microcontroladores; «el ruido del cuerpo como antena» ↔ WL-543 (los bordes/casos especiales) y WL-576 (diagnóstico por síntomas).
- El enclavamiento por capacitancia parásita ↔ WL-575 (comportamiento no obvio del componente) y WL-559 (el detalle físico decide).
- IRFZ44N como componente de referencia ↔ página de componentes si existe; ElectroRobotica3D entidad candidata (1.ª fuente, texto plano).

## Veredicto de triage

Útil: clase clara de MOSFET como interruptor táctil con fallo real (ruido de cuerpo) y filtro probado; desalienta su uso en pared — bien señalado por el propio canal. Consolidación diferida (L12): electronica-practica, ElectroRobotica3D entidad candidata.

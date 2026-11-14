# Convertir un cargador de móvil de 5 V en una fuente de alimentación de 12 V

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=vwdp2pbWA0o)
- **Canal**: Amiyoled
- **Publicado**: 2016-10-14
- **Duración**: 22:09
- **Fuente original**: `raw/electronica-practica/2016-10-14-cargador-movil-a-fuente-12v.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Reutilización de cargadores de móvil viejos (5 V / 200-300 mA) convirtiéndolos en **fuentes de alimentación al voltaje que se necesite** (demostrado a 12 V, aplicable a 9 V para Arduino):

- **Demostración**: módulo ya convertido alimenta dos ventiladores de 12 V/120 mA (240 mA de consumo total) — salida en vacío 13,2 V, cae a ~12 V con carga (caída normal).
- **La modificación solo toca dos componentes**:
  - **Diodo zener de referencia**: en la placa está marcado D3 (zener, junto al rectificador D1); el voltaje de salida lo fija este zener. Se comprueba con un tester de zener (el cargador original usa uno de 3,6 V; el tester marca 3,6 V a botón, ~4,8 con condensador) y se sustituye por uno de 12 V (ver [[resumen-FAV-306-zener-diode-tester-jericho-uno]] para fabricar el tester). Polaridad: la raya negra del zener = cátodo (negativo).
  - **Condensador de salida**: el original es 220 µF/10 V — **debe cambiarse a un voltaje ≥30 % superior al de salida** (12 V → mínimo 16 V; 25 o 50 V aún mejor). Si se deja el de 10 V con salida de 12 V, "en unos minutos va a explotar". Polaridad: la franja blanca del condensador = negativo.
- **Cirugía**: quitar el conector USB (evita confundirlo después con un cargador de 5 V; marcar el módulo con el voltaje nuevo), soldar zener y condensador nuevos — 5-10 minutos de trabajo.
- **Identificación del positivo en el cable**: el contacto conectado al negativo del condensador es el negativo; el del medio (libre en un cargador) es el positivo.
- **Límites**: hasta ~300 mA (el consumo no debe pasar del valor indicado por el fabricante); no se calienta respetando el límite. Los LED de estado siguen funcionando (verde con carga, rojo sin carga).
- **Variantes**: 9 V para Arduino, o dejarlo en 5 V y usarlo como fuente de banco pequeña.

## ASR a corregir

«mamp» = mA/miliamperios; «center/senner/cener/centener» = zener; «microfarr(ach)os» = microfaradios (µF); «rever» = revés; «paso abajo» = buck/step-down (adelanto del video siguiente: módulo buck 20 V→12 V).

## CRUCES

- **[[resumen-FAV-306-zener-diode-tester-jericho-uno]]**: el propio video remite a un tester de zener para identificar el voltaje del diodo antes de sustituirlo.
- **fuente-conmutada (tema en consolidación)**: tercero de los ángulos prácticos sobre pequeñas fuentes — FAV-008/009 (fuentes SMPS de bombillas LED) y FAV-010 (fuente capacitiva sin transformador) tratan la electrónica de fuentes desde el análisis; este la reutiliza a nivel de módulo (solo se cambia la referencia de tensión y el filtro). El zener como referencia también aparece como mejora en FAV-010.
- Tema-candidato: **diodo-zener** (2/2 → umbral alcanzado junto a FAV-306) y reutilización/reciclaje electrónico.
- **[[como-se-hace-lo-cotidiano]]**: ejemplo canónico de economía doméstica aplicada — no tirar cargadores viejos, convertirlos en fuentes de taller.

## ADVERTENCIA

Se trabaja con un circuito abierto conectado a 220 V: el canal advierte de hacerlo **desconectado de la red** y con cuidado de polaridades; el riesgo de explosión del condensador si se deja con voltaje insuficiente es explícito en el video.

## Dominio

`electronica-practica/` (fuentes de alimentación caseras, zener como referencia, reutilización de cargadores).

# Cómo saber si una fuente conmutada está oscilando (Terrazocultor)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=U1LlPJg4e7Y)
- **Canal**: Terrazocultor jose manuel
- **Publicado**: 2013-07-25
- **Duración**: 07:15
- **Fuente original**: `raw/electronica-practica/2013-07-25-fuente-conmutada-oscilando.md`
- **Origen**: favoritos Chrome — Electronica y TV (pendiente eliminación de bookmark al cierre de la ventana total)

## Qué trata

Truco de taller para verificar si una **fuente conmutada está oscilando**, sin osciloscopio, con un comprobador casero de ~2-3 €:

1. **Estructura recordatorio**: puente de 4 diodos + condensador de filtro (el más grande; **queda cargado a ~300 V aunque se desconecte de la red — descargarlo siempre, p. ej. con una bombilla**) → MOSFET que re-convierte en alterna a **20 kHz o más** (vs 50 Hz de red; por eso el transformador es tan pequeño).
2. **El problema de diagnóstico**: la continua de 300 V se mide con polímetro, pero la componente alterna de oscilación en el MOSFET no; el osciloscopio no siempre está disponible.
3. **El comprobador**: solo 3 componentes en serie entre el **negativo del condensador principal** (identificado por la banda) y la **patilla del MOSFET con los 300 V** — condensador (bloquea la continua, deja pasar solo la alterna), **neón** (enciende por encima de ~90 V) y **resistencia de 10 kΩ** (limita la corriente para no fundir el neón). Sin polaridad: se conecta en cualquier sentido.
4. **Verificación**: en la fuente sana el neón enciende al enchufar → confirma que oscila (la continua sola no puede iluminarlo por el condensador). Introduciendo una avería deliberada (desoldar la base del transistor pequeño que gobierna el MOSFET), con los 300 V de continua presentes el neón NO enciende → demuestra que el instrumento detecta oscilación, no solo tensión.
5. Sugerencia de acabado: montarlo en cajita con dos cables de prueba, como instrumento permanente.

## ASR a corregir / estado de la transcripción

Transcripción ASR utilizable. Errores: «morf/morfer/mofet» = **MOSFET**; «bombilla como me habéis visto hacer» (descarga del condensador); «tard de estado en la piscina» — introducción coloquial con chistes, tangencial al contenido técnico; «burera» = **bombilla** (carga en paralelo con el condensador).

## CRUCES

- Diagnóstico práctico complementario a la anatomía teórica de [[resumen-FAV-315-analizando-fuentes-tcon-parte-1]] (mismo dominio de fuentes conmutadas: paso de alterna→continua→alterna de alta frecuencia→transformador pequeño).
- El aviso de seguridad (condensador de filtro cargado a ~300 V) refuerza el enfoque práctico del dominio; el neón como indicador también aparece implícito en testers como el de [[resumen-FAV-306-zener-diode-tester-jericho-uno]].

## Dominio

`electronica-practica/` (fuentes de alimentación — diagnóstico en taller).

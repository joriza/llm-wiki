# Transistor NPN y PNP: La Guía Definitiva para NO volver a confundirlos

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=XRVzR1HwNk0)
- **Canal**: El Aula Virtual de makordoba
- **Publicado**: 2024-05-02
- **Duración**: 16:48
- **Fuente original**: `raw/electronica-practica/2024-05-02-transistor-npn-y-pnp-guia-definitiva-para-no-confundirlos.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Método intuitivo para **conectar sin equivocarse** un transistor NPN o PNP en **emisor común** (la configuración habitual de la electrónica digital), razonando desde el diodo emisor:

- **Los dos lazos**: todo transistor conectado forma un **lazo de control** (base-emisor, vía el "diodo emisor" marcado por la flecha del símbolo) y un **lazo de potencia** (emisor-colector, que alimenta la carga: LED, motor, o señal de salida).
- **Receta por el diodo emisor**: la flecha del símbolo es un diodo — polarización directa entre base y emisor siempre (NPN: base = ánodo → al positivo; PNP: base = cátodo → al negativo), con su **resistencia de base** limitadora. El colector va al polo **opuesto** al emisor para que exista diferencia de potencial (NPN: emisor a negativo, colector a positivo vía R_c; PNP al revés — por eso los cables quedan "cruzados" y por comodidad de dibujo el PNP se dibuja con el emisor arriba).
- **Dos usos del lazo de potencia**: carga en **serie** con el colector (conmutar un LED) o extraer los **voltajes** del colector/emisor (señal de salida, cambia según el estado del control).
- **Tres observaciones de cierre**: (1) en emisor común el **emisor va directo a la fuente** (negativo en NPN, positivo en PNP) y es polo común de control y potencia; (2) la **corriente de colector convencional sigue siempre la flecha** del emisor; (3) la elección NPN/PNP la dicta la **polaridad disponible para gobernar la base** — polo positivo → NPN, polo negativo → PNP.
- **Demostración práctica** con protoboard (fuente 9 V, R_c 1 KΩ, LED): el NPN solo conduce con base al positivo; el PNP solo con base al negativo — verificado en vivo con los dos transistores instalados.
- Crítica inicial: la bibliografía sobretrata el NPN y despacha el PNP — el video lo equilibra.

## ASR a corregir

«boer» = buzer (buzzer); «PE Peña corriente» = pequeña corriente; «Teo» = de nuevo («de nuevo teo» = relleno ASR); «1 kiloh» = 1 kΩ; «la amos» = la gobernamos/la mandamos (contexto: cómo se controla la base); «corriente del vector» = dudoso ASR (probablemente «corriente convencional» repetido); «masa» (ok).

## CRUCES

- **Segunda voz del tema** **transistor-bjt** (con FAV-005, Del 0 al 1: física interna + 2N2222A): umbral ≥2 alcanzado → **candidato a página de concepto en la próxima consolidación** del dominio (el concepto uniría física interna, receta de conexión NPN/PNP y usos interruptor/amplificador).
- Cableado con [[resumen-FAV-003-montaje-detector-de-luz]]: el 2N2222A NPN del detector es exactamente el caso "base gobernada por polo positivo, emisor a negativo" que esta fuente formaliza.
- **[[como-se-hace-lo-cotidiano]]**: la regla "polaridad disponible → tipo de transistor" es la decisión diaria de quien diseña cualquier driver de carga (relés, LEDs, motores).

## ADVERTENCIA

Subtítulos automáticos con términos mal reconocidos (ver ASR); el video no calcula valores de resistencias (solo su función limitadora) y usa «corriente convencional» consistentemente — no mezclar con el sentido físico de electrones explicado en FAV-005.

## Dominio

`electronica-practica/` (componentes: BJT NPN/PNP, polarización, configuración emisor común).

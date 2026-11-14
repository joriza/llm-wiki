# Análisis de Mallas con Kirchhoff y Ohm

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=LihRPe0zkGI)
- **Canal**: El profe García
- **Publicado**: 2016-02-17
- **Duración**: 12:03
- **Fuente original**: `raw/electronica-practica/2016-02-17-analisis-de-mallas-con-kirchhoff-y-ohm.md`
- **Origen**: favoritos Chrome `Gral/Electricidad Basica Teorica/`

## Qué trata

Resolución paso a paso de un circuito de **dos mallas** con la ley de voltajes de Kirchhoff (LVK) y la ley de Ohm:

- **Identificación de mallas**: en un circuito con dos "ventanas" existe también la malla exterior; bastan las dos mallas internas para cubrir todos los elementos (no hace falta una tercera ecuación).
- **Planteo de signos**: se escoge arbitrariamente el sentido de cada corriente de malla (i1, i2); por donde "entra" la corriente en una resistencia va el signo positivo y por donde sale, el negativo. La fuente conserva sus propios signos.
- **Resistencia compartida**: en la resistencia común a ambas mallas (R2) las corrientes se cruzan con signos contrarios → la caída se expresa como R·(i1 − i2). Es el punto conceptual clave del video.
- **Sistema de ecuaciones**: sustituyendo V = R·I quedan dos ecuaciones con dos incógnitas (15·i1 − 10·i2 = 5; −10·i1 + 20·i2 = 0), resueltas por **eliminación/reducción** (multiplicar la primera ×2 y sumar): i1 = 0,5 A (500 mA) e i2 = 0,25 A (250 mA).
- **Lectura del signo**: si al calcular una corriente en una resistencia el resultado da negativo, la corriente real circula en el sentido opuesto al supuesto al azar.
- **Tarea dejada al espectador**: hallar los voltajes de cada resistencia (pista: V en R4 = 8 Ω × 0,25 A = 2 V).

## ASR a corregir

«Gear chop / kitop / ksop / Kirchop» = Kirchhoff; «cer0/cer» = cero; «on» = Ohm; «y1/y2» = i1/i2 (corrientes); «mampos/mamp» = miliamperios; «eliminación… sumas y restas» (OK, terminología del profe).

## CRUCES

- **Primera fuente del dominio** `electronica-practica/` (creado 2026-11-14): base teórica para todo el clúster práctico posterior (detector de luz con LDR, LEDs a 220 V, fuentes conmutadas).
- **[[como-se-hace-lo-cotidiano]]**: el análisis de mallas es la herramienta con la que se dimensiona cualquier circuito casero de la vida diaria (instalaciones, cargadores, iluminación) — conocimiento de fondo invisible detrás de lo cotidiano.
- Tema-candidato: **leyes-de-kirchhoff** (umbral 1/2 — probable segunda fuente en `Electronica y TV/`).

## ADVERTENCIA

Video didáctico de divulgación con subtítulos automáticos (2016): verificar los valores del enunciado del circuito en el video (5 V; R1 5 Ω, R2 10 Ω, R3 2 Ω, R4 8 Ω) antes de reproducir el ejercicio; el profe deja los voltajes como tarea y no los resuelve todos.

## Dominio

`electronica-practica/` (teoría de circuitos: Kirchhoff, Ohm, análisis de mallas).

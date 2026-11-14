# Montaje detector de luz (ausencia de luz)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=4jUeKtnwzrs)
- **Canal**: El profe García
- **Publicado**: 2012-12-12
- **Duración**: 02:59
- **Fuente original**: `raw/electronica-practica/2012-12-12-montaje-detector-de-luz.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Montaje práctico en **protoboard** de un detector de ausencia de luz que enciende un LED cuando se tapa la fotorresistencia:

- **Componentes**: fuente de 12 V, resistencias de 100 KΩ, 1 KΩ y 500 Ω, transistor **NPN 2N2222A**, cables, protoboard y **fotorresistencia (LDR)** — el elemento sensor, cuya resistencia varía con la intensidad de luz.
- **Divisor de sensado**: 100 KΩ en serie con la LDR entre positivo y negativo; el punto intermedio va a la **base** del transistor a través de la resistencia de 1 KΩ.
- **Etapa de potencia**: el LED en serie con 500 Ω va al **colector**; el **emisor** a negativo. Al oscurecer, la LDR sube de resistencia, el punto medio se polariza y el transistor conduce → el LED se enciende.
- **Aplicación cotidiana**: así funcionan los fotocélulas del alumbrado público — ante la ausencia de luz "dan la orden" de encender las lámparas.

## ASR a corregir

«2222A» = 2N2222A; «PROTOBOARD» (ok); «foto-resistencia/FOTORESISTENCIA» = fotorresistencia (LDR); subtítulos manuales es-419, errores mínimos.

## CRUCES

- **[[como-se-hace-lo-cotidiano]]**: el montaje replica el fotocélula del alumbrado público y los encendidos automáticos de luces domésticas — electrónica básica detrás de un mecanismo cotidiano.
- Cableado al dominio: segunda fuente de `electronica-practica/`; complementa [[resumen-FAV-002-analisis-de-mallas-con-kirchhoff-y-ohm]] (teoría) con un montaje físico, y anticipa la fuente dedicada a la **LDR** (FAV-004) y la de **transistores** (FAV-005).
- Tema-candidato: **ldr-fotorresistencia** (umbral 1/2, con FAV-004 pasa a página de concepto en consolidación).

## ADVERTENCIA

Video breve de montaje (2012, subtítulos manuales): no explica el cálculo del divisor ni los valores de polarización — reproducir tal cual funciona, pero la parte teórica (por qué conduce el transistor) queda implícita; verificar pinout del 2N2222A (colector derecha, emisor izquierda según el video, depende de la vista).

## Dominio

`electronica-practica/` (montajes: sensores, LDR, transistor como interruptor).

# PLC: de relés cableados a ladder-hobby (LDmicro)

**Concepto** consolidado con **9 fuentes** contadas: PLC industrial **6** (FAV-490, 491, 494, 495, 496, 497) + LDmicro/ladder hobby **3** (FAV-544, 545, 546).

## El concepto: un lenguaje, dos escalas

El **lenguaje ladder** —contactos (entradas) y bobinas (salidas) con la «corriente virtual» fluyendo de positivo a tierra— es el mismo en un LOGO! de Siemens de fábrica y en un Arduino Nano programado con LDmicro: «aprendés acá y programás en cualquier PLC» ([[resumen-FAV-545-primeros-pasos-ldmicro]]).

## PLC industrial (LOGO! Siemens, Cade Simu)

- Arquitectura y ciclo de escaneo: [[resumen-FAV-490-conceptos-basicos-plc]] (de los bancos de relés cableados al software).
- Cableado previo a la programación: [[resumen-FAV-491-cableado-plc-logo]] (24 V DC, entradas NA/NC, salidas de relé; sin programa no acciona nada).
- Prácticas escaladas del **arranque estrella-triángulo** (3 fuentes): programación en LOGO! [[resumen-FAV-494-arranque-estrella-triangulo-plc-logo]], simulación integral en Cade Simu [[resumen-FAV-496-arranque-estrella-triangulo-cade-simu]] y práctica con inversión de giro [[resumen-FAV-497-practica-estrella-triangulo-inversion-logo]] — enclavamiento cruzado y temporizadores desfasados como denominador común.
- Señal analógica industrial 4-20 mA: [[resumen-FAV-495-sensor-4-20ma-plc-logo]] (2ª fuente del tema en la wiki con FAV-354).

## Ladder hobby (LDmicro sobre Arduino)

- Teoría: [[resumen-FAV-545-primeros-pasos-ldmicro]] (contactos/bobinas, AND en serie, enclavado, TON, contadores; renombrar siempre los contactos).
- Flujo de carga: [[resumen-FAV-546-ldmicro-xloader-arduino]] (asignar pines reales → simular → compilar .hex → XLoader).
- Caso especial de bootloader: [[resumen-FAV-544-ldmicro-arduino-nano-bootloader]] (Nano viejo no detectado por AVRDUDES → Arduino-as-ISP + quemar Optiboot).

## Coincidencias entre escalas

- Mismas estructuras en ambos mundos: enclavamiento cruzado (FAV-496/497 vs FAV-545), temporizadores con retardo (TON de 5 s en estrella-triángulo vs TON de 500 ms en LDmicro), entrada NA/NC (contacto negado en LDmicro).
- Diferencia clave: el PLC industrial viene validado (verificación en maqueta física en FAV-494/497); el hobby exige verificar el hardware usted mismo (bootloader, pines).

## Cruces

- [[transistor-bjt]] (etapas de salida), [[resumen-FAV-501-inductores-explicados]] (bobinas de relés), [[fabricacion-casera-pcb]] para placas de potencia hobby.

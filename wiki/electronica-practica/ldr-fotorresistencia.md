# LDR — fotorresistencia

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — umbral FAV-003+004 registrado desde la ingesta de ambas fuentes).
- **Fuentes**: [[resumen-FAV-003-montaje-detector-de-luz]] (El profe García — la LDR en un montaje aplicado) y [[resumen-FAV-004-fotoresistencia-ldr-cienciabit]] (Cienciabit — la monografía del componente).
- **Ver también**: [[transistor-bjt]] (lo que enciende la LDR) · [[como-se-hace-lo-cotidiano]].

## El concepto

La **fotorresistencia (LDR, light dependent resistor)**: semiconductor de alta resistencia (sulfuro de cadmio, CdS) basado en el **efecto fotoeléctrico** — más luz → menos resistencia. Dos propiedades definen sus usos:

- **Lentitud de respuesta**: el retardo de la variación la excluye de comunicaciones (para eso, fotodiodo/fototransistor) y la hace ideal en sistemas lentos — el alumbrado público automático.
- **Dos topologías de uso** documentadas en el dominio: en **serie con la carga** (FAV-004: LDR que controla directamente la corriente de un LED) y como **divisor que polariza un transistor** (FAV-003: 100 KΩ + LDR → base del 2N2222A → LED de potencia; al oscurecer, conduce y enciende = fotocélula de alumbrado público).

Los experimentos de FAV-004 (LED con 120 Ω de protección, detección del IR de un mando a distancia, multímetro ~14 KΩ en oscuridad) dan los valores de referencia para dimensionar el divisor de FAV-003.

## Notas de verificación y confianza

- Ambas fuentes con subtítulos manuales o de buena calidad — las más fiables del dominio en transcripción.
- Los valores de resistencia citados (~14 KΩ oscura) **dependen del modelo de LDR** — medir antes de usar en un diseño; la R de protección de 120 Ω está dimensionada para 3 V/LED.

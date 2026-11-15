# Una Resistencia Sensible a la Luz. Fotoresistencia (LDR)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=1vWbqf7cHLg)
- **Canal**: Cienciabit: Ciencia y Tecnología
- **Publicado**: 2016-09-05
- **Duración**: 06:37
- **Fuente original**: `raw/electronica-practica/2016-09-05-una-resistencia-sensible-a-la-luz-fotoresistencia-ldr.md`
- **Origen**: favoritos Chrome `Gral/Electronica Basica/`

## Qué trata

Explicación y serie de experimentos con la **fotorresistencia (LDR)**:

- **Definición y física**: componente cuya resistencia depende de la luz recibida (más luz → menos resistencia). LDR = *light dependent resistor*. Semiconductor de alta resistencia (sulfuro de cadmio, **CdS**) basado en el **efecto fotoeléctrico**: los fotones promueven electrones a la banda de conducción y el material conduce mejor.
- **Limitación — tiempo de respuesta**: la variación de resistencia tiene retardo → no sirve para comunicaciones (modulación rápida de la luz); para eso van **fotodiodos y fototransistores**. Ideal en sistemas lentos: alumbrado público automático nocturno.
- **Experimento 1 (LED indicador)**: pila 3 V (2×1,5 V en serie), resistencia de **120 Ω para limitar la corriente** (protege LDR y LED), LDR y LED verde (pata larga = positivo). Más luz sobre la LDR → más corriente → LED más brillante; responde también a luz ultravioleta.
- **Experimento 2 (medición de corriente)**: con miliamperímetro y luego microamperímetro — al tapar la LDR la corriente baja; detecta también el **infrarrojo** de un mando a distancia (LED IR en el extremo de un tubo negro como capuchón).
- **Experimento 3 (medición de resistencia)**: multímetro en escala 20 K — tapada marca ~14.000 Ω (sube mucho); iluminada baja visiblemente.

## ASR a corregir

Subtítulos manuales (es, buena calidad): «light dependant resistor» (grafía del video; estándar *dependent*), «n de negro negativo» (verbalismo del presentador), «pinzas de cocodrilo» (ok). Sin errores relevantes de ASR.

## CRUCES

- **[[ldr-fotorresistencia]]**: página de concepto creada en la consolidación (2026-11-14) — monografía del componente, con FAV-003 como su fuente de montaje aplicado.
- **[[como-se-hace-lo-cotidiano]]**: alumbrado público automático y sensores de luz ambiental — física de semiconductores detrás de un mecanismo cotidiano.
- Diferencia de roles con FAV-003: aquí la LDR está en serie con el LED (control directo de corriente); en FAV-003 alimenta el divisor que polariza un transistor — dos topologías de uso del mismo sensor.

## ADVERTENCIA

Video divulgativo con pilas sueltas y pinzas cocodrilo: la resistencia de 120 Ω dimensionada para 3 V/LED no sirve a otras tensiones; los valores de resistencia citados (~14 KΩ oscura) dependen del modelo de LDR — medir antes de usar en un diseño.

## Dominio

`electronica-practica/` (componentes: LDR, efecto fotoeléctrico, fotodiodos/fototransistores).

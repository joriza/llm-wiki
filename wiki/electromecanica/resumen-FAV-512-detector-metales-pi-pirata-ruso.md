# Resumen: Detector de metales PI «Pirata Ruso» (Espacio de Cesar)

- **Fuente**: `raw/electromecanica/2026-11-15-detector-metales-pi-pirata-ruso.md` ([YouTube](https://www.youtube.com/watch?v=P6Yo4xhDs9k), FAV-512, carpeta Electromecanica/Proyectos)
- **Canal**: Espacio de Cesar
- **Publicado**: 2019-02-08 · **Duración**: 10:01 · **Recopilado**: 2026-11-15

## Qué cubre

Construcción completa del clásico detector de metales **PI (Pulse Induction) «Pirata Ruso»** sobre PCB (patrocinio PCBWay declarado): BOM, bobina artesanal, ajuste y prueba de campo. Primera fuente del clúster **detectores de metales** junto al VLF de [[resumen-FAV-513-plato-detector-vlf-como-funciona]].

## Ideas clave

- **Arquitectura PI**: el circuito inyecta pulsos de corriente en la bobina y detecta la señal decaimiento inducida en el metal; principales: **NE555** (generador de pulsos), **TL072** (doble operacional, admite TL082 o LM358), transistores **BC557/BC547** y **MOSFET IRF840** de potencia; alimentación con 3×18650.
- **BOM económico**: ~14 USD en componentes para 3 detectores; lista completa de 18 resistencias, 8 capacitores y 2 diodos 1N4148 en la descripción.
- **Bobina casera**: tabla de diámetros (15/20/25 cm, redondas o cuadradas); ejemplo 25 cm → perímetro 2πr ≈ 78,5 cm → **22 vueltas de alambre esmaltado 0,4 mm** clavando dos clavos separados a la mitad del perímetro. Rendimiento similar entre diámetros probados.
- **Ajuste**: trimpot R2 al máximo, girar el potenciómetro R13 hasta el **punto donde pasa de ruido a silencio** — justo ahí está la máxima sensibilidad (detecta una tuerca pequeña a ~10 cm).
- **Detalle de montaje**: en la serigrafía del PCB hay **un transistor dibujado al revés** — ojo al soldar.
- **Salida**: parlante 8 Ω o audífonos; opcional LED o vúmetro de aguja como indicación visual.
- **Campo**: «muy sensible» — el patio rinde clips, chapas y chatarra pequeña.

## Cruces

- Clúster detectores de metales: principio **PI** (pulsos) aquí vs **VLF** (dos bobinas TX/RX equilibradas) en [[resumen-FAV-513-plato-detector-vlf-como-funciona]] y aplicación cotidiana en [[resumen-FAV-514-arcos-seguridad-detector-metales]].
- Componentes: [[resumen-FAV-502-transistor-explicado]] (BJT), [[resumen-FAV-503-como-funciona-un-mosfet]] (IRF840), [[resumen-FAV-500-capacitores-explicados]], [[resumen-FAV-501-inductores-explicados]] (bobina).

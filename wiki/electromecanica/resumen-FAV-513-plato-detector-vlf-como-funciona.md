# Resumen: Plato de detector VLF — cómo funciona (Desenterrado)

- **Fuente**: `raw/electromecanica/2026-11-15-plato-detector-vlf-como-funciona.md` ([YouTube](https://www.youtube.com/watch?v=39f9RJkPJNk), FAV-513, carpeta Electromecanica/Proyectos)
- **Canal**: Desenterrado
- **Publicado**: 2023-06-05 · **Duración**: 10:00 · **Recopilado**: 2026-11-15

## Qué cubre

Experimento demostrativo del principio **VLF (Very Low Frequency)** de los detectores de metales: dos bobinas caseras idénticas, generador de funciones + osciloscopio, y medición del desfase que da el «ID» del metal. Segunda fuente del clúster **detectores de metales** (con la PI de [[resumen-FAV-512-detector-metales-pi-pirata-ruso]]).

## Ideas clave

- **Plato VLF = dos bobinas en D superpuestas** (TX y RX, 30 vueltas de cobre esmaltado + condensador de 100 nF en paralelo cada una): dispuestas para que sus campos **se anulen** — zona de campo nulo en el centro. Sin metal, la RX no ve nada.
- **Detección**: un metal desvía las líneas de campo → rompe el equilibrio → la RX recibe señal. Demostrado con moneda de 2 €, bola de plomo, arandela de acero, tuerca y anillos.
- **El ID depende del desfase**: el desequilibrio aparece como **desplazamiento temporal de fase** — plomo (ID alto ~80-90) casi imperceptible pero con desfase mínimo; arandela de acero ~90° (ID mínimo); moneda vieja ~45°. El detector traduce ese ángulo de fase en el número de identificación.
- **Frecuencia de resonancia**: cada bobina+condensador tiene su frecuencia natural (~13-16 kHz aquí); hay que ajustar TX/RX al **punto de amplitud máxima**. El ajuste mecánico es **crítico**: mover la bobina un poco desajusta todo — por eso los platos comerciales van embutidos en resina (un golpe al detector «suena» porque mueve el cobre).
- **Anillo roto = invisible**: si el anillo (circuito cerrado donde se inducen corrientes) **se rompe**, la corriente inducida no puede circular y el detector **no lo ve para nada** — demostración potente de que funciona por inducción electromagnética.
- **Detector con smartphone**: la TX a la salida de audio y la RX a la entrada de audio del teléfono + palo = detector casero (aplicaciones tipo Smart Hunter).

## Cruces

- Clúster detectores: principio **VLF** (equilibrio de dos bobinas + fase) vs **PI** (pulsos, un solo bobina) en [[resumen-FAV-512-detector-metales-pi-pirata-ruso]]; principio genérico de campo perturbado en [[resumen-FAV-514-arcos-seguridad-detector-metales]].
- Base física: [[resumen-FAV-501-inductores-explicados]] (circuito LC resonante), [[resumen-FAV-500-capacitores-explicados]].

# Resumen: Cómo funcionan realmente las turbinas eólicas (Mentalidad De Ingeniería)

- **Fuente**: `raw/electromecanica/2026-11-15-turbinas-eolicas-secretos.md` ([YouTube](https://www.youtube.com/watch?v=Uk4LlN7qIaA), FAV-520, carpeta Electromecanica/Energias Renovables)
- **Canal**: Mentalidad De Ingeniería (traducción de The Engineering Mindset)
- **Publicado**: 2024-12-02 · **Duración**: 20:40 · **Recopilado**: 2026-11-15

## Qué cubre

Anatomía y física completa de las **turbinas eólicas**: de un motor DC con aspas a las megaturbinas marinas — apertura del subclúster **Energías Renovables**.

## Ideas clave

- **Principio**: energía cinética del viento → mecánica → eléctrica (un motor DC girado a mano genera voltaje — el generador es un motor al revés).
- **Por qué tan altas**: el viento es **más rápido y menos turbulento** en altura; la velocidad del viento es lo que más influye. Por eso las megaturbinas van al mar.
- **Góndola**: veleta + anemómetro → computadora gira la góndola con **motores de yawn** sobre engranaje de la torre; **codificador** limita las vueltas para que los cables de potencia no se retuerzan; frenos hidráulicos + disco.
- **Aerodinámica del aspa**: perfil que genera **sustentación** (presión menor arriba) vs **resistencia**; el ángulo de ataque se controla **inclinating (pitch) las aspas** — es el acelerador de la turbina y su freno principal. Ángulo excesivo → pérdida (stall).
- **Velocidades de corte**: no arranca bajo la **velocidad de corte**; se frena sobre la **velocidad de desconexión** para protegerla.
- **¿Por qué 3 aspas?**: experimento con modelo — 1 no autoarranca; 2 estable y barata; **3 capta más energía y es muy estable**; 4-5 apenas ganan y 6+ bajan el voltaje por arrastre. Las microturbinas tienen muchas aspas porque su viento es débil.
- **Límite físico de la punta**: la punta puede **romper la barrera del sonido** — estruendo y desgarro de aspas; por eso las grandes giran lento (~18 RPM) y la **caja multiplicadora (~100×: 18 → 1800 RPM)** lleva el generador a la frecuencia de red.
- **Generador DFIG** (doble alimentación): rotor con 3 bobinas vía anillos colectores alimentadas por un **controlador que inyecta frecuencia variable** (±6,67 Hz compensa 1600-2000 RPM) para que el estator siempre exporte **50/60 Hz** a la red aunque el viento varíe.
- **Situación**: a favor del viento es más eficiente (pero exige aspas más rígidas); verticales funcionan en cualquier dirección pero son menos eficientes; aspas de **fibra de vidrio reforzada** (livianas y resistentes), torcidas para compensar la distinta velocidad punta/centro.

## Cruces

- Apertura del clúster Energías Renovables: complementa [[resumen-FAV-521-paneles-solares-explicados]] (el video mismo sugiere eólica+solar como par renovable) y la cadena de potencia de [[resumen-FAV-524-inversores-solares-tipos]].
- Bases: [[resumen-FAV-501-inductores-explicados]] (generador), engranajes, [[resumen-FAV-502-transistor-explicado]]/[[resumen-FAV-503-como-funciona-un-mosfet]] (electrónica del controlador).

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[energias-renovables]], entidad [[mentalidad-de-ingenieria]].

# Resumen: Fuente de PC convertida en cargador de baterías 12 V

- **Fuente**: `raw/electromecanica/2026-11-15-cargador-baterias-fuente-pc.md` ([YouTube](https://www.youtube.com/watch?v=hHH62ej2Bvc), FAV-505, carpeta Electromecanica/Proyectos)
- **Canal**: Tecnologia y Soluciones
- **Publicado**: 2024-12-16 · **Duración**: 33:16 · **Recopilado**: 2026-11-15

## Qué cubre

Hack completo para reutilizar una **fuente ATX de PC** (350 W, 3,3/5/12 V) como **fuente de banco de 12 V de alta corriente** y **cargador de baterías de plomo/gel** — segundo proyecto del subclúster «Proyectos», complementario a la fuente capacitiva de [[resumen-FAV-504-fuente-capacitiva-sin-transformador]]: mientras aquella da pocos mA, la ATX da hasta **16 A en 12 V** (amarillo) y 32 A en 5 V (rojo).

## Ideas clave

- **Encendido sin placa madre**: puentear el **cable verde (PS_ON)** del conector principal con cualquier negro (masa); el interruptor trasero solo corta la red.
- **Protección de sobre-corriente**: con cargas exigentes (foco de auto >60 W, compresor 12 A) la fuente **se apaga sola** — no es avería, es su diseño equilibrado para PC, donde nunca hay picos.
- **Anulación de la protección**: el pin **4 del TL494** (PWM controller típico) activa esa protección; un **puente pin 4 → masa** la desactiva y la fuente entrega toda la corriente nominal. Consecuencia: ya no hay fusible electrónico — **el cuidado pasa a ser del usuario** (no superar los 16 A declarados).
- **Efecto lateral**: con el pin 4 a masa, la fuente **enciende sin el puente verde** (el mismo pin hacía de encendido/apagado).
- **Voltaje variable para cargar baterías**: el **pin 1 del TL494** recibe la realimentación de las salidas; un **divisor potenciómetro 100 kΩ + resistencia 1 kΩ** entre pin 1 y masa permite subir el voltaje gradualmente — con 100 kΩ interfiere lo mínimo (~12,3 V), girando se sube hasta **14 V**, el rango de carga de una batería de 12 V.
- **Límite físico del rango**: los **capacitores de salida están cotados a 16 V** en la rama de 12 V — sin cambiarlos no conviene pasar de ahí (el truco puede llegar a 20 V+ reemplazando capacitores, anunciado para otro video). Desconectar el **ventilador** si se sube mucho (va a los 12 V).
- **Carga verificada**: batería de gel 12,5 V → conecta y baja a 13,38 V, sube hasta 14 V; sirve para gel, moto y auto. Corriente medida ~8 A con compresor (picos más altos).
- **Fijar el voltaje sin potenciómetro**: medir la resistencia del divisor con el multímetro y poner **una resistencia fija equivalente en paralelo, sin sacar ningún componente** de la placa.

## Seguridad

- Descargar los **capacitores primarios** (entrada) con un foco incandescente o puente antes de manipular la placa — quedan cargados aun desenchufada.
- La fuente modificada **no se protege**: cualquier corto o sobrecarga va directo.

## Cruces

- Contraste directo con [[resumen-FAV-504-fuente-capacitiva-sin-transformador]] (poca corriente + aislación nula vs. mucha corriente + aislación nula): la elección depende de la carga.
- Bases de componentes en [[resumen-FAV-500-capacitores-explicados]] (capacitores primarios de entrada, electrolíticos de salida) y [[resumen-FAV-502-transistor-explicado]] (etapas de conmutación internas de la fuente).
- Carga de baterías: rango 13–14 V coincide con la práctica estándar de baterías de plomo.

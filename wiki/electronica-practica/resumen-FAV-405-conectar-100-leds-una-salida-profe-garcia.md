# Conectar 100 LEDs a una salida (El profe García)

**Fuente**: [Como Conectar 100 LEDs a una Salida (Circuito)](https://www.youtube.com/watch?v=CtJqhg5Y6DA)
**Canal**: El profe García · **Publicado**: 2013-11-20 · **Duración**: 05:32 · **Idioma**: es-419 (subs manuales)
**Raw**: `raw/electronica-practica/2013-11-20-conectar-100-leds-una-salida-profe-garcia.md` (FAV-405, 2026-11-15)

*Nota*: el bookmark traía una playlist ajena (`list=`), ignorada según S4.

## Qué cubre

Cómo usar cualquier salida de un circuito (p. ej. el pulso de una salida del 555/4017 que solo encendía un LED) para conmutar cargas mucho mayores — decenas o cientos de LEDs, motores, zumbadores o relés — mediante un transistor como amplificador de corriente.

## Contenido técnico

- **Etapa básica**: la salida del circuito pasa por una resistencia de **1 kΩ** a la base de un **2N2222A** (NPN); emisor a tierra; el colector conmuta la carga a los **12 V**. El transistor amplifica la pequeña corriente de la salida (hasta 800 mA).
- **Series de LEDs**: cada serie = **5 LEDs en serie + 100 Ω** desde el positivo hasta el colector (una resistencia por serie, ~20 mA por serie). Con el presupuesto de corriente del transistor se pueden repetir tantas series como se quiera — 40, 50, 100 LEDs.
- **Motor**: misma etapa, motor entre +12 V y colector, con **diodo de protección 1N4004** (carga inductiva/bobina).
- **Relé**: relé entre +12 V y colector con diodo de protección; por sus contactos se conmuta un bombillo de 110/220 V, un motor grande, un cilindro neumático, etc.
- **Cascada**: la salida del último LED de una serie puede a su vez atacar (vía 1 kΩ) otra etapa idéntica.
- **Extensión al 4017**: repitiendo la etapa en las 10 salidas del 4017 y organizando los LEDs, la secuencia se extiende a más de 100 LEDs.
- **Variante para circuitos sin pulso claro** (detector de tacto): desconectar el punto de tierra del emisor del último transistor y usar ese emisor como salida hacia la etapa amplificadora — la mayoría de circuitos terminan igual y aceptan esta variante.

## Cruces

- Mismo canal: [[resumen-FAV-398-cubo-led-conexion-pic-profe-garcia|cubo LED al PIC]] (FAV-398), [[resumen-FAV-402-cubo-led-3x3x3-muy-facil|cubo 3×3×3]] (FAV-402) — transistor como conmutador de cargas.
- Transistores: [[transistor-bjt]].

- **Consolidación (2026-11-15): fuente de la entidad [[el-profe-garcia]].

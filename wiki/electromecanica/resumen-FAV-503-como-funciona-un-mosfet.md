# Resumen: Cómo Funciona un MOSFET

- **Fuente**: `raw/electromecanica/2026-11-15-como-funciona-un-mosfet.md` ([YouTube](https://www.youtube.com/watch?v=4Dnx5YR9k-8), FAV-503, carpeta Electromecanica/Electronica; `&t=569s` ignorado por S4)
- **Canal**: Engineering Mindset (Mentalidad De Ingeniería)
- **Publicado**: 2024-10-06 · **Duración**: 18:49 · **Recopilado**: 2026-11-15

## Qué cubre

Guía completa del **MOSFET** — quinto de la serie de componentes del canal en el dominio (diodo FAV-499 → capacitor FAV-500 → inductor FAV-501 → BJT FAV-502 → MOSFET este). Complementa al BJT de [[resumen-FAV-502-transistor-explicado]] y a [[transistor-bjt]] (electronica-practica).

## Ideas clave

- **Terminales**: **puerta (gate), drenador (drain) y fuente (source)** — orden variable, siempre verificar hoja de datos por el número de parte.
- **Analogía**: disco con resorte (normalmente cerrado) accionado por la presión de una tubería lateral — cierta presión mínima abre el paso; sin presión, cierra.
- **Usos**: interruptor/automatización (con sensor o controlador en la puerta), **atenuación** variando el voltaje de puerta, control de relés (→ carga CA), inversión y velocidad de motores DC, y conmutación rápida por **PWM** (brillo LED). Para cargas de alta corriente: **disipador de calor**.
- **MOSFET vs BJT**: el BJT exige **corriente** de base (desperdicio); el MOSFET solo **voltaje** (prácticamente sin corriente de puerta) → más eficiente y más corriente soportada.
- **Práctica crítica**: la puerta **actúa como capacitor** — al quitarle el voltaje conserva carga y el MOSFET queda encendido; hay que darle camino a tierra. Dos **resistencias**: una **de puerta en serie** (limita el pico de corriente de carga que podría dañar un Arduino) y otra **de descarga de alto valor** a tierra (del lado de la fuente de control, no entre puerta y tierra en serie — sería divisor de voltaje). Circuito demostrativo con potenciómetro para dimming.
- **Tipos**: **enriquecimiento** (normalmente apagado; línea discontinua en el símbolo) vs **empobrecimiento** (normalmente encendido; línea continua); cada uno en **canal N o P** (flecha del símbolo). Canal N enriquecido: puerta positiva respecto de la fuente enciende; canal P: puerta negativa respecto de la fuente.
- **Física interna** (retoma dopaje/union de FAV-499/502): sustrato P con dos islas N+ (canal N); **metal-óxido-semiconductor**: la puerta es una placa metálica sobre dióxido de silicio aislante — funciona como capacitor que atrae electrones formando un **canal N** entre drenador y fuente. **Voltaje umbral** = el que forma el canal completo; luego **región óhmica** (corriente sube lineal) → **punto de bloqueo** → **región de saturación** (para más corriente, subir la puerta, no la fuente). El empobrecimiento lleva una capa N física precosnstruida que el voltaje de puerta estrecha o ensancha. Variantes canal P: análogo con huecos.

## Notas

- ASR con garbiñeos («peña corriente», «orificio pasante» por through-hole); normalizado solo aquí.
- Contenido con autopromoción (tazas, tutoriales enlazados) — excluido de la síntesis.
- Canal Engineering Mindset **7ª fuente de la ventana** (490/498/499/500/501/502/503) — entidad candidata firme; serie de 5 componentes completa → página de concepto serie al cierre.

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[serie-componentes-basicos]], [[detectores-de-metales]], [[reguladores-carga-solar]], entidad [[mentalidad-de-ingenieria]].

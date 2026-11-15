# Resumen: Regulador de voltaje casero para equipo solar (JCA Ecosistemas)

- **Fuente**: `raw/electromecanica/2026-11-15-regulador-voltaje-casero-solar.md` ([YouTube](https://www.youtube.com/watch?v=m7oZseAx6r8), FAV-533, carpeta Electromecanica/Energias Renovables)
- **Canal**: JCA Ecosistemas
- **Publicado**: 2024-05-19 · **Duración**: 19:45 · **Recopilado**: 2026-11-15

## Qué cubre

Circuito didáctico de **regulador de corte simple** (on/off) para panel solar, explicado paso a paso con dibujos — la alternativa «del otro extremo» al PWM/MPPT comercial. Subtítulos manuales (calidad buena).

## Ideas clave

- **Idea central**: en lugar de modular (PWM/MPPT), el circuito simplemente **corta la carga** cuando la batería llega al voltaje objetivo — barato, sin microcontroladores.
- **Repaso de los comerciales**: PWM = onda cuadrada cuyo **ancho de pulso** define la energía entregada; MPPT = búsqueda del punto máximo entre voltaje y corriente (coincide con [[resumen-FAV-525-mppt-que-es-como-funciona]] y [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]]).
- **Precondición**: el panel «12 V» en realidad entrega **19-20 V en circuito abierto** — debe superar siempre al voltaje de la batería (analogía del agua que baja).
- **Circuito**: **relé invertor** (contacto normalmente cerrado alimenta la batería desde el panel; la caída por la carga equilibra a ~12 V) + **diodo zener** (ej. 11 V) en serie con **preset 1 kΩ** como divisor ajustable + **transistor** como llave que excita la bobina del relé + **LED** indicador de batería cargada. Al superar el umbral: zener conduce → transistor satura → relé conmuta → panel queda desconectado. Al anochecer el zener deja de conducir y el sistema se rearma solo.
- **Versión ultra-simple** (sin transistor): zener de 1 W directo al relé — funciona pero es **poco sensible y difícil de calibrar** (sin amplificación).
- **Detalles didácticos**: lectura del código de colores de resistencias (1 kΩ), polaridad del zener (banda = cátodo), **diodo volante/flyback** en paralelo con la bobina (absorbe el pico de apertura — «la bobina es como un resorte»), adaptación a 24 V (zener 24 V o dos de 12 en serie).

## Cruces

- Clúster renovables: contrapunto casero de los reguladores comerciales de [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]] y [[resumen-FAV-525-mppt-que-es-como-funciona]] (mismos conceptos PWM/MPPT explicados con otros ojos); la protección de la batería repite la del kit de [[resumen-FAV-534-kit-solar-cortes-luz]].
- Bases: [[resumen-FAV-499-diodos-explicados]] (zener, flyback), [[resumen-FAV-502-transistor-explicado]] (llave), [[resumen-FAV-501-inductores-explicados]] (bobina del relé).

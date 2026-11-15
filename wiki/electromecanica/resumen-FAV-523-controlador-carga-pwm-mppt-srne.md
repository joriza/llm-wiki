# Resumen: Controlador de carga solar PWM vs MPPT + inversor SRNE (El Angelito)

- **Fuente**: `raw/electromecanica/2026-11-15-controlador-carga-pwm-mppt-srne.md` ([YouTube](https://www.youtube.com/watch?v=TNuNPWx3n9U), FAV-523, carpeta Electromecanica/Energias Renovables)
- **Canal**: EL ANGELITO
- **Publicado**: 2024-06-21 · **Duración**: 23:30 · **Recopilado**: 2026-11-15

## Qué cubre

Revisión práctica (con sesgo de marca evidente: video apoyado por SRNE) de un **controlador de carga MPPT con Bluetooth** y un **inversor 12 V→220 V 2000 W** de la misma marca: diferencias PWM/MPPT, conexionado, configuración y prueba extrema con soldadora. Cuarta fuente del clúster Energías Renovables.

## Ideas clave

- **PWM vs MPPT**: PWM = modulación de ancho de pulsos, «recorta» la onda tipo on-off; simple y barato pero **desperdicia potencia del panel — 60-90%** de efectividad. MPPT = búsqueda del punto de máxima potencia, **~99%**; el PWM grande era de 60 A, el MPPT de 10 A (para pocos paneles/batería individual).
- **Regla de conexión**: **primero el controlador a la batería**, después el panel — al conectarse detecta automáticamente 12/24 V.
- **Funciones del controlador SRNE**: salida de carga 12 V/20 A, **sensor de temperatura** para el banco de baterías, puertos TTL y RS485, **Bluetooth con app** (monitoreo en tiempo real e histórico); configuración por tipo de batería (plomo ácido sellada de fábrica, litio u otra con parámetros de corte).
- **Prioridad inteligente de flujo**: con sol, la carga va directo del panel a la carga y sobrante a la batería; al nublarse pasa automáticamente a batería sin interrumpir la luz. Si la batería está llena, **regula el amperaje** que admite del panel.
- **Inversor 2000 W continuos / 4000 W pico** (picos de arranque de motores): bornera gruesa (a 2000 W de salida consumes **~170-180 A de la batería de 12 V** — cable 16-35 mm² mínimo); 2 USB 5 V/2 A, RS485+TTL, modo económico (intermitente al bajar la tensión), reset por sobrecarga.
- **Interior**: disipadores grandes, todo pegado contra vibraciones, toroides — calidad de construcción apreciable.
- **Prueba extrema**: soldadora de 150 A conectada a **una sola batería de 12 V** — el inversor **aguantó**; lo que cayó fue la batería (alarma <10,8 V). Conclusión: el límite real de estos sistemas casi siempre es la batería, no el electrónico.

## Cruces

- Clúster Energías Renovables: desarrolla el «controlador de carga» de [[resumen-FAV-521-paneles-solares-explicados]] (PWM vs MPPT) y la función inversora de [[resumen-FAV-524-inversores-solares-tipos]]; la corazonada comercial conecta con [[resumen-FAV-522-fraude-paneles-solares]].
- Nota de marco: video con apoyo de marca (SRNE) — las cifras de eficiencia y la recomendación favorecen al patrocinador.
- Bases: [[resumen-FAV-503-como-funciona-un-mosfet]] (conmutación del inversor), [[resumen-FAV-500-capacitores-explicados]].

# Resumen: MPPT — qué es y cómo funciona (ELECTRONOOBS)

- **Fuente**: `raw/electromecanica/2026-11-15-mppt-que-es-como-funciona.md` ([YouTube](https://www.youtube.com/watch?v=0Z52-wReNfY), FAV-525, carpeta Electromecanica/Energias Renovables)
- **Canal**: ELECTRONOOBS en Español
- **Publicado**: 2024-03-31 · **Duración**: 25:13 · **Recopilado**: 2026-11-15

## Qué cubre

Explicación técnica (nivel electrónico, con demo en fuente de laboratorio y roadmap de su propio controlador DIY) del **algoritmo MPPT** — la explicación de «por dentro» que complementa la visión de producto de [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]].

## Ideas clave

- **Fuente variable vs fija**: MPPT solo tiene sentido con fuentes cuya salida varía (panel solar, turbina eólica, generador con RPM inestables) — con una fuente de laboratorio regulada no hace falta.
- **El problema central**: subir la corriente demandada **hunde el voltaje** de la fuente (demostrado: límite 1 A → el voltaje cae de 5 V a 4 V y la potencia baja de 4,5 W a 4 W). P = V×I tiene un **punto de máxima potencia** en la curva I-V; el MPPT lo busca por prueba y error (un «PID solo proporcional»): incrementa corriente mientras la potencia sube, retrocede cuando baja.
- **No siempre trabaja en MPPT**: batería muy descargada → fase de **rampa PWM** con poca corriente hasta igualar voltajes; solo cuando la batería alcanza el voltaje nominal entra en búsqueda del máximo. Además, **el voltaje del panel debe superar al de la batería** para cargar (diodo anti-retorno).
- **PWM vs MPPT en números**: el MPPT es **20-30% más eficiente** que el PWM; el híbrido PWM-rampa→MPPT es lo ideal; solo PWM es lo peor.
- **Roadmap DIY v2** (prototipo propio): ESP32 con Wi-Fi para telemetría; **dos sensores de corriente** (entrada/salida) para medir la eficiencia real del circuito; cambio de efecto Hall ACS712 (ruidoso con la conmutación del buck) a **resistencias shunt con amplificador (INA2xx)**; de MOSFET IRFZ44N (55 V) a **IGBT** (~600 W) y entrada hasta **100 V+**.
- **Regla de oro del voltaje alto**: subir la tensión del sistema (12→24→48 V) baja la corriente → **cables más finos, más baratos y seguros** (anécdota: Tesla a 48 V de arquitectura interna y volante by-wire con motor dual por redundancia).

## Cruces

- Clúster renovables: fundamenta el PWM/MPPT de [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]] y el MPPT interno de inversores de [[resumen-FAV-526-mppt-inversores-maxima-extraccion]]; la misma regla serie=+V en [[resumen-FAV-529-serie-o-paralelo-paneles-solares]].
- Canal ELECTRONOOBS: 2ª fuente (FAV-372 NRF24 en electronica-practica + esta) → entidad candidata.
- Bases: [[resumen-FAV-503-como-funciona-un-mosfet]]/IGBT, [[resumen-FAV-500-capacitores-explicados]], curva I-V de [[resumen-FAV-521-paneles-solares-explicados]].

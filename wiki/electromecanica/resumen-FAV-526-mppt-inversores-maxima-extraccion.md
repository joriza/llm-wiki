# Resumen: El MPPT de los inversores — extraer el máximo (CIAE)

- **Fuente**: `raw/electromecanica/2026-11-15-mppt-inversores-maxima-extraccion.md` ([YouTube](https://www.youtube.com/watch?v=S3F_7JHVOx0), FAV-526, carpeta Electromecanica/Energias Renovables)
- **Canal**: CIAE
- **Publicado**: 2022-01-31 · **Duración**: 17:11 · **Recopilado**: 2026-11-15

## Qué cubre

El MPPT desde el lado de los **inversores interconectados** (no controladores de carga): arquitectura interna DC-DC + DC-AC, voltaje de bus DC, multi-MPPT y sus trampas. Tercera fuente del clúster Energías Renovables.

## Ideas clave

- **Por qué varía el punto máximo**: el voltaje del módulo depende de **temperatura, número de celdas y radiación** — todo cambia durante el día, así que el inversor busca el máximo constantemente (los «picos» en las gráficas de monitoreo son sus búsquedas).
- **Algoritmo**: arranca en voltaje de circuito abierto y **quita volt de a uno**: si la potencia sube sigue, si baja retrocede — mismo bucle de búsqueda que [[resumen-FAV-525-mppt-que-es-como-funciona]].
- **Arquitectura interna del inversor interconectado**: MPPT = convertidor DC-DC que eleva a un **bus DC fijo**; la etapa DC-AC (IGBT) necesita ese bus **por encima del pico de red**: V_bus ≈ V_rms×√2 + ~30 V (220 V → ~311 V pico → bus ~350 V). Analogía del fumigante: para inyectar en la red hay que «empujar» con más presión.
- **Multi-MPPT**: un inversor con 3 MPPT tiene 3 convertidores independientes — cadenas con distinta orientación, inclinación o incluso tipo de celda pueden coexistir. Regla de diseño: **misma orientación/inclinación/voltaje por MPPT**.
- **Trampa de sombra**: una sombra crea **máximos locales falsos** en la curva — un MPPT básico puede quedarse en un máximo escondido; hay inversores «multi-pico» (ABB/Fronius/Emea) que los encuentran. «No sustituye un buen diseño sin sombras».
- **Efecto colateral poco conocido**: al inyectar, los inversores **suben el voltaje de la red local** — instalar 3×10 kW en vez de 1×30 kW puede elevar el voltaje de la instalación sin que el instalador sepa por qué.
- **Dimensionamiento de parques**: sobre-dimensionar la entrada DC ~150% es válido porque los módulos uniformes se comportan igual y nunca todos a pleno; en techos heterogéneos conviene separar por MPPT.

## Cruces

- Clúster renovables: el MPPT «de producto» visto por dentro, junto a [[resumen-FAV-525-mppt-que-es-como-funciona]] (algoritmo DIY) y [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]] (controlador de carga); el multi-MPPT justifica las decisiones serie/paralelo de [[resumen-FAV-529-serie-o-paralelo-paneles-solares]]; la arquitectura DC-AC completa en [[resumen-FAV-524-inversores-solares-tipos]].
- Canal CIAE: 1ª fuente del canal (FAV-526/527/528 de la misma ventana → **entidad candidata firme, 3 fuentes**).
- Bases: [[resumen-FAV-503-como-funciona-un-mosfet]] (IGBT), [[resumen-FAV-498-factor-de-potencia]] (RMS), [[resumen-FAV-499-diodos-explicados]].

## Consolidación (2026-11-15)

- Cableado a páginas de concepto/entidad creadas en la consolidación de la ventana: [[energias-renovables]], [[reguladores-carga-solar]], entidad [[ciae]].

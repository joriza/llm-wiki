# Serie de componentes básicos: diodo, capacitor, inductor, BJT, MOSFET

**Concepto** consolidado con **5 fuentes** contadas (FAV-499..503), todas del mismo canal ([[mentalidad-de-ingenieria]]) — la serie de monografías de componentes que funda el dominio.

## La serie

1. **Diodo** [[resumen-FAV-499-diodos-explicados]]: unión P-N, 0,7 V, curva V-I, rectificación (media onda → puente → alisado), zener, prueba con multímetro.
2. **Capacitor** [[resumen-FAV-500-capacitores-explicados]]: placas+dieléctrico, tanque de agua, µF/V, alisado y corrección reactiva, seguridad de descarga.
3. **Inductor** [[resumen-FAV-501-inductores-explicados]]: energía en campo magnético, FEM contra el cambio, rueda de agua, boost/filtros/transformadores.
4. **BJT** [[resumen-FAV-502-transistor-explicado]]: interruptor y amplificador, β, NPN vs PNP.
5. **MOSFET** [[resumen-FAV-503-como-funciona-un-mosfet]]: puerta sin corriente, enriquecimiento/empobrecimiento × canal N/P, regiones óhmica y saturación.

## Para qué sirve el concepto

Casi todo el resto de la carpeta **aplica** estos cinco: la fuente capacitiva usa capacitor+diodos ([[fuente-sin-transformador]]), el cargador desde ATX usa capacitores y conmutación ([[resumen-FAV-505-cargador-baterias-fuente-pc]]), el controlador MPPT conmuta con MOSFET/IGBT ([[reguladores-carga-solar]]), el LC del detector VLF ([[detectores-de-metales]]) es exactamente el par capacitor+inductor, y la identificación NPN/PNP con multímetro ([[resumen-FAV-543-identificar-transistor-npn-pnp]]) es la práctica del diodo interno del BJT.

## Puente con electronica-practica

Las páginas de concepto del dominio vecino profundizan los mismos componentes con fuentes distintas: [[transistor-bjt]] (física interna + receta NPN/PNP, FAV-005/006), [[condensador-rc]] (curvas RC y τ = R·C, FAV-007), [[diodo-zener]] (referencia de tensión, FAV-306). **No se duplica contenido**: esta página es el índice de la serie de electromecanica; las de electronica-practica siguen siendo las monografías de esos subtemas.

## Cruces

- [[resumen-FAV-548-kirchhoff-resistencias-equivalentes]] (la teoría de circuitos sobre la que se montan), [[resumen-FAV-498-factor-de-potencia]] (R-L-C juntos).

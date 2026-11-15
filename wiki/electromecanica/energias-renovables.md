# Energías renovables (clúster electromecanica)

**Concepto-hub** de la carpeta Electromecanica/Energias Renovables. 16 fuentes contadas por grep sobre `wiki/electromecanica/` (FAV-520..534 + FAV-549).

## Voces del clúster

- **Teoría de la conversión**: turbinas eólicas [[resumen-FAV-520-turbinas-eolicas-secretos]] (pitch, DFIG) y paneles solares [[resumen-FAV-521-paneles-solares-explicados]] (fotón→red, tipos de celda); techo del silicio en [[resumen-FAV-530-verdadero-problema-paneles-solares]] y comparativa de celdas en [[resumen-FAV-527-mono-vs-policristalino]].
- **Regulación y conversión**: PWM vs MPPT — [[resumen-FAV-523-controlador-carga-pwm-mppt-srne]], [[resumen-FAV-525-mppt-que-es-como-funciona]], [[resumen-FAV-526-mppt-inversores-maxima-extraccion]], [[resumen-FAV-535-pwm-vs-mppt-profe-chris]] (→ [[reguladores-carga-solar]]); inversores y arquitectura de sistema en [[resumen-FAV-524-inversores-solares-tipos]]; regulador casero de corte en [[resumen-FAV-533-regulador-voltaje-casero-solar]].
- **Conexión y seguridad**: serie/paralelo [[resumen-FAV-529-serie-o-paralelo-paneles-solares]], tierra física [[resumen-FAV-528-tierra-electrica-instalaciones-solares]].
- **Almacenamiento**: baterías vs volante de inercia — [[resumen-FAV-531-volante-inercia-almacenamiento]].
- **Crítica y economía**: rentabilidad real del autoconsumo [[resumen-FAV-522-fraude-paneles-solares]], espejismo verde de los EV [[resumen-FAV-532-espejismo-verde-autos-electricos]].
- **Cierre práctico**: kit solar de emergencia [[resumen-FAV-534-kit-solar-cortes-luz]] y aerogenerador de chatarra [[resumen-FAV-549-generador-eolico-casero-ventilador]].

## Ideas transversales

- **Cadena completa**: captación (eólica/fotovoltaica) → regulación (MPPT) → conversión (inversor) → almacenamiento (batería/volante) → consumo; cada eslabón tiene su monografía en la carpeta.
- **El eslabón débil es la batería**: coincide la crítica económica (FAV-522), el volante de inercia (FAV-531) y la prueba límite del inversor (FAV-523).
- **Todo marco comercial se declara**: FAV-522 (vendedor de baterías), FAV-523 (SRNE), FAV-524 (AutoSolar), FAV-531 (tesis editorial).

## Cruces

- Dominio vecino: [[condensador-rc]], [[diodo-zener]], [[transistor-bjt]] (bases de la electrónica de los reguladores), fuente de PC [[resumen-FAV-505-cargador-baterias-fuente-pc]] como contraste de alta corriente.

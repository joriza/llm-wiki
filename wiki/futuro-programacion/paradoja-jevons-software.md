# Paradoja de Jevons aplicada al software y la IA

- **Tipo**: página de concepto.
- **Dominio**: `futuro-programacion/` (economía del oficio y del cómputo).
- **Creada**: 2026-11-17 (consolidación T6, tramo 98 — umbral ≥2: 2 fuentes).
- **Fuentes**: [[resumen-WL602-mercado-programacion-yari-taft]] (WL-602, tramo 98 — aplicación al mercado laboral dev) · [[resumen-WL552-zuchovicki-promedios-jevons-ia]] (WL-552, economia-argentina/ — aplicación a la economía del cómputo/IA).
- **Ver también**: [[routing-por-coste]] · [[inferencia-local]] · [[brecha-junior-ia]] · [[agentes-de-codigo]].

## La paradoja original

William Stanley Jevons (1865): cuando las máquinas de vapor se volvieron mucho más eficientes en carbón, el consumo total de carbón **subió** — la eficiencia abarató el uso, más actores pudieron permitírselo y el consumo agregado creció más de lo que la eficiencia ahorró. Patrón general: **eficiencia en un recurso → mayor uso total del recurso** (el ahorro individual no implica ahorro sistémico).

## Aplicación 1 — mercado laboral dev (WL-602, Yari Taft)

Equipos de 5-10 pasan a 2 programadores con IA (eficiencia), pero miles de pymes que nunca pudieron pagar software a medida ahora sí (democratización): equipos más chicos, pero **más proyectos de software que nunca en la historia**. Precedente citado: C→Python amplió en vez de reducir la demanda (abstracción nueva → más programadores, no menos). El límite que impide que la eficiencia mate el oficio: MVP ≠ ingeniería — atributos de calidad, arquitectura y operación a escala siguen requiriendo criterio humano (ver [[brecha-junior-ia]]). Contrapeso comercial señalado en la fuente (canal de mentoría LatAm→EE. UU.).

## Aplicación 2 — economía del cómputo IA (WL-552, Zuchovicki)

El costo por token se desploma mientras el alquiler de GPU sube (desde julio, Citadel citado verbalmente): **el token vale menos pero se consumen tantos que el «fierro» no para de crecer**. Cadena de eslabones (programador→Cursor→Anthropic→Amazon) donde solo la escasez tiene poder de precio: los modelos se abaratan por competencia, las apps trasladan la baja al usuario, pero TSMC/Nvidia/memoria (Micron) capturan el ahorro. «La inteligencia no es la escasez; donde corre, sí» — datos de 2.ª mano sin enlace, señalados. Cruce directo con el shock de DRAM 2025-26 (WL-615, tramo 98: HBM como la «bandeja de horno» que la IA se come).

## Síntesis transversal

Las dos aplicaciones dicen lo mismo desde lados opuestos de la cadena: **la eficiencia de la IA no reduce el consumo de programadores ni de cómputo — lo amplía**, y el ahorro unitario se captura aguas abajo (más proyectos, más tokens, más silicio). Para el oficio: la demanda de trabajo se mueve hacia lo que la eficiencia no abarata (criterio, arquitectura, atributos de calidad). Para el usuario de IA local: lo que se abarata por token se paga en infraestructura (RAM/GPU) — ver [[inferencia-local]].

## Actualización 2026-11-18 (consolidación T15, tramo 100 — +3 fuentes)

- **El conocimiento público mueve el precio** (WL-640, [[codesimple]]): la P100 de $78 triplicó su precio en 9 semanas cuando el truco se hizo público — «quien cobra el conocimiento no es el programador, es quien vende la tarjeta»: el ahorro de la eficiencia (software gratis) lo captura el dueño del recurso escaso. La variante de captura de WL-552 aplicada al hardware de segunda mano.
- **La vuelta a la renta** (WL-644, [[puchito-cine]]): el tecnofeudalismo como economía de la renta sobre la tierra digital — el contrapeso institucional del concepto: la eficiencia no siempre democratiza; cuando el acceso es alquilado, el ahorro se convierte en cuota.
- **Jevons cognitivo** (WL-651, Bilinkis): alumnos con IA libre resolvieron más ejercicios y aprendieron 17 % menos sin IA — «pensar se está volviendo optativo»: la eficiencia cognitiva (respuestas instantáneas) amplía el consumo de respuestas y reduce el aprendizaje; la «dificultad elegida» como lo no automatizable.
- **«Abundancia sin concentración»** (WL-655, [[resumen-WL655-organizing-intelligence-deepmind-agentes-iabro]], 2026-11-20 — consolidación T17): en el escenario de IA supercompetente sin coordinación, la eficiencia genera empresas más productivas pero más pequeñas — la caída de coste no concentra demanda por sí sola; es la **coordinación** la que desplaza el techo de Coase y mueve la curva. Complementa la variante de captura del conocimiento: el ahorro de eficiencia no lo captura quien lo inventa.

Ver también [[educacion-evidencia-vs-institucion]] (WL-650/651/652).

## Fuentes de este concepto

- [[resumen-WL602-mercado-programacion-yari-taft]] (WL-602, tramo 98) · [[resumen-WL552-zuchovicki-promedios-jevons-ia]] (WL-552, economia-argentina/).

**Actualización 2026-11-20 (consolidación T19, tramo 102 — +6 fuentes)**:
- **Napster como Jevons avant la lettre** (WL-662, [[resumen-WL662-napster-shawn-fanning-industria-musical]], historia-informatica/): ganaron cada batalla legal y perdieron la guerra — suprimir un canal de eficiencia no suprime la demanda que este reveló; la canción como archivo anticipó el streaming.
- **IA y demanda de energía** (WL-679, [[resumen-WL679-perovskita-canada-paneles-solares-ingenio-boreal]], general/): la perovskita en tándem como forma de seguir bajando el coste de la eficiencia solar — el consumo no baja: se amplía (correlato físico de la paradoja).
- **Productividad → redistribución** (WL-676, [[resumen-WL676-renta-basica-universal-ia-roberto-augusto]], futuro-programacion/): la RBU propuesta como el mecanismo por el que la abundancia de productividad IA se transforma en demanda — la inevitabilidad afirmada retóricamente, sin aritmética de quién paga.
- **Abundancia cognitiva en la organización** (WL-692, [[resumen-WL692-zuchovicki-charla-directorio-fijap-liberal]], economia-argentina/): la IA como cuarta revolución donde el ganador es el recurso escaso complementario (energía + minería) — variante de captura de WL-552 aplicada al marketing geoeconómico.
- **El equipo como recurso no elástico** (WL-694, [[resumen-WL694-metodologias-equipos-programacion-donweb-dalto]], agentes-de-codigo/): más ceremonias (eficiencia de proceso) no producen más software si el entendimiento no escala — la eficiencia sin la capacidad que la usa.
- **Carrera individual** (WL-683, [[resumen-WL683-dejo-aws-marcia-cloud-carrera]], futuro-programacion/): en el mercado Jevons, el activo que se revaloriza es la visibilidad propia (contenido > CV) — «vos no sos AWS».

# Transistor BJT (física, conexión NPN/PNP y usos)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — umbral registrado en la ventana `Gral/Electronica Basica/`).
- **Fuentes**: [[resumen-FAV-005-como-funciona-un-transistor-del0al1]] (Del 0 al 1 — física interna y primer montaje) y [[resumen-FAV-006-transistor-npn-vs-pnp-makordoba]] (El Aula Virtual de makordoba — receta de conexión NPN vs PNP).
- **Ver también**: [[ldr-fotorresistencia]] (la aplicación: sensor → divisor → base) · [[como-se-hace-lo-cotidiano]] · cruce [[resumen-FAV-314-amplificador-audio-casero-ideatronic]] (el LM386 integra etapas de este tipo).

## El concepto

Dos voces complementarias sobre el **BJT**: la física interna (FAV-005) y la receta de conexión sin equivocarse (FAV-006).

- **Por dentro** (FAV-005): silicio dopado (fósforo → N, boro → P), unión PN y zona de agotamiento (0,6–0,7 V directa en silicio); el BJT NPN con emisor N+ denso, base P **muy delgada** y colector N — la corriente pequeña de base gobierna la corriente emisor→colector (ganancia = amplificación; dos estados = interruptor).
- **Cómo conectarlo** (FAV-006): todo transistor montado forma un **lazo de control** (base-emisor por el «diodo emisor» de la flecha del símbolo, siempre en directa, con su R limitadora) y un **lazo de potencia** (emisor-colector con la carga). Regla de decisión: la **polaridad disponible para gobernar la base** dicta el tipo — polo positivo → NPN, polo negativo → PNP; el colector va al polo opuesto al emisor y la corriente de colector convencional sigue la flecha.
- **Montajes del dominio**: el detector de luz de FAV-003 es el caso de libro (2N2222A NPN como interruptor de un LED gobernado por un divisor con LDR); el pull-down de 10 KΩ en la base (FAV-005) asegura 0 V con el control abierto.

## Notas de verificación y confianza

- Los dos videos omiten el **cálculo de las resistencias** de base y colector (solo su función limitadora) — reproducir los valores tal cual funciona, diseñar requiere el análisis de mallas de [[resumen-FAV-002-analisis-de-mallas-con-kirchhoff-y-ohm]].
- «1 THz» de FAV-005 es un transistor de investigación, no del 2N2222A (~100–300 MHz) — no atribuirlo al componente del montaje.
- FAV-006 usa consistentemente «corriente convencional»: no mezclar con el sentido físico de los electrones de FAV-005.

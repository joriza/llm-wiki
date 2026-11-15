# Condensador y circuitos RC

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — tema registrado desde la ingesta de FAV-007 y elevado por las fuentes de fuentes conmutadas).
- **Fuentes**: [[resumen-FAV-007-condensador-luis-carlos-galan]] (Luis Carlos Galán — **fuente principal**: construcción, tipos, curvas RC medidas) y apoyo en [[resumen-FAV-008-foco-led-fuente-conmutada-jwb1981-electrotube]], [[resumen-FAV-009-foco-led-fuente-conmutada-bp2861-electrotube]] y [[resumen-FAV-010-leds-220v-sin-transformador-electgpl]] (el condensador en uso real: filtro de 400 V, descarga con 1 MΩ, reactancia limitadora, filtro 1 µF/A). Cruce: [[resumen-FAV-314-amplificador-audio-casero-ideatronic]] (condensador de acoplo de salida).
- **Ver también**: [[fuente-conmutada-led]] · [[como-se-hace-lo-cotidiano]].

## El concepto

El **condensador** (dos láminas + dieléctrico; antecedente: botella de Leyden; faradio y derivadas) y su comportamiento dinámico: la carga/descarga RC es **exponencial, no lineal**, con constante de tiempo **τ = R·C** — con R variable se ve el espectro completo en el osciloscopio (sigue la onda cuadrada ↔ pendientes suaves ↔ oscilación entre valores intermedios si la frecuencia no da tiempo).

En las fuentes reales del dominio, la misma física aparece como:

- **Filtro de 400 V** después del puente rectificador (FAV-008/009) y **filtro de salida** (regla 1 µF/A a 50 Hz en FAV-010).
- **Limitador por reactancia** sin disipar potencia (Xc = 1/ωC; corriente adelantada 90° — FAV-010, la base de la fuente capacitiva).
- **Descarga segura**: R de 1 MΩ en paralelo (FAV-008) y el aviso transversal del dominio — **los condensadores grandes almacenan energía letal incluso desconectados** (FAV-007: descarga con chispa; FAV-316: descargar el filtro de ~300 V con una bombilla antes de tocar).
- **Acoplo**: condensador de 100 µF que separa la componente continua en la salida del amplificador (FAV-314).

## Notas de verificación y confianza

- FAV-007: subtítulos automáticos muy degradados en la terminología («faradio», «dieléctrico» sistemáticos); el video muestra τ = R·C sin derivar la exponencial.
- Las marcas de capacidad miden menos que lo nominal (470 µF → 458 µF reales): desviación normal, no falla.
- En FAV-307 el condensador de salida debe cambiarse a un voltaje **≥30 % mayor** que la nueva salida — si no, «explota» (ver [[diodo-zener]]).

# Batería de arena: almacenamiento térmico casero con masa de arena

- **Tipo**: página de concepto.
- **Dominio**: `casa-calefaccion/`.
- **Actualizado**: 2026-11-11 (consolidación del lote casa-calefaccion).
- **Fuentes**: [[resumen-esta-bateria-de-arena-de-15-calienta-cualquier-cabana-todo-el-invierno-con-solo-]] (tesis del concepto, escala cabaña) · [[resumen-why-didnt-we-think-of-this-sooner-diy-sand-heater]] (emergencia con vela) · [[resumen-how-to-create-a-solar-sand-battery-heater-free-heat-this-winter]] (solar con medición rigurosa) · [[resumen-construyo-la-bateria-de-arena-de-finlandia-calefaccion-y-energia-gratis]] (réplica finlandesa con PTC) · [[resumen-heating-our-greenhouse-with-solar-and-sand-how-to-make-a-sand-battery]] (invernadero, tambor de 55 gal) · [[resumen-sand-battery-heaters-how-to-build-diy-solar-powered-heat-drums-batteries-element]] (canaletas, resultado parcialmente negativo).

## El principio físico

Dos propiedades de la arena seca sostienen el concepto. Primero, su **capacidad calorífica específica** es baja (0,84 kJ/(kg·°C) según la fuente 9), pero el argumento real es el segundo: su **conductividad térmica casi nula**, que la convierte en una «válvula térmica unidireccional» — absorbe calor rápido por cualquier vía (sol concentrado, elemento resistivo, llama sobre cobre) y lo libera solo lentamente o por una vía diseñada (intercambiador, serpentín, radiación). El autor de la fuente 9 cuantifica el potencial: un tambor de 55 galones con ~180 kg de arena llevado a 315-430 °C almacena ~40-50 kWh térmicos, suficientes para una cabaña aislada de ~37 m² durante 18-26 h.

## Arena vs agua: el argumento y su matiz

Tres fuentes (15, 16, 17) argumentan lo mismo: el agua tiene **mayor** calor específico (retenida por la fuente 17 explícitamente), pero **se frena a 100 °C** — hierve. La arena no se funde hasta varios miles de grados, así que el rango de temperatura útil (ΔT) es varias veces mayor: menos energía por kilo y por grado, pero muchos más grados aprovechables. La fuente 17 lo respalda con experimento fracasado propio: tambores de agua pintados de negro nunca alcanzaron temperatura útil (habrían hecho falta ~40 tambores para su invernadero). **Matiz crítico**: la fuente 16 afirma «la arena retiene el calor mucho mejor que el agua» sin dar números — esa formulación simple es incorrecta por kilo y por grado; lo correcto es el argumento del ΔT utilizable. A escala industrial real (Polar Night Energy, Finlandia — mencionada en las fuentes 9 y 16), el almacenaje en arena se valida precisamente porque la alta temperatura permite generar vapor/electricidad, no solo calor ambiente.

## Las dos familias de carga

**Combustión indirecta** (sin electricidad): la llama calienta una masa conductora que transfiere a la arena — serpentina de cobre sobre vela de manteca (fuente 14: el cobre se pone al rojo, el agua hierve al instante sobre él; el balde entero se vuelve un radiador de baja temperatura estable). Es la vía de emergencia: calor modesto pero sin infraestructura.

**Eléctrica desde solar** (la dominante en el lote): elementos resistivos enterrados directo en la arena. Tres variantes documentadas: **DC directo del panel** (fuentes 15 y 17 — «panel→arena directo funciona», sin batería ni controlador), **vía batería** (fuente 16, con sondas PTC de 12 V que se autoregulan — su resistencia sube con la temperatura y el consumo cae de 4,29 A a ~3 A —, en paralelo para repartir el pico de arranque), y **elementos de calefón de alta potencia** (15: dos de 10,8 Ω en serie, validados con ley de Ohm contra medidor; 5500 W nominales). El dimensionamiento elemento↔paneles es la clave de diseño declarada.

## Cómo extraer el calor

Tres mecanismos documentados, de menor a mayor ambición: **radiación pasiva** (el recipiente entero irradia: fuentes 14 y 15 — tras horas el sistema se estabiliza en temperatura y el balde/olla completo «es el calefactor»); **ventilador accionado por calor** (sin electricidad: celda Peltier/termistor con la base en la arena y el disipador al aire — la fuente 16 lo logró con arena a 95 °C; la 15 lo deja como siguiente iteración); **convección forzada** (fuente 17: tubo agujereado en el centro del tambor + ventilador de conducto para extraer aire caliente).

## Errores documentados y condiciones de éxito

El lote acumula una lista de fallos reales que acota el concepto: **sin carga diaria, la batería no existe** (fuente 18: tras semanas sin energía la arena volvió a temperatura ambiente — el almacenaje es de días como máximo sin aislamiento, no de meses); el intercambiador de aire mal diseñado rinde poco (fuente 18: la arena junto a sus canaletas llegó solo a 114 °F contra 340 °F junto a los elementos, y soplar aire la **enfrió** un par de grados); el contacto íntimo importa (compactar sin vacíos — fuente 14; retroceder el elemento de la pared — fuente 15); los plásticos cercanos a los elementos se derriten (fuentes 9 y 18); y la arena debe estar **seca** (fuentes 9, 16, 17). Las condiciones de éxito que emergen: aislamiento alrededor del almacén (implícito en todas, explícito en 16), dimensionar potencia solar dedicada, y decidir si el objetivo es calentar personas (escalas pequeña/mediana) o un espacio (requiere volumen y potencia mayores: ≥1000 L según la fuente 9; DC directo a elementos por cada tambor según la 17).

## Comparativa de los seis montajes

| Fuente | Escala / almacén | Carga | Extracción | Resultado medido |
| --- | --- | --- | --- | --- |
| 9 (Legado de Construcción N) | Cabaña, tambor ~180 kg | Sol concentrado (colector parabólico improvisado), 2 h | Radiación natural del recipiente | 40-50 kWh por carga; calor 18-26 h (relato editorial, parcialmente no verificado) |
| 14 (The DIY HVAC Guy) | Balde metálico + vela | Llama → serpentina de cobre | Radiación pasiva | ~182 °C en tapa inicial; luego estable y tibio por horas |
| 15 (Everyday Solar) | Olla de barro | 2 paneles 395 W → elementos de calefón (250 W) | Radiación + (próx.) ventilador térmico | 725 Wh almacenados; 218 °C a 10 cm; 3 h post-atardecer aún >74 °C |
| 16 (IngenieroPrepper) | Molde de bizcochos, escala de mesa | Batería 12 V → sondas PTC → placa de cobre | Ventilador Peltier (funciona a 95 °C) | ~80 °C a los 45 min; sala de 21 a 24 °C |
| 17 (Country Living Experience) | Tambor 55 gal, ~14 bolsas | DC directo de paneles (630 W primer día) | Tubo agujereado + ventilador de conducto | Arena a 89 °C el primer mediodía (pendiente seguimiento) |
| 18 (GuyCre8ive) | 2 tambores, ~270 kg c/u | ~560 W desde bus bars (14 AWG) | Canaletas de aluminio + soplador | Arena 200-340 °F junto a elementos pero canaletas solo 114 °F; soplar enfrió la salida — parcialmente negativo |

## Pendientes de verificación (heredadas de las fuentes)

La cifra de «40-50 kWh por tambor» de la fuente 9, el relato de la patente suprimida y el manual británico de 1947 (propio de esa fuente, marcado allí como no verificado), y los porcentajes de mejora de las fuentes 15 y 17 provienen de videos DIY sin revisión técnica; la física de base (calor específico, exotermia, emisividad del aluminio en el caso del calentador de bolsillo) sí está confirmada por textos estándar citados en las fuentes mismas.

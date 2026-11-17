# WL-615 — ¿Por Fin Es Barata La RAM?

- **Fuente original**: `raw/wl/tramo-98/2026-11-14-por-fin-es-barata-la-ram.md` ([Vídeo](https://www.youtube.com/watch?v=QhWqDcA8fn8))
- **Canal**: Jorge Marfil (1.ª fuente; respuesta al título: no — la RAM cuesta ~4× lo de hace un año)
- **Publicado**: 2026-11-14 · **Duración**: 31:20
- **Dominio**: hardware/economía de la memoria (candidato a ia-local/informatica en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Análisis económico completo del shock de precios de la DRAM (2025-2026), con la pregunta real de fondo: ¿comprar ya o esperar para IA local?

1. **La película completa**: COVID → sobreproducción → almacenes llenos → beneficio operativo de Samsung −95 % (1T 2023, peor trimestre en 14 años) → Samsung/SK Hynix/Micron (el oligopolio de casi toda la DRAM mundial) recortan producción. Los fabricantes, escarmentados, van con miedo a capacidad nueva (el propio Altman lo reconoce).
2. **La clave mecánica — «la bandeja de horno»**: las GPU de IA usan **HBM** (chips apilados junto a la GPU; el cuello de botella de la IA es mover datos memoria↔chip), que sale de **las mismas obleas** que la DRAM convencional y ocupa **~3× la superficie de oblea** por gigas (Micron en Hot Chips 2026). Ejemplo propio con números redondos (declarado inventado, didáctico): fábrica de 100 bandejas → 30 a HBM ⇒ los gigas totales equivalen a 80 bandejas aunque la fábrica trabaje a tope. La HBM se paga mucho mejor → el pan del barrio deja de hornearse. «No hace falta conspiración: el comprador más grande llegó con la cartera abierta y se puso primero en la cola».
3. **El apetito de la IA**: Nvidia Rubin Ultra (anunciado 16-3-2026, previsto 2027): 1 TB de HBM4E en un solo acelerador (= 64 portátiles de 16 GB); OpenAI firmó cartas de intención con Samsung/SK Hynix con objetivo de **900.000 obleas DRAM/mes** — ~40 % de la DRAM mundial según reportes (cifra que circula, no verificada en OpenAI — señalado por el autor).
4. **Los precios, escalón por escalón**: chip suelto spot (DRAM Exchange): DDR5 16 GB de 6,84 $ (20-9-2025) a 27,20 $ (1-12-2025) — ×4 en 10 semanas; contratos 1T 2026: +90-95 % trimestral; kit 64 GB DDR5-6000 (PC Part Picker): 200-250 $ (2025) → 500 (nov-25) → 750-800 (dic-25) → 1.000+ (inicio 2026) → 1.250+ (ago-26); Tom's Hardware (3-11-2026): mejor precio 989 $ vs. mínimo histórico 159 $ — «4 veces prácticamente clavado». Historias humanas de Reddit (el prudente que ahorraba y vio el kit de 280 pasar a 547 mientras ahorraba — «el que salió peor parado es el que esperó»).
5. **Micron mata Crucial** (3-12-2025): tras 29 años, sale del negocio de consumo para «clientes más grandes y estratégicos» — en idioma bandeja: esos módulos rentan más en un data center. «Cuando una marca de 29 años desaparece del estante, esto va más allá de un pico de semanas».
6. **Repercusión en equipos**: India (ene-jun 2026): smartphones +20 %, portátiles +15-25 % (IDC/Counterpoint/Cybermedia); la RAM ≈ 45 % del coste de fabricar un móvil; Lava sube precios «por la escasez de memoria».
7. **Chequeo de titulares**: Altman («tu RAM se usa un 5 % del tiempo; la máxima utilización está en la nube») — con razón parcial pero conflicto de interés evidente («el que se llevó media bandeja te explica que no necesitabas tu trozo»); Musk con meme equivalente — «en esta pelea ninguno de los dos está a dieta de memoria». «Escasez tocó techo» (Shuli Ren, Bloomberg): dejar de empeorar ≠ bajar — su propio informe prevé +10-15 % contrato en 4T 2026; «lo único que hay ahora es que sube más despacio».
8. **La demanda antimonopolio**: García Aguirre vs. Samsung/SK Hynix/Micron (25-6-2026, Distrito Norte de California, Sherman Act §1): alegan coordinación del giro a HBM como tapadera de recorte de suministro (la DRAM convencional DDR3/DDR4 +700 % en 4 años, **cifra de la parte demandante sin verificación judicial**; los tres = ~90 % del mercado). Antecedentes en ambas direcciones: 2005-06 — Hynix multa 185 M$, Samsung 300 M$ penales, tres directivos de Samsung a cárcel (8/7/7 meses); 2018 — demanda similar desestimada (2020) y confirmada por el 9º Circuito (2022): «comportamiento legal de libre mercado, sin coreografía, en un sector muy concentrado». Opinión del autor: la subida se explica de sobra con la bandeja de horno; ganar la demanda va cuesta arriba.
9. **Perspectivas**: CEO de SK Hynix (Reuters, 10-7-2026, día de su salida en Nasdaq): 2027 será el peor año de suministro de la historia del sector; demanda por encima de capacidad más allá de 2030. Nuevo jugador: CXMT (China) — del <1 % (2023, no verificado por él) al 10 % de ingresos (2T 2026, Counterpoint); pero una fab de memoria tarda años. Bernstein (jul-2026): precio por gigabit +43,2 % en 2027 y −52,9 % en 2028 — **aun bajando, seguiría al doble del pre-crisis** (matiz que casi nunca acompaña al titular «la RAM se desplomará en 2028»). TrendForce: suministro DRAM para PC podría bajar en 2027 (bandeja a servidores otra vez).

## Señales de triage

- **Análisis económico riguroso y honesto**: cadenas de datos con fechas y fuentes nombradas (DRAM Exchange, PC Part Picker, Tom's Hardware, IDC/Counterpoint, Bernstein, TrendForce), distinción sistemática entre spot/contrato/retail y entre medido/citado/cifra que circula; el modelo de la bandeja de horno es excelente didáctica (ejemplo propio declarado inventado).
- Corrección de titulares sistemática (4× verificado en dos cadenas; «tocó techo» ≠ bajar; 700 % contextualizado; Altman/Musk con conflicto de interés señalado).
- Tesis aplicada al usuario final (¿comprar ya o esperar?) aunque el corte del raw termina antes de la respuesta explícita (el video es de 31 min; el raw llega al min ~22).
- ASR mínimo («Chiki Paint» → probable podcast de S. Altman no identificado, «escramentados» → escarmentados); raw intacto. Sin patrocinios.

## Cruces

- Consolidación aplazada: par directo con WL-494 (Qwen 4 en local — RAM/MoE) y las fuentes de IA local; la «bandeja de horno» ↔ WL-602 (paradoja de Jevons: la IA abarata/compra el recurso) y WL-607 (limitaciones tecnológicas); HBM vs. DRAM ↔ WL-609 (fibra: mismo recurso, clientes que pagan más).

## Veredicto de triage

Fuente excelente de economía del hardware: explica el shock de la DRAM con mecánica clara (bandeja de horno), datos fechados y chequeo de titulares honesto. El raw corta antes de la conclusión práctica de compra — señalado. Sin consolidación (aplazada).

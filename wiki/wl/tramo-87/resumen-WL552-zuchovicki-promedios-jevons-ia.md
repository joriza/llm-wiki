# WL-552 — Claudio Zuchovicki: «nunca se guíen por los promedios»

- **Fuente original**: `raw/wl/tramo-87/2026-08-25-claudio-zuchovicki-nunca-se-guien-por-los-promedios.md` ([Vídeo](https://www.youtube.com/watch?v=rYB6fEV6wsY))
- **Canal**: Cuando mis hijos tengan mi edad (Ariel Tarico) — episodio completo (~53 min), invitados Claudio Zuchovicki (columna de IA y economía) y Pablo (fintech/real estate) + Nicolás; homenaje a Juan Carlos De Pablo
- **Publicado**: 2026-08-25 · **Duración**: ~53 min
- **Dominio provisional**: economia-argentina (con segmento IA de mercado global)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Programa de talk show económico-argentino con varios bloques de contenido real:

1. **Entrevista a Ariel Tarico** (humorista/dibujante, homenaje a la vieja radio): humor gráfico desde los 6 años, LT10/diario El Litoral, «hago chistes sobre, no contra» — analista político que usa el humor; miedo escénico como motor.
2. **Columna Zuchovicki I — desagregar promedios**: chiste estadístico («Pobre Juan… lago de 10 cm»); EMA/EMAE junio: promedio positivo pero desagregado en 16 sectores, 13 positivos, 2 en cero y solo administración pública y defensa en retroceso (vaca muerta/litio heterogéneos); precios mayoristas +0,8 % festejados por el gobierno ocultan petróleo crudo y gas −9,2 %; S&P subió «tres» [puntos/por ciento] por solo dos empresas de IA; sin el sector tech, el retorno anual del índice sería negativo (dato que atribuye a conversación con «Muki Tenemon» [ASR dudoso]).
3. **Columna Zuchovicki II — quién se queda con el ahorro de la IA** (la más sustanciosa): el costo por token se desploma mientras el alquiler de GPU **sube** desde julio (fuente citada verbalmente: Citadel) — **paradoja de Jevons** (Jevons 1865: máquinas de vapor más eficientes → más carbón): el token vale menos pero se consumen tantos que el «fierro» no para de crecer. Velocidad histórica de ARR: Cursor ~3 años (margen bruto negativo al inicio), Anthropic <4, OpenAI ~5,7, Uber 5, Zoom 9, Slack 12, Figma 13 (Figma conservaba 90 centavos por dólar); cadena de eslabones (programador→Cursor→Anthropic→Amazon) donde **solo la escasez tiene poder de precio**: modelos se abaratan por competencia, apps trasladan la baja al usuario, pero TSMC/Nvidia/memoria (Micron) se quedan con el ahorro. «La inteligencia no es la escasez; donde corre, sí».
4. **Radioteatro anti-estafa** con De Pablo (ficción declarada): video-estafa con IA usando la imagen del economista, «20 % diario» — moraleja real: ante un 2 % diario ya hay que rajar; remate jodón del «inspector» que él mismo hacía los videos («integración vertical»).
5. **Bloque seguros/IA** (Pablo): congreso Expo Estratega; seguros de salud con prestaciones directas (antes solo reintegro), seguros de retiro privados; «pérdida acotada vs poder de ruina» como valor del productor-asesor frente a la IA; contraejemplo Lemonade (IA total, «apalanca mucho y no le fue bien»); postventa y recomendación como servicio genuino no mecanicista.
6. **Fintech/Nubank**: créditos no garantizados en Argentina — análisis de cohortes («safras» 2020-22): pérdidas iniciales compensadas por maduración; tasa libre de riesgo argentina (CÉLIC/BADLAR) muy superior a Brasil; Nubank +70 % de créditos al mismo segmento sin subir riesgo por datos.
7. **Real estate como puente macro-micro** (2027, aporte «de corazón» sin crítica al gobierno): 23 puestos directos por millón de dólares + 6-8 indirectos; 5.500 obras en CABA (récord, +16 %) pero ventas paradas y costo alto; propuesta: FGS (~80.000 M USD) licitando plazos fijos UVA+2-5 a 2-3-5 años para fondear hipotecas; instrumento de blanqueo para «los 200-300 mil millones del colchón»; RIGI inmobiliario; «si la estabilidad depende de una persona, no hay estabilidad».

## Señales de triage

- **Mixtalk con contenido económico real pero formato de humor**: los datos (EMAE por sectores, precios mayoristas, ARRs, FGS) son de 2.ª mano citados verbalmente sin pantallas de fuente verificable — señalados; los gráficos mencionados (Citadel GPU, ARR) no se ven en el raw.
- **Error probable de ASR a no citar**: «Cursor la compró SpaceX por 60.000 millones» — casi seguro garbino (Cursor/Anysphere no fue comprada por SpaceX; posible confusión con una ronda de inversión) — señalado como no verificado.
- Nombres ASR dudosos: «Muki Tenemon», «Hevons» (Jevons), «Marcón» (¿Marcondes?), «FACU» — normalizados solo aquí; raw intacto.
- **Patrocinios excluidos**: SBS/QuickTrake (ahorros vs inflación), Social Lunch (viandas), auspiciantes del radioteatro — excluidos de la síntesis.
- Declaración de interés del invitado Pablo en el sector inmobiliario/seguros (hace el aporte «desde su mesa») — sesgo declarable, señalado.

## Cruces

- **Paradoja de Jevons aplicada a IA** ↔ [[routing-por-coste]] (el token se abarata y el gasto total sube: WL-440 GLM Flash, WL-539 DeepSeek barato, WL-541 niveles de orquestación), [[inferencia-local]] (la escasez está en el silicio: WL-494/545, GPUs WL-456).
- «Nunca guiarse por promedios» ↔ [[codigo-espinoza]] (descuadres expuestos con indicator=True, WL-466) y la ética de agregación de la wiki ([[sintesis]]): el promedio oculta la heterogeneidad.
- Estafas con IA/imagen clonada ↔ WL-534 (cuento del abuelito), clúster estafas-y-consumidor; «2 % diario → rajar» como regla prevención.
- Créditos por cohortes ↔ economía-argentina (WL-498/460), fintech WL-125/193; Lemonade ↔ [[delegacion-cognitiva-ia]] (automatización total sin criterio).
- Real estate/FGS/blanqueo ↔ sociedad-argentina (WL-437/460/421); «estabilidad que no dependa de una persona» ↔ WL-470 (Insfrán).

## Veredicto de triage

Útil: la columna de Zuchovicki sobre Jevons/cadena de valor de IA es la mejor síntesis económica del tramo (quién captura el ahorro: el usuario en precios, el silicio en ganancias), con datos de 2.ª mano y un error probable de ASR — señalados. Consolidación diferida (L12): economia-argentina (segmento IA a cruzar con ia-local/routing-por-coste), clúster estafas +1, De Pablo/programa como entidades candidatas.

# WL-583 — Lo que NADIE te explica sobre la Capacidad Real de una Batería

- **Fuente original**: `raw/electronica-practica/2026-03-11-lo-que-nadie-te-explica-sobre-la-capacidad-real-de-una-bateria.md` ([Vídeo](https://www.youtube.com/watch?v=wBS-u4I12us))
- **Canal**: Voltímetro
- **Publicado**: 2026-03-11 · **Duración**: 12:15
- **Dominio definitivo**: electronica-practica (consolidación T97 relevo 3, 2026-11-17) / casa-calefaccion (baterías solares)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Tutorial técnico bien estructurado sobre por qué **la etiqueta de amperios-hora miente**: la capacidad utilizable depende de la química, el DOD, el C-rate y la curva de voltaje:

- **Filtro de químicas** (descarta con criterios explícitos): plomo ácido inundado (FLA — baratas, mantenimiento, gases tóxicos, «pesadilla logística»), plomo-carbono (pesadas y caras), **LTO** (carga 10 min y 30 años pero 10× precio y baja densidad), **estado sólido** (santo grial, costo astronómico), sodio-ion (prometedor pero poca disponibilidad), NiCd (efecto memoria, cadmio letal) → quedan **AGM/gel** y **litio: ternario (NMC/NCA) vs LiFePO4**.
- **DOD (profundidad de descarga)**: plomo ≤50 % (sulfatación irreversible más allá), ternario ≤80 % (estrés al 100 %), LiFePO4 80 % recomendado por fabricantes para garantizar ciclos.
- **C-rate y la diferencia clave**: en litio la capacidad es prácticamente fija a cualquier velocidad de descarga; en plomo la etiqueta solo es real a C20 (descarga en 20 h) — al acelerar, la resistencia interna desploma el voltaje y el inversor corta antes de extraer la energía prometida. Además la curva de voltaje: plomo cae errática (engaña al inversor), LiFePO4 casi plana del 90 al 10 % («aprovechá hasta el último vatio»).
- **Caso numérico completo** (hereda del video anterior el cálculo de 4,4 kWh/día): batería «24 V 250 Ah» = 6,2-6,4 kWh en papel → en plomo con DOD 50 % quedan 3 kWh + corte prematuro del inversor = **te quedás a oscuras**; en LiFePO4 con DOD 80 % = 4,8 kWh reales con voltaje firme → cubre con margen. «La etiqueta de plomo te mintió; la de litio te entregó lo que pagaste».
- **Dimensionado final**: celdas LiFePO4 de 3,2 V (4/8/16 por 12/24/48 V); para 4.400 Wh a 25,6 V = 172 Ah → dividir por 0,8 = 215 Ah → recomienda el estándar comercial superior (230-280 Ah). Aviso de seguridad: el ternario «químicamente inestable — en una casa donde duerme tu familia, el riesgo de incendio lo descarta».

## Señales de triage

- **Contenido técnico correcto y estándar**: DOD/ciclos, efecto Peukert implícito (capacidad variable del plomo con el C-rate), curvas de voltaje, 3,2 V por celda LiFePO4 — todo consistente con la literatura; cifras del caso (250 Ah, 4,4 kWh) son del propio formato didáctico del canal (video anterior citado).
- Términos con pequeñas imprecisiones («plomo carbonato» por lead-carbon, «NCM» usado para NiCd — confusión de siglas con NMC del ternario, «FLA float lead acid» por flooded lead acid) — señaladas.
- ASR mínimo; raw intacto. Sin patrocinios; estilo narrativo de radio con énfasis dramático.

## Cruces

- **electronica-practica / casa-calefaccion** (baterías/energía): par con WL-577 (aritmética de autonomía de celdas de litio — mismo cálculo consumo÷capacidad con BMS) y [[solar-pasivo-y-ventilacion]] (WL-496); serie «dimensionado real» del canal Voltímetro.
- «La etiqueta es marketing, la química es realidad» ↔ [[routing-por-coste]]/WL-541 (specs vs promesa), WL-577 (datasheet > marketing) y WL-583/577 como par «leer la letra chica energética».
- LiFePO4 para casa ↔ [[self-hosting]] (infraestructura casera segura) y el hilo de seguridad (ternario descartado por incendio ↔ WL-576 fuentes sin protecciones).

## Veredicto de triage

Muy útil: la mejor fuente de dimensionado de baterías solares del backlog, correcta en química y aritmética, con caso numérico completo y aviso de seguridad; imprecisiones menores de siglas — señaladas. Consolidación diferida (L12): electronica-practica/casa-calefaccion, junto a WL-577, Voltímetro entidad candidata (serie de dimensionado).

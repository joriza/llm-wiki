# Resumen: Google Creó una IA que PREDICE EL FUTURO y Cabe en tu PC | TimesFM 3.0

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-local`.
- **Fuente original**: `raw/ia-local/2026-09-04-google-creo-una-ia-que-predice-el-futuro-y-cabe-en-tu-pc-timesfm-3-0.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar) — https://www.youtube.com/watch?v=bQ6vVjVg1JI — Cognix, 2026-09-04 (05:50).
- **Nota**: fuente 36/58 del lote ia-local (entrada 41 del playlist). Quinta fuente del canal **Cognix** (4ª en ia-uso-practico). Modelo de **forecasting de series temporales** (TimesFM 3.0) — 330M params, 1.5 GB, multi-series, predicción paralela, rangos probabilísticos, licencia no comercial.

## Qué es TimesFM 3.0

Modelo de **fundación para forecasting** (Google Research) que predice series temporales: ventas, demanda, tráfico, consumo eléctrico, etc. Avance clave vs versiones anteriores:

1. **Multi-series nativo**: observa varias series a la vez y aprende cómo se afectan entre sí (ej. falla suministro producto A → dispara demanda producto B) — antes: modelos separados + conexión manual.
2. **Predicción paralela (no autoregresiva)**: predice toda la ventana de futuro **de una sola vez**, en paralelo — evita acumulación de error paso a paso (donde error inicial se propaga).
3. **Salida probabilística**: entrega rango [low, high] + valor central (ej. «entre 80 y 120, mayor probabilidad cerca de 100») — no solo número seco.
4. **Ligero**: **330M parámetros**, ~1.5 GB pesos → corre en GPU gamer común (RTX 3060/3070/3080), sin servidores caros.

## Benchmarks públicos

- **#1 en varias pruebas clave del sector** (supera a Cronos 2 y familia Toto 2.0).
- Incluso **solo una serie** (apagando multi-series) → igual o mejor que alternativas existentes.

## La trampa de la licencia: **no comercial**

- Código abierto (pesos + arquitectura revisables).
- **Pesos pre-entrenados bajo licencia que prohíbe uso comercial**.
- Traducción: puedes investigar/estudiar/experimentar en local; **no puedes meterlo en producto que vendas ni servicio pago**.
- **Estrategia de Google**: modelo gratis para investigación → versión útil en producción **encerrada en Google Cloud** (BigQuery, Google Sheets connected sheets, Vertex AI).
- Patrón repetido en big tech: sueltas gratis para investigación, la versión de verdad detrás de suscripción cloud.

## Conclusión práctica

- **Para aprender/investigar**: excelente, descarga y corre en local (1.5 GB, GPU común).
- **Para producto/servicio real**: espera versión con licencia libre (¿llegará?) o paga Google Cloud (BigQuery/Vertex AI donde ya está integrado).
- Pregunta clave: «¿qué tan dispuesto estás a instalarlo solo para aprender, sabiendo que para usarlo en serio vas a tener que pagar la nube?»

## Cruces en la wiki

Entidad: [[informatica-teoria/cognix]] (5ª fuente del canal; 4ª en ia-uso-practico). Modelo: TimesFM 3.0 (forecasting foundation model, 330M, multi-series, parallel decoding). Licenciamiento: patrón open-core/cloud-tethered. Hardware: [[hardware-para-ia-local]] (1.5 GB → GPU gamer). Canales: [[burbuja-de-la-ia]] (burbuja IA, costes reales, estrategias big tech).
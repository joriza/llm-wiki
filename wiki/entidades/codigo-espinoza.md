# Código Espinoza

- **Tipo**: página de entidad (canal).
- **Dominio**: `informatica` (fuentes residentes en `electronica-practica/` por defecto de la ventana, candidatas declaradas a migración).
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — umbral ≥2 verificado por conteo real).
- **Fuentes**: [[resumen-FAV-423-pip-vs-uv-codigo-espinoza]] (uv como reemplazo de pip) · [[resumen-FAV-424-apis-gratuitas-python-codigo-espinoza]] (5 APIs gratuitas combinables).
- **Ver también**: [[automatizacion-con-python]] (dominio python-practico — el mismo registro de automatización personal).

**Actualización 2026-11-16 (consolidación T48, tramos 38-41 — total 4 fuentes)**: dos fuentes nuevas del backlog WL — [[resumen-WL269-machine-learning-6-modelos-codigo-espinoza]] (WL-269, general/: los 6 patrones del ML clásico sobre tablas con trampas de evaluación; datos sintéticos declarados) y [[resumen-WL275-python-asyncio-inventario-codigo-espinoza]] (WL-275, python-practico/: asyncio + SQLite WAL, productor-consumidor con back pressure y candado por producto; «la concurrencia no se prueba solo ejecutando, se razona»). El canal amplía su registro de automatización personal hacia **divulgación técnica con datos declarados** (sintéticos o propios, siempre señalados) y benchmarks de rendimiento.

## Identidad

**Código Espinoza — Automatiza tu Vida**: canal en español de automatización personal con Python. Formato corto y aplicado (10-12 min): una herramienta por video, demo con números reales y composición de piezas en un sistema completo (API de clima → disparador → bot de Telegram como canal de salida).

## Sello observado en sus fuentes

- **Herramientas que ahorran horas** (FAV-423): la adopción de **uv** (Rust/Astral) documentada con benchmarks (pip ~90 s vs uv casi instantáneo) y las tres razones (Rust, paralelismo, caché global con hard links).
- **El ecosistema gratuito como sistema** (FAV-424): OpenWeatherMap (60 llamadas/min), CoinGecko (sin clave), bot de Telegram (BotFather) — la diferencia entre pagar y no pagar no es la API, es saber cuál usar y cómo conectarla.

## Notas

- Sus 2 fuentes están residentes en `electronica-practica/` con nota de candidata a dominio informatica — la entidad vive en `entidades/` porque el canal es de informática.
**Actualización 2026-11-16 (consolidación T61, pedido L32 — total 8 fuentes)**: cuatro fuentes nuevas — WL-344 ([[resumen-WL344-n1-pricing-codigo-espinoza]], general/: optimización de código heredado 40 min→1:50 con método medir-primero + pricing por problema resuelto), WL-348 ([[resumen-WL348-google-sheets-base-datos-codigo-espinoza]], general/: límites de Sheets 2026 y la carrera de stock sin transacciones → SQLite con la hoja como vista), WL-370 ([[resumen-WL370-pedi-misma-app-claude-gpt-gemini]], agentes-de-codigo/: comparativa Claude/GPT/Gemini empaquetando la misma app — GPT para app real, Claude para debug, Gemini para explicar; no confiar en que corra) y WL-373 ([[resumen-WL373-usa-contrata-devs-latam-161]], agentes-de-codigo/: nearshore LATAM — producto real > repos, B2B contractor, dominio de negocio, inglés operativo; [[contratacion-nearshore-latam]], [[brecha-junior-ia]]). El canal pasa de automatización personal a **consultoría de datos + carrera + comparativas de modelos**, siempre con casos concretos y pricing.

**Actualización 2026-11-16 (consolidación relevo 1 del pedido L34 — total 9 fuentes)**: [[resumen-WL386-guias-despacho-sii-python]] (WL-386, `python-practico/`) — automatización normativa: resolución exenta 154 del SII chileno (guía de despacho electrónica, campos nuevos/obligatorios), formulario Python con validación al vuelo (dígito verificador, patente) que NO firma el DTE; nicho de venta vía Patreon con fecha regulatoria real como argumento. Vuelta al registro original de automatización con Python por necesidad normativa.

**Actualización 2026-11-16 (consolidación relevo 3 del pedido L35 — total 10 fuentes)**: [[resumen-WL424-perdida-datos-sqlite-codigo-espinoza]] (WL-424, `python-practico/`) — caso 1.ª mano de pérdida total de una SQLite de producción (corte de luz sin WAL ni respaldos; recuperación con `.recover`, 87 %) y las cinco medidas: ruta de datos separada, WAL+transacciones+synchronous full, respaldo diario con rotación, botón de restaurar visible y prueba de corte simulada («una app no está entregada hasta que la tiraste abajo a propósito»); [[bases-de-datos]]. Primera fuente de ingeniería de durabilidad del canal.

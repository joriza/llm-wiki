# WL-569 — testeando discos usados

- **Fuente original**: `raw/informatica/2022-02-18-testeando-discos-usados.md` ([Vídeo](https://www.youtube.com/watch?v=RYWSJLjG3aA))
- **Canal**: David Lightman
- **Publicado**: 2022-02-18 · **Duración**: 41:18
- **Dominio definitivo**: informatica / self-hosting (consolidación T97 relevo 2, 2026-11-17) / self-hosting (almacenamiento)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Banco de pruebas real de **10 discos mecánicos usados** comprados para un futuro minero de Chia (Exos, IronWolf, WD Gold, Red Pro, Ultrastar; 8-16 TB), con metodología y tips de compra de usados:

- **Taxonomía de discos grande-capacidad**: los >8 TB van sellados con **helio** (gas más liviano → menor rozamiento, cabezas más cerca; su duda: el helio «se pianta por cualquier lado» a largo plazo); los atmosféricos tienen el agujero/breather visible; los Enterprise SATA (Ultrastar) requieren **cable especial SATA+power que envía la orden de encendido** (arranque secuencial por la controladora para no volar la fuente con 100 discos).
- **Metodología de test de usados** (sistemática en cada disco): leer S.M.A.R.T. con CrystalDiskInfo (horas, power-on count, **spin retry count = 0** como el indicador crítico de motor en discos grandes, seek error/reported uncorrectables), particionar en GPT, formatear y **copiar ~37 GB mirando la constancia**: «no importa la velocidad, importa que sea siempre igual» (bajar de 100 a 30 MB/s = disco muerto; 80 vs 100 es normal); esperar a superar el caché de RAM (~10-12 GB copiados con 16 GB) para que la medición sea real; escuchar la inicialización y aprender «los ruidos» de cada disco; vigilar la luz de actividad y el tiempo de formato.
- **Hallazgos del lote**: casi todos impecables (200-2900 horas, sin relocations ni uncorrectables); el SSD XPG usado para plotear Chia está **destruido** (pierde la capacidad de borrado: la partición «vuelve sola») — «si saben que lo usaron para plotear, no lo compren».
- **Consejos de vida útil**: los mecánicos **no se desgastan por uso** (mejor encendidos que parados — el disco enterprise que quedó 2 años apagado «se pone medio macaco»); lo que mata: temperatura >40 °C constante, cambios bruscos, vibraciones y microcortes mientras escribe; barra de vida: consumer 6-8 años vs enterprise 10-14; campos magnéticos como desgaste de fondo. Test profundo opcional con Victoria/HDD Regenerator en block mode (8× más rápido que sector mode).
- **Over-provisioning de SSD**: recomendación del 10 % sin particionar (demo en diskpart/diskmgmt), ideal hacerlo en la instalación original; regla práctica: nunca llenar el SSD.
- Detalles de taller: resonancia entre discos de distinta velocidad de giro en el mismo gabinete, soportes impresos en PLA al 20 % de infil sobre goma para amortiguar, `diskpart clean` con riesgo de borrar el disco equivocado.

## Señales de triage

- **1.ª mano con banco real**: 10 discos testeados en cámara con S.M.A.R.T. legible y copias cronometradas; afirmaciones de vida útil (6-8/10-14 años) y de daño por helio son experiencia del taller, no datos de fabricante — señaladas como experiencia.
- Contexto de época (2022): minado de Chia como motivo de compra — hoy es contexto histórico del video, no recomendación activa.
- ASR sin puntuación en bloques largos («sat/stack», «breeder Hall» por breather hole, «hdat» por Victoria/HDD scan, «calleo/cacheo») — normalizado solo aquí; raw intacto. Sin patrocinios (RGB Link mencionado como equipo propio).

## Cruces

- **[[self-hosting]]** (almacenamiento/S.M.A.R.T.): par directo con WL-364 y el clúster de NAS; «S.M.A.R.T. no predice nada, mirá spin retry» ↔ [[archivo-del-futuro]] (WL-475/565: los discos mueren, backup como única respuesta).
- David Lightman 2.ª fuente (WL-555) → entidad confirmada; hilo «fricción en bordes» (WL-543/559): cable especial que no arranca, resonancia de RPM, helio que escapa.
- Chia/plotting como contexto ↔ WL-545/556 (uso intensivo de SSD); «actividad ≠ progreso» del minero ↔ no aplica, más bien economía de repuestos ↔ WL-550.
- Metodología de prueba por constancia ↔ [[codigo-espinoza]] (trazabilidad de resultados) y la ética de medir lo que importa.

## Veredicto de triage

Muy útil: la mejor fuente de almacenamiento del backlog para compra de usados, con metodología completa y hallazgo real (SSD ploteado muerto). Vida útil y helio como experiencia del taller — señaladas. Consolidación diferida (L12): self-hosting/informatica, David Lightman +1 (entidad), página concepto «comprar discos usados» candidata.

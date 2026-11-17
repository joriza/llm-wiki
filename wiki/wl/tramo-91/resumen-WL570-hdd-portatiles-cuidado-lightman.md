# WL-570 — HDD portatiles, CUIDADO

- **Fuente original**: `raw/wl/tramo-91/2023-10-10-hdd-portatiles-cuidado.md` ([Vídeo](https://www.youtube.com/watch?v=dCC48CH-iL0))
- **Canal**: David Lightman
- **Publicado**: 2023-10-10 · **Duración**: 22:23
- **Dominio provisional**: informatica / self-hosting (almacenamiento)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Divulgación de taller sobre la fragilidad operativa de los **HDD portátiles 2,5″ USB** (WD Passport) motivada por un caso real: un cliente usando el disco de backup para ver películas colgado del televisor:

- **La micromecánica que nadie ve**: cabezas que vuelan a micras de un plato a 5400 rpm; doble servo — posicionamiento normal + **ajuste piezoeléctrico fino de altura por cabeza** (reconoce que no sabe cómo detecta el exceso de acercamiento — honestidad explícita); una partícula de polvo o el mínimo golpecito **mientras carga las cabezas** = raya en el plato = disco tirado («ni DRevival ni Victoria ni HD Regenerator arreglan daño físico»).
- **Protocolo de manipulación**: mano encima del disco al enchufar/desenchufar (para que el tirón del cable no lo mueva); nunca moverlo andando; escuchar una vez la secuencia de inicialización/carga de cabezas para reconocerla; USB nativo (no sacable a SATA sin pistas); patitas de goma como parte del sistema.
- **Diagnóstico de cable USB**: el disco con energía pero sin aparecer = pin USB 3.0 gastado (los 5 pines TX/RX diferencial en el borde, muy expuestos vs los 4 largos de USB 2.0); prueba rápida: puerto 2.0; «siempre tener un cable de la vaca»; cable corto porque el motor necesita corriente de arranque (vencer inercia) — clic-clic-clic cíclico = tensión que cae por cable largo/fino (los nuevos vienen más finos por costo).
- **Reglas de compra/uso**: de dos discos de igual capacidad, elegir el más fino/liviano (menos masa = más resistencia a golpes; menos platos = menos cabezas = menos probabilidad de contacto fatal); el disco portátil es para enchufar-copiar-guardar en cajón, **no para dejar enchufado** (muere «en un año, por experiencia» — Windows escaneando cada rato, Chrome); nunca backup en pendrive; «mover datos al disco USB no es backup, es una sola copia — backup son dos copias en discos distintos»; usar el disco de películas separate (velcro a la TV si hace falta, lejos del calor y de los gatos).
- **Rescate de datos**: trasplante de platos/cabezas con calibración interna, hardware especializado, disco idéntico de la misma partida/fecha — cobra miles por eso.
- Cierre con perspectiva histórica: de discos de 1 GB a 6000 pesos a 2 TB bolsillo — «un milagro que normalizamos».

## Señales de triage

- **1.ª mano del taller** con fotos de interior de disco (de un blog ajeno, citado) y explicación física correcta y verificable (piezo servo, pines USB 3.0, caída de tensión por cable); afirmaciones de vida útil («duran un año enchufados») y costos de rescate son experiencia declarada — señaladas.
- Coincide con WL-569 (mismo canal, almacenamiento) — coherencia interna; tono didáctico para no técnicos («para que le agarren respeto a la tecnología»).
- ASR fonético fuerte («bac» por backup, «callo» por caché, «boleta»), sin puntuación en bloques; raw intacto. Sin patrocinios.

## Cruces

- **[[self-hosting]] / [[archivo-del-futuro]]**: «dos copias en discos distintos» ↔ regla 3-2-1 de backup (WL-475/565/569 — la serie de almacenamiento de Lightman se consolida junta); «el medio no es el backup» ↔ hilo propiedad digital.
- Piezo servo/precisión micrométrica ↔ WL-543 (tolerancias) y WL-559 (conectores y contactos) — serie «la fricción vive en los bordes» ahora con «el fallo vive en las micras».
- David Lightman 3.ª fuente → **entidad confirmada** (WL-555/569/570).
- «Tecnología milagrosa normalizada» ↔ WL-566 (Hostinger paga las cuentas) — hilo de la economía invisible del software/hardware.

## Veredicto de triage

Muy útil: la mejor fuente de manipulación de HDD portátiles del backlog, correcta en física y práctica, con consejos accionables para no técnicos. Vida útil y costos de rescate como experiencia — señaladas. Consolidación diferida (L12): self-hosting/informatica, serie Lightman de almacenamiento juntas, entidad confirmada.

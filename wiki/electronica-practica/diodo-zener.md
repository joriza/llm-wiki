# Diodo zener (referencia de tensión y uso práctico)

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — umbral registrado en la ventana `Electronica y TV/`).
- **Fuentes**: [[resumen-FAV-306-zener-diode-tester-jericho-uno]] (Jericho Uno — **FUENTE DE BAJA CONFIANZA**, ver nota) y [[resumen-FAV-307-cargador-movil-5v-a-fuente-12v-amiyoled]] (Amiyoled — fuente plena).
- **Ver también**: [[fuente-conmutada-led]] (el zener como mejora de estabilización en la fuente capacitiva de FAV-010) · [[como-se-hace-lo-cotidiano]].

## El concepto

El diodo zener en polarización inversa conduce a un **voltaje definido**, lo que lo convierte en la referencia de tensión discreta más común de las pequeñas fuentes. Los dos usos que el dominio documenta:

1. **Medirlo antes de usarlo**: tester casero hasta 24 V (FAV-306) para identificar el voltaje real de un zener sin marcas legibles — paso previo a cualquier reemplazo.
2. **Sustituirlo para cambiar una salida** (FAV-307): en un cargador de móvil de 5 V la salida la fija el **zener de referencia** (marcado D3 en la placa); cambiándolo por uno de 12 V (y el condensador de salida a un voltaje ≥30 % mayor que la salida, si no «explota») el cargador se convierte en fuente de 12 V (o 9 V para Arduino), con límite ~300 mA. Polaridad: la raya negra del zener = cátodo.

## Nota de confianza por fuente

- **FAV-306 es fuente de baja confianza**: los subtítulos automáticos (ruso) solo capturaron ruido musical — el contenido del resumen procede del título y del cross-referencia del propio canal Amiyoled; candidata a re-pass. Todo detalle técnico del tester queda **sin verificar contra el habla del video**; solo se cita la idea general.
- FAV-307 es fuente plena con transcripción utilizable; sus valores (3,6 V → 12 V, condensador 220 µF/10 V → 16 V mínimo) están verificados en el video.
- Cruce no documentado como fuente: el zener aparece también como etapa de estabilización propuesta en [[resumen-FAV-010-leds-220v-sin-transformador-electgpl]].

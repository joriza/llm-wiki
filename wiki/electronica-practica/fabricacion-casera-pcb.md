# Fabricación casera de PCB

- **Tipo**: página de concepto.
- **Dominio**: `electronica-practica`.
- **Creada**: 2026-11-14 (consolidación diferida de la curación de favoritos de Chrome — umbral registrado en la ventana `Electronica y TV/`).
- **Fuentes**: [[resumen-FAV-312-circuito-impreso-metodo-del-planchado-ideatronic]] (Ideatronic — pistas por transferencia térmica de tóner) y [[resumen-FAV-313-serigrafia-casera-pcb-ideatronic]] (Ideatronic — silk screen casera sobre la placa ya grabada).
- **Ver también**: [[diseno-pcb-herramientas]] (de dónde sale el artwork: PCB Wizard, KiCad espejado, EasyEDA/Gerber) · [[ideatronic]].

## El concepto

El **método del planchado** (transferencia térmica de tóner) en dos etapas, documentadas por el mismo canal con el mismo flujo de trabajo:

1. **Pistas** (FAV-312): diseño impreso en papel fotográfico con láser (el tóner es la máscara resistente al ácido) → baquelita pulida y limpiada con alcohol → plancha a temperatura máxima ~10 min → retoques con marcador permanente → grabado en ácido férrico ~25 min → taladrado con broca n.º 32.
2. **Serigrafía** (FAV-313): capa silk screen impresa con **mirror** obligatorio, alineada con contraluz (flash del celular) y planchada solo ~5 min — la máscara de componentes para acabado profesional.

El mismo artwork impreso espejado con «marca pequeña» de taladro aparece en el flujo KiCad (FAV-317), y EasyEDA ofrece el contraste industrial: Gerbers y pedido a fábrica (FAV-320/321). Casera vs. fábrica es la elección de nivel de acabado, no de diseño.

## Notas de verificación y confianza

- Transcripciones ASR utilizables ( Ideatronic reconstruido desde «Canal de diatonic»); tiempos y materiales citados corresponden a los videos de 2017 — sin fuente independiente que los avale, son recetas del canal.
- Riesgos del proceso: ácido férrico (manipular con cuidado), y el tóner/marcador como única máscara — cualquier pista incompleta se retoca antes del grabado.

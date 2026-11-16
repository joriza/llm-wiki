# Ingeniería inversa asistida por IA

- **Tipo**: página de concepto (clúster transversal).
- **Dominio**: `ia-critica-y-fronteras/` (creada en la consolidación T53 de los tramos 45-47 WL, 2026-11-16 — umbral ≥2: WL-241 + WL-250 nucleares, WL-315 de ampliación).
- **Fuentes**: [[resumen-WL241-software-ha-muerto-fazt]] (WL-241, Fazt — el software como artefacto reversible) · [[resumen-WL250-cualquiera-puede-decompilar-apps-rea-fazt]] (WL-250, Fazt — REA «Reverse Engineering Anything») · [[resumen-WL315-mdm-vs-idm-ia-ingenieria-inversa-el-bit-informado]] (WL-315, El Bit Informado — el caso MDM/IDM y la reacción legal).
- **Ver también**: [[agentes-de-codigo]] · [[lenguaje-rust]] · [[hardware-agentico-mcp-first]].

## La idea

Los LLM conectados a herramientas de análisis binario (IDA, Ghidra) reducen tareas de ingeniería inversa de meses a horas: lo que era una especialidad de nicho se vuelve operación de una tarde. El proyecto viral **REA** («Reverse Engineering Anything») es el emblema del fenómeno (WL-241/250), y su difusión también genera clones trampa (WL-315 advierte el repo falso de REA).

## Las tres consecuencias observadas

1. **Derriba el foso del software de pago por dos vías** (WL-315): la piratería asistida — caso Reddit de sept. 2026: un usuario afirmó desbloquear IDM 6.43 con un LLM sin censura modificando un solo byte, solo con una imagen como prueba (no verificado, condenado por el propio canal como piratería) — y la competencia legítima: **MDM**, escrito desde cero en Rust por un único desarrollador, sin copiar nada — solo ingeniería inversa de caja negra (legal) de la experiencia de uso.
2. **El respeto de caja negra como línea legal** (WL-315): replicar comportamiento sin copiar código es la frontera que MDM no cruzó — y la que separa competencia de clon.
3. **Reacción legal y de seguridad** (WL-250/315): las empresas de software disparan respuestas ante la decompilación masiva; el contrapeso del clúster es que la misma técnica sirve para auditar lo que uno ejecuta.

## Notas de fiabilidad

- El caso Reddit de WL-315 es de 2.ª mano sin verificación (el propio canal lo presenta «con pinzas»); los benchmarks de MDM son autopublicados. WL-250 marco comercial Platzi señalado en triage. Nada de esto se eleva a referencia sin fuente primaria.

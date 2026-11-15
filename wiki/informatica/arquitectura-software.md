# Arquitectura de software (principios de diseño)

- **Tipo**: página de concepto.
- **Dominio**: `informatica`.
- **Creada**: 2026-11-15 (consolidación de la ventana Vs + Docencia T4 — umbral ≥2 verificado por conteo real de fuentes; el clúster estaba deferido en los resúmenes FAV-440/448).
- **Fuentes nucleares**: [[resumen-FAV-440-solid-en-5-minutos-torti-code]] (SOLID, Torti Code) · [[resumen-FAV-459-sabes-solid-te-faltan-4-principios-torti-code]] (DRY/KISS/YAGNI/acoplamiento, Torti Code — «set completo») · [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] (monolito vs microservicios, TheDebugDuck).
- **Ver también**: [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]] (prácticas de velocidad) · [[resumen-FAV-458-ordenar-un-millon-de-datos-torti-code]] (algoritmos) · [[resumen-FAV-460-map-filter-reduce-torti-code]] (paradigma funcional) · [[resumen-FAV-434-vibe-coding-cinco-agujeros-otro-mas-de-sistemas]] (contra-punto IA).

## El concepto

Los **principios que regulan cómo se organiza el código a escala** — no cómo se teclea. La tesis compartida de las tres fuentes: escribir código es la parte fácil (y más con IA); **el valor está en decidir y evaluar la estructura** — «la IA teclea, pero el arquitecto que revisa y manda sos vos» (FAV-440).

Tres capas complementarias:

1. **SOLID** (FAV-440): responsabilidad única (una razón para cambiar), abierto/cerrado (extender sin modificar), sustitución de Liskov (la hija cumple el contrato de la padre), segregación de interfaces (no depender de lo que no se usa) e inversión de dependencias (el sistema no se amarra a una herramienta concreta: interfaces + inyección).
2. **Los 4 que SOLID no cubre** (FAV-459): **DRY** (una sola fuente de verdad; regla de tres como antídoto del DRY mal entendido), **KISS** (simplicidad sin código tonto — no meter abstracciones que el problema todavía no pide), **YAGNI** (implementar para un futuro previsto es regalar deuda técnica) y **bajo acoplamiento / alta cohesión** (Constantine, 1979; contratos + inyección de dependencias).
3. **La decisión de forma** (FAV-448): monolito modular vs microservicios — dividir servicios no acelera la lógica (red vs memoria), la ley de Conway manda (es un problema organizacional, no técnico), se pierde ACID (sagas/compensaciones) y la observabilidad se complica; casos Prime Video (−90 % de coste al unificar) y Uber/DOMA como evidencia. Criterios: tamaño del equipo, etapa del producto, madurez DevOps.

## Cómo se conectan

Los contratos/interfaces de SOLID y el bajo acoplamiento de FAV-459 son **exactamente lo que hace viable el microservicio** (y lo que el monolito modular emula): cada módulo habla por contrato y un equipo reescribe el suyo sin que los demás se enteren. El cierre IA de ambas fuentes de Torti Code replica el human-in-the-loop del clúster vibe coding: la IA tiende a entregar «un castillo» de sobreingeniería; conocer los principios permite pedir lo simple y reconocer la sobreingeniería disfrazada de buena práctica.

## Notas

- Historia de los conceptos documentada en las fuentes: DRY (Hunt & Thomas, 1999), KISS (Kelly Johnson/Lockheed), YAGNI (XP — Hendrickson/Beck/Jeffries), acoplamiento/cohesión (Constantine & Yourdon, 1979).
- La OOP que SOLID regula tiene su genealogía en [[resumen-FAV-437-tantos-lenguajes-de-programacion-gilada]] (Simula → Smalltalk → C++/Java).

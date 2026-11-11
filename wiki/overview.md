# Overview — visión general de la wiki

Wiki de conocimiento personal en español, mantenida por el agente a partir de fuentes de `raw/` (nunca modificadas). Cada fuente produce un resumen que cita su archivo raw y la URL de origen; los conceptos y entidades recurrentes se consolidan en páginas únicas enlazadas con doble corchete.

## Estado (2026-11-11)

- **Fuentes procesadas**: 100 (15 previas + 57 de la playlist «IA-Recursos» — lote completo 57/57 con raw y resumen + 20 de la playlist «informatica-teoria» — lote completo 20/20, consolidado + 8 de la playlist de historia de la computación — lote completo 8/8, consolidado).
- **Dominios**: `ciencias-tierra/` (3 fuentes), `inteligencia-artificial/` (58 fuentes: 1 previa + 57 de la playlist), `critica-tecnologica/` (11 fuentes), `informatica-teoria/` (20 fuentes, lote completo y consolidado), `historia-informatica/` (8 fuentes, lote completo y consolidado), `general/` (vacío, reservado).
- **Páginas**: 100 resúmenes de fuente, 34 páginas de concepto, 22 de entidad (más `overview`, `sintesis` y `dominios`).

## Hilos temáticos actuales

1. **Clima y océano** (Coordenada Crítica): la AMOC, el súper El Niño de 2026 frente al de 1877 y su legado — resúmenes + páginas de concepto ([[amoc]], [[el-nino]], [[hambruna-global-de-1877]]).
2. **LLMs e industria de la IA** (Gary Marcus con Gustavo Entrala): límites de los LLM, burbuja económica, riesgos sociales — [[limites-de-los-llm]], [[burbuja-de-la-ia]], [[ia-y-sociedad]].
3. **Poder algorítmico y crítica cultural** (Café Kyoto, 11 fuentes): sociedades de control, industria cultural, efecto enjambre, estética de la regresión, doctrina del odio, construcción del acontecimiento, radicalización digital, meritocracia y moral del esfuerzo, low-tech y fuga — ver [[cafe-kyoto]].
4. **IA aplicada y gratuita** (playlist «IA-Recursos», lote completo 57/57, consolidación completa en dos pasadas): herramientas y modelos abiertos ([[generacion-local-de-imagenes]], [[ia-local-texto]] con Ollama/LM Studio, [[clonacion-de-voz]]), [[agentes-de-codigo]] como página matriz con sus conceptos derivados: [[multiplexores-agentes]] (Herdr), [[computer-use]] (Agent Desktop/ChatGPT), [[odd-metodologia]] (Gentle AI), [[obsidian-memoria-agentes]], [[world-models]] (Genie 3), [[notebooklm-ecosistema]], [[agregacion-apis]] (FreeLLMAPI/OmniRouter/Mammouth) e [[ia-china]] como bloque; y las entidades [[xavier-mitjana]] (5 fuentes), [[alejavi-rivera]] (8), [[fazt]] (3), [[gentleman-programming]] (3, canal + Vods), [[la-hora-maker]] (2), [[joaquin-ruiz]] (2), [[darellanodev]] (2), [[dot-csv-lab]] (2), [[holamundo]] (1 monográfica), más [[gustavo-entrala]]. Aplazados: canales con 1 fuente del dominio (NextGen IA Hub, Migue Baena IA, Pablo Tapias, CodeSimple, AICodeKing, Dev Knives, Comarca IA, Santiago Munoz, Valeria Londoño, Juan David V, Alan Daitch, Vera Badías, Raúl Marín, CreaTuIA, Del Código a la Arquitectura, CursosDesarrolloWeb, etc.) y agentes personales (Clawdbot) como concepto propio.
5. **Fundamentos de informática** (playlist «informatica-teoria», lote completo 20/20 consolidado): dos canales dominantes — [[torti-code]] (7 fuentes: testing, POO y patrones, concurrencia, Git, Kafka, documentación) y [[pedro-lino-caceres]] (4 fuentes: serie de protocolos SSH/DNS/ARP/DHCP con laboratorios GNS3/Wireshark) — más panorámicas de Codist (estructuras de datos, algoritmos, tipos de API), lenguajes (Just Explained), conceptos esenciales (TecnoCroquis), y fuentes periféricas de lógica/paradojas (Pecas Explica) y finanzas (Cápsula Mental). Conceptos consolidados: [[dora-y-lease-dhcp]], [[urls-firmadas]], [[documentacion-diataxis]]. Aún sin consolidar: entidad Codist (3 fuentes), Cognix (2 fuentes, una sin ingestar) y canales con 1 fuente (TheDebugDuck, Pecas Explica, Cápsula Mental, Codist, Just Explained, TecnoCroquis).
6. **Historia de la computación** (playlist de historia, lote completo 8/8 consolidado): hitos y personas — la tesis del «padre de la informática» ([[john-von-neumann]] como autor del plano y [[alan-turing]] como padre teórico, con la atribución explícita de la fuente), [[arquitectura-von-neumann]] (First Draft del EDVAC, 1945) y [[historia-lenguajes-programacion]] (de Assembly a Kotlin, con [[john-backus]] y FORTRAN), [[margaret-hamilton]] y la programación defensiva del Apolo, la era MS-DOS de la memoria ([[memoria-dos-xms-ems]]), y dos imperios con su tesis: [[gabe-newell]] (Linux como plan de escape de Valve) y [[vermeer-frontpage]] (como producto fracasó, como idea ganó). Entidad aplazada: Jensen Huang/Nvidia (1 fuente).

## Cómo consultar

Comenzar por `index.md` (catálogo con resumen de una línea por página). En modo consulta se responde solo desde `wiki/` e `index.md`; las citas a `raw/` provienen de las páginas ya compiladas.

## Pendientes estructurales

- Verificación de datos citados (ver entrada «cierre» en `log.md`); requisitos de Fooocus (4/57 vs 5/57); nombres «cart»/«GTube» sin identificar; nombres de repos y modelos garbiñados marcados con (?) en las fuentes 50, 53, 55 y 56 (OmniRouter/Herdr, SpecJudge Gemma/Qwen, FreeLLMAPI, proveedores de APIs gratuitas).
- Verificación pendiente del dominio historia-informatica: muerte de Margaret Hamilton (30-09-2026) según Neurika, sin confirmación externa; «386 hasta 4 GB» de XMS según PC Clásico; Kathleen Booth y la creación de Assembly según Cognix.

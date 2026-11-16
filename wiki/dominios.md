# Dominios activos

Registro vivo de dominios de la wiki. Consultar antes de cada ingesta.

## Principios de taxonomía emergente (2026-11-14, decisión del usuario)

Análisis primigenio del usuario: los dominios `*-argentina` comparten el sujeto (Argentina) pero se diferencian por ejes inconsistentes (historia/sociedad por tiempo, economía por materia). Lo mismo ocurre con informática, sociedad, etc.: **hay fuentes que calzan en más de una agrupación, y la frontera cambia según la cantidad de fuentes y su contenido**. Principios derivados:

1. **Primera palabra = eje primario**: el nombre del dominio empieza por el sujeto por el que se busca (ej. `argentina-…`, `ia-…`). Principio directivo para decisiones nuevas; NO implica renombrar el corpus existente.
2. **Membresía física única, relaciones ilimitadas**: toda fuente vive en UN dominio (regla S2 del AGENTS.md) y se relaciona con todos los demás mediante cruces `[[...]]`. La ubicación física es administración provisional; los cruces son el conocimiento estable.
3. **Toda decisión de dominio es provisional por defecto**: la consolida el lint (cierre de tramo o cada ~30-40 fuentes ingestadas), no la ingesta. Un error de ubicación con buenos cruces es barato y reversible.
4. **Disparadores objetivos de lint** (decisión del usuario siempre encima): dominio >30 fuentes o sub-temas distintos → proponer división; dominio <5 fuentes sin crecimiento en 2-3 tramos → proponer fusión/absorción; solapamiento >30% entre dos dominios → proponer fusión; duda de destino en >20% de un tramo → la frontera está mal, ajustar la frontera.
5. **Migraciones globales solo por dolor, no por lógica**: los renombres masivos se ejecutan cuando el costo operativo los justifica, no por coherencia estética — los invariants (enlaces por nombre, cruces, log) sobreviven cualquier reorganización.

**Propuestas pendientes de decisión del usuario (registradas 2026-11-14, NO ejecutar sin confirmación)**:
- (a) Unificar los 3 dominios `*-argentina` en un dominio único `argentina/` con sub-temas (`historia/`, `sociedad/`, `economia/`) y página-hub `argentina` (hub propuesto, no creado) — resuelve la multimembresía por país y debilita la sub-pregunta temporal de clasificación; alternativa liviana: renombrar con prefijo (`argentina-historia/` etc.). Costo: migración de 38 resúmenes + raws + índices.
- (b) `economia-argentina/` es frágil (4 fuentes, 1 página, solapamiento natural con sociedad-argentina) — candidato a absorción si no acumula fuentes propias en próximos tramos (disparador 4.3).
- (c) `sociedad-argentina/` vigilar umbral de ~30 fuentes (creció 11→22 en una pasada): candidato a división futuro (actualidad-política vs cultura-mediática).

## Historial de reestructuraciones
Reestructuración aprobada por el usuario (2026-11-11): `ia-uso-practico/` se dividió en 3
(`ia-local/`, `agentes-de-codigo/`, `ia-uso-practico/` reducido); el bucket fantasma
`raw/inteligencia-artificial/` se redistribuyó a los dominios de sus resúmenes; `general/` (vacío) se eliminó.

Reestructuración aprobada por el usuario (2026-11-12): se crearon `sociedad-argentina/` (11 fuentes de
actualidad argentina y regional de la lista mixta + la página de concepto `familia-pisa`) y
`modelos-llm-locales/` (14 fuentes comparativas por modelo + 8 entidades, segregadas de `ia-local/`,
que conserva motores, hardware, cuantización general y economía del uso local); 6 páginas fuera de
sitio se reubicaron y la entidad `puchito-cine` volvió a `general/` (3 de sus 4 fuentes viven allí).
Detalle en `log.md`.

| Dominio | Alcance |
| --- | --- |
| `ciencias-tierra/` | Clima, océano y geología (Coordenada Crítica y afines). |
| `casa-calefaccion/` | Calefacción, refrigeración y confort térmico del hogar: estufas y diseño térmico, solar pasivo, baterías térmicas, ventilación y energía casera (playlist Casa/Calefacción de Jorge J. Izaguirre). |
| `python-practico/` | Librerías, herramientas y proyectos prácticos de Python: logging (Loguru), automatización, DuckDB, librerías para analítica y micro-SaaS (playlist Python práctico). |
| `ia-local/` | **Inferencia local de LLMs**: motores (llama.cpp, Strata, LM Studio, Ollama), hardware y cuantización general, economía del uso local (cloud gratis, Mac Studio vs suscripción), páginas-hub y canales técnicos del banco de pruebas (Nichonauta, CodeSimple, Jorge Marfil, Cognix, atareao, Apasoft); las familias de modelos se segregaron a `modelos-llm-locales/` (reestructuración aprobada por el usuario, 2026-11-12). |
| `agentes-de-codigo/` | **Agentes de código y sus arneses**: Pi, MinAgent, DeepSeek Harness, OpenCode, Kilo Code, Herdr/multiplexores, metodologías (ODD, Gentle AI). |
| `ia-uso-practico/` | **IA práctica general**: agregación de APIs y proveedores gratis, evaluación de LLMs (Promptfoo/Ragas), herramientas open source, productividad, asistentes (Odysseus), canales transversales (Alejavi Rivera, Xavier Mitjana, Fazt, La Hora Maker…). |
| `ia-media-generativa/` | Imagen, voz y video generativos: generación local y sin censura, clonación de voz, marcas de agua (Flux, ComfyUI, Midjourney, HyperFrames…). |
| `ia-critica-y-fronteras/` | Crítica y límites de los LLM, industria, fronteras de modelos, asistentes personales y memoria (Gary Marcus, IA China, world models, Clawdbot, NotebookLM/Obsidian). |
| `critica-tecnologica/` | Poder algorítmico, medios, política digital y su crítica filosófica y social (Café Kyoto y afines). |
| `historia-informatica/` | Historia de la computación: software, empresas, lenguajes y hitos (playlist del usuario: Novell, MS-DOS, FORTRAN, FrontPage, Norton, etc.). |
| `informatica-teoria/` | Fundamentos de programación, redes y teoría de la computación (estructuras de datos, algoritmos, POO, testing, SSH/DNS/ARP/DHCP, Git, Kafka; playlist Informatica-Teoria). |
| `desarrollo-personal/` | **Crecimiento personal y vida práctica**: suerte y decisión, dinero, gestión del tiempo, flow, hábitos, psicología aplicada; lo afín a IA se cruza con ia-uso-practico (lista del usuario, 2026-11-12). |
| `historia-argentina/` | Historia política, territorial y económica de Argentina desde divulgación: siglos XIX-XX, caudillos, federalismo, Malvinas, infraestructura (playlist «Historia Argentina», 2026-11-12). |
| `economia-argentina/` | Divulgación económica y de seguridad social argentina: jubilaciones, pensiones, sistema previsional y política económica (playlist mixta del usuario, 2026-11-12). |
| `sociedad-argentina/` | Actualidad social, política, judicial y educativa de Argentina y la región desde divulgación: familia PISA y colapso educativo, justicia, medios y política (Pergolini, Kreimer/Brasil), precariedad del reparto y marginalidad (reestructuración aprobada por el usuario, 2026-11-12). |
| `general/` | Bucket residual: fuentes que aún no justifican un dominio propio (tras la reestructuración del 2026-11-12: experimentos sociales, industria cultural y medios, demografía/trabajo global, historias religiosas y canales de una sola fuente; se evalúa reubicación o dominio nuevo en la consolidación). |
| `wl/` | **Estación provisional de triage** — fuentes del backlog «Ver más tarde» pendientes de consolidación; al consolidar cada tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Hub de lectura humana: [[indice-wl]]; los futuros tramos WL se ingestan directamente aquí. |
| `electronica-practica/` | **Electricidad y electrónica básica/práctica**: componentes (LDR, transistores, condensadores, diodos, MOSFET), circuitos y montajes (LEDs, fuentes conmutadas, PCB), teoría de circuitos (Kirchhoff) y herramientas (KiCad, EasyEDA, PLC LOGO). Creado por decisión del usuario (2026-11-14) al curar favoritos de Chrome — clúster ~40 fuentes (carpetas Gral/Electricidad Basica Teorica, Gral/Electronica Basica, Electronica y TV, Docencia/Electromecanica) + WL-81/84 desde general/. |
| `electromecanica/` | **Electromecánica y didáctica técnica**: PLCs (LOGO! Siemens, Cade Simu, LDmicro), instalaciones y energía (factor de potencia, tierras, solar fotovoltaico, MPPT), proyectos caseros (fuentes capacitivas, detectores de metales, electrolisis/niquelado, cautines) y teoría de base (Kirchhoff, diodos/capacitores/inductores/transistores). Creado por decisión del usuario (2026-11-15) para la carpeta Docencia/Material Didactico Varios — ventana Electromecanica FAV-490..549 (~60 fuentes). |
| `salud-fitness/` | **Salud y fitness en video**: ejercicio y movilidad (fuerza 40+/60+, isométricos, estiramientos), grasa corporal y metabólico, nutrición deportiva y sueño (playlist «Salud», 2026-11-13); el clúster fitness-senior de `general/` queda cruzado, no movido. |
| `cocina/` | Cocina casera y recetas en video: panadería/pizzas, licores, carnes, técnicas culinarias; eje argentino/rioplatense (playlist del usuario, 2026-11-12). |
| `self-hosting/` | **Self-hosting y homelab**: servidores caseros, Docker/CasaOS, Proxmox, Pi-hole, Tailscale, despliegue de apps (Dokploy), crítica de la nube (playlist del usuario, 2026-11-15). Creado por decisión del usuario en la ingesta de la playlist 11 entradas.
| `informatica/` | **Informática y desarrollo de software**: lenguajes y ecosistemas (Python, Node/Express), herramientas de dev (pip/uv, APIs), IA aplicada a software (LLM frontends, RAG, proxies de IA). Creado por decisión del usuario (2026-11-15) al curar `Docencia/Informatica` (46 fuentes en cola) + 7 ya procesadas desde la ventana Vs+Docencia. |

| ~~`modelos-llm-locales/`~~ | **Fusionado en `ia-local/`** (2026-11-15, decisión del usuario tras lint: solapamiento muy alto herramientas/modelos locales; 22 fuentes migradas sin colisiones). |

**Evaluación de dominios nuevos (2026-11-16, cierre del pedido L35, T74-T76)**: ninguna fuente de los tramos 61-72 (59 pares útiles) justifica dominio nuevo — todas encajan en dominios existentes (batería Nichonauta → ia-local por precedente; WL-437 economía argentina → sociedad-argentina dado que `economia-argentina/` sigue frágil, propuesta b vigente). Sin fusión/división nueva que proponer; propuestas pendientes (a), (b) y (c) anteriores continúan abiertas para decisión del usuario.

# Dominios activos

Registro vivo de dominios de la wiki. Consultar antes de cada ingesta.

## Principios de taxonomía emergente (2026-11-14, decisión del usuario)

Análisis primigenio del usuario: los dominios `*-argentina` comparten el sujeto (Argentina) pero se diferencian por ejes inconsistentes (historia/sociedad por tiempo, economía por materia). Lo mismo ocurre con informática, sociedad, etc.: **hay fuentes que calzan en más de una agrupación, y la frontera cambia según la cantidad de fuentes y su contenido**. Principios derivados:

1. **Primera palabra = eje primario**: el nombre del dominio empieza por el sujeto por el que se busca (ej. `argentina-…`, `ia-…`). Principio directivo para decisiones nuevas; NO implica renombrar el corpus existente.
2. **Membresía física única, relaciones ilimitadas**: toda fuente vive en UN dominio (regla S2 del AGENTS.md) y se relaciona con todos los demás mediante cruces `[[...]]`. La ubicación física es administración provisional; los cruces son el conocimiento estable.
3. **Toda decisión de dominio es provisional por defecto**: la consolida el lint (cierre de tramo o cada ~30-40 fuentes ingestadas), no la ingesta. Un error de ubicación con buenos cruces es barato y reversible.
4. **Disparadores objetivos de lint** (decisión del usuario siempre encima): dominio >30 fuentes o sub-temas distintos → proponer división; dominio <5 fuentes sin crecimiento en 2-3 tramos → proponer fusión/absorción; solapamiento >30% entre dos dominios → proponer fusión; duda de destino en >20% de un tramo → la frontera está mal, ajustar la frontera.
5. **Migraciones globales solo por dolor, no por lógica**: los renombres masivos se ejecutan cuando el costo operativo los justifica, no por coherencia estética — los invariants (enlaces por nombre, cruces, log) sobreviven cualquier reorganización.

**Resolución de las propuestas registradas 2026-11-14 (ejecutadas por decisión del usuario 2026-11-21: «ejecute todos esos cambios pendientes»)**:
- (a) **EJECUTADA (2026-11-21)**: los 3 dominios `*-argentina` se unificaron físicamente en `argentina/{historia,sociedad,economia}/` con espejo `raw/argentina/...` (130 archivos migrados con git mv, citas y filas de index corregidas; página-hub [[argentina]]).
- (b) **RESUELTA** por la unificación: `economia-argentina` dejó de ser dominio frágil y hoy es el sub-tema `argentina/economia/`.
- (c) **RESUELTA** por la unificación: `sociedad-argentina` es el sub-tema `argentina/sociedad/`; la «división» pendiente se satisface con la estructura por sub-temas.
- (d) **EJECUTADA (2026-11-21)**: taxonomía de hubs de primer nivel — ver la sección «Taxonomía de hubs» más abajo. Cero migración adicional de carpetas: los hubs son una vista de presentación.

## Taxonomía de hubs de primer nivel (2026-11-21, aprobada por el usuario; ejecutada)

El primer nivel se presenta en ~6 hubs + sueltos (vista de lectura; la física de carpetas no cambia salvo `argentina/`, ya unificada):

| Hub | Dominios que agrupa |
| --- | --- |
| **`ia/`** | ia-local, ia-uso-practico, ia-media-generativa, ia-critica-y-fronteras, agentes-de-codigo, futuro-programacion, educacion-ia, informatica |
| **`electronica-y-energia/`** | electronica-practica, electromecanica, microcontroladores, leds-y-pantallas, self-hosting |
| **`argentina/`** | argentina/historia, argentina/sociedad, argentina/economia (dominio físico unificado, 2026-11-21) |
| **`hogar-y-vida-practica/`** | casa-calefaccion, construccion-y-vivienda, cocina, salud-fitness, desarrollo-personal |
| **`tecnologia-y-sociedad/`** | critica-tecnologica, estafas-y-consumidor, ciencias-tierra |
| **`historia-y-archivo/`** | historia-informatica, naufragios-y-exploracion |

**Fuera de hubs (primer nivel suelto)**: `python-practico/`, `informatica-teoria/`, `general/` y `wl/` (estaciones operativas, sección «proceso»). Presentación de la vista en [[overview]] («Taxonomía de hubs»). Reversible por diseño.
- (b) `economia-argentina/` es frágil (4 fuentes, 1 página, solapamiento natural con sociedad-argentina) — candidato a absorción si no acumula fuentes propias en próximos tramos (disparador 4.3).
- (d) **Taxonomía de hubs de primer nivel (APROBADA por el usuario 2026-11-21, PENDIENTE de ejecución)**: presentación de `overview.md`/`dominios.md` con hubs abarcativos para reducir el primer nivel (~30 → ~7 hubs + sueltos). Agrupación aprobada: **`ia/`** (ia-local, ia-uso-practico, ia-media-generativa, ia-critica-y-fronteras, agentes-de-codigo, futuro-programacion, educacion-ia, informatica); **`electronica-y-energia/`** (electronica-practica, electromecanica, microcontroladores, leds-y-pantallas, self-hosting); **`argentina/`** (historia-argentina, sociedad-argentina, economia-argentina — versión de hub de la propuesta (a), SIN migración física de los 38 resúmenes); **`hogar-y-vida-practica/`** (casa-calefaccion, construccion-y-vivienda, cocina, salud-fitness, desarrollo-personal); **`tecnologia-y-sociedad/`** (critica-tecnologica, estafas-y-consumidor, ciencias-tierra); **`historia-y-archivo/`** (historia-informatica, naufragios-y-exploracion). Fuera de hubs (primer nivel suelto): python-practico, informatica-teoria, general/ y wl/ (estaciones operativas, sección «proceso»). Cero migración de carpetas: solo cambia la vista; reversible por diseño. Ejecutar en la próxima consolidación.

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
| `agentes-de-codigo/` | **Agentes de código y sus arneses** (tras la división 2026-11-16: el debate socio-laboral del oficio se segregó a futuro-programacion/): Pi, MinAgent, DeepSeek Harness, OpenCode, Kilo Code, Herdr/multiplexores, metodologías (ODD, Gentle AI). |
| `ia-uso-practico/` | **IA práctica general**: agregación de APIs y proveedores gratis, evaluación de LLMs (Promptfoo/Ragas), herramientas open source, productividad, asistentes (Odysseus), canales transversales (Alejavi Rivera, Xavier Mitjana, Fazt, La Hora Maker…). |
| `ia-media-generativa/` | Imagen, voz y video generativos: generación local y sin censura, clonación de voz, marcas de agua (Flux, ComfyUI, Midjourney, HyperFrames…). |
| `ia-critica-y-fronteras/` | Crítica y límites de los LLM, industria, fronteras de modelos, asistentes personales y memoria (Gary Marcus, IA China, world models, Clawdbot, NotebookLM/Obsidian). |
| `critica-tecnologica/` | Poder algorítmico, medios, política digital y su crítica filosófica y social (Café Kyoto y afines). |
| `historia-informatica/` | Historia de la computación: software, empresas, lenguajes y hitos (playlist del usuario: Novell, MS-DOS, FORTRAN, FrontPage, Norton, etc.). |
| `informatica-teoria/` | Fundamentos de programación, redes y teoría de la computación (estructuras de datos, algoritmos, POO, testing, SSH/DNS/ARP/DHCP, Git, Kafka; playlist Informatica-Teoria). |
| `desarrollo-personal/` | **Crecimiento personal y vida práctica**: suerte y decisión, dinero, gestión del tiempo, flow, hábitos, psicología aplicada; lo afín a IA se cruza con ia-uso-practico (lista del usuario, 2026-11-12). |
| `argentina/` (sub-temas `historia/`, `sociedad/`, `economia/`) | **Argentina** (dominio unificado 2026-11-21, propuesta (a) ejecutada; unifica los ex `historia-argentina/` (33), `sociedad-argentina/` (82) y `economia-argentina/` (15)). Sub-temas: `historia/` — historia política, territorial y económica desde divulgación (siglos XIX-XX, caudillos, federalismo, Malvinas, infraestructura); `sociedad/` — actualidad social, política, judicial y educativa de Argentina y la región (familia PISA, justicia, medios, precariedad, marginalidad); `economia/` — divulgación económica y seguridad social (jubilaciones, pensiones, política económica). Hub: [[argentina]]. |
| `general/` | Bucket residual: fuentes que aún no justifican un dominio propio (tras la reestructuración del 2026-11-12: experimentos sociales, industria cultural y medios, demografía/trabajo global, historias religiosas y canales de una sola fuente; se evalúa reubicación o dominio nuevo en la consolidación). |
| `wl/` | **Estación provisional de triage** — fuentes del backlog «Ver más tarde» pendientes de consolidación; al consolidar cada tramo, las fuentes migran a su dominio temático definitivo (reestructuración aprobada por el usuario, 2026-11-12). Hub de lectura humana: [[indice-wl]]; los futuros tramos WL se ingestan directamente aquí. |
| `electronica-practica/` | **Electricidad y electrónica básica/práctica** (tras la división 2026-11-16: fundamentos, componentes, fuentes, audio, PCB y herramientas; microcontroladores y LEDs/pantallas segregados): componentes (LDR, transistores, condensadores, diodos, MOSFET), circuitos y montajes (LEDs, fuentes conmutadas, PCB), teoría de circuitos (Kirchhoff) y herramientas (KiCad, EasyEDA, PLC LOGO). Creado por decisión del usuario (2026-11-14) al curar favoritos de Chrome — clúster ~40 fuentes (carpetas Gral/Electricidad Basica Teorica, Gral/Electronica Basica, Electronica y TV, Docencia/Electromecanica) + WL-81/84 desde general/. |
| `electromecanica/` | **Electromecánica y didáctica técnica**: PLCs (LOGO! Siemens, Cade Simu, LDmicro), instalaciones y energía (factor de potencia, tierras, solar fotovoltaico, MPPT), proyectos caseros (fuentes capacitivas, detectores de metales, electrolisis/niquelado, cautines) y teoría de base (Kirchhoff, diodos/capacitores/inductores/transistores). Creado por decisión del usuario (2026-11-15) para la carpeta Docencia/Material Didactico Varios — ventana Electromecanica FAV-490..549 (~60 fuentes). |
| `salud-fitness/` | **Salud y fitness en video**: ejercicio y movilidad (fuerza 40+/60+, isométricos, estiramientos), grasa corporal y metabólico, nutrición deportiva y sueño (playlist «Salud», 2026-11-13); el clúster fitness-senior de `general/` queda cruzado, no movido. |
| `cocina/` | Cocina casera y recetas en video: panadería/pizzas, licores, carnes, técnicas culinarias; eje argentino/rioplatense (playlist del usuario, 2026-11-12). |
| `self-hosting/` | **Self-hosting y homelab**: servidores caseros, Docker/CasaOS, Proxmox, Pi-hole, Tailscale, despliegue de apps (Dokploy), crítica de la nube (playlist del usuario, 2026-11-15). Creado por decisión del usuario en la ingesta de la playlist 11 entradas.
| `naufragios-y-exploracion/` | **Naufragios, pecios y expediciones**: relatos de exploración, islas y desastres marítimos desde divulgación (Titanic/Tromelin/Vinland/Balsa Acali/Bartholomew Roberts). Creado por decisión del usuario (lint 2026-11-16). |
| `estafas-y-consumidor/` | **Estafas, fraudes y consumidor**: timos financieros e informáticos (hack Binance, robo PayPal, estafa smart TV, Y2K, lavado de dinero) y protección del consumidor. Creado por decisión del usuario (lint 2026-11-16). |
| `microcontroladores/` | **Microcontroladores y sus ecosistemas**: Arduino, ESP32/ESP8266, Raspberry Pico, FPGA, FreeRTOS/millis, conectividad (ESP-NOW, NRF24, WiFi) e IA en MCU. Creado por división de electronica-practica (decisión del usuario, lint 2026-11-16). |
| `leds-y-pantallas/` | **LEDs addressable y pantallas**: WS2812/tiras/matrices/cubos, OLED/TFT, controladores y librerías (WLED, FastLED, Max7219). Creado por división de electronica-practica (decisión del usuario, lint 2026-11-16). |
| `futuro-programacion/` | **Impacto de la IA en el oficio de programar**: empleo y juniors, fin del código manual, vibe coding, metodologías del debate, burnout y salud del oficio; las herramientas/harnesses quedan en agentes-de-codigo. Creado por división de agentes-de-codigo (decisión del usuario, lint 2026-11-16). |
| `informatica/` | **Informática y desarrollo de software**: lenguajes y ecosistemas (Python, Node/Express), herramientas de dev (pip/uv, APIs), IA aplicada a software (LLM frontends, RAG, proxies de IA). Creado por decisión del usuario (2026-11-15) al curar `Docencia/Informatica` (46 fuentes en cola) + 7 ya procesadas desde la ventana Vs+Docencia. **Evaluación lint 2026-11-21** (~72 fuentes, > umbral 30): NO se divide físicamente — los sub-temas (lenguajes, dev-tools, IA-aplicada) no tienen fronteras claramente diferenciadas con evidencia de dolor de clasificación, la mayoría de sus fuentes WL ya llevan cruces hacia ia-*/informatica-teoria, y el hub `ia/` resuelve la búsqueda de primer nivel. Se re-evalúa si el dolor de clasificación aparece (>20% de dudas en un tramo, disparador 4.4). |
| `educacion-ia/` | **Educación e IA** (dominio de investigación principal del usuario, creado por decisión 2026-11-21): IA como atajo cognitivo en estudiantes, PISA y colapso educativo medido, empleo junior y futuro laboral juvenil, bienestar adolescente (pantallas/ansiedad), pedagogía e historia de la tecnología educativa (Logo/MIT). 26 fuentes migradas desde 8 dominios; hub: [[educacion-ia-hub]]; síntesis viva: [[sintesis-educacion-ia]]. |
| `construccion-y-vivienda/` | **Construcción y vivienda**: obra y técnicas constructivas (steel framing, SIP, cimientos, techos, revocos), aislamiento térmico y humedades, reformas y autoconstrucción, diseño de casas y espacios, tiny houses, costos/terrenos (playlist «Casa» del usuario, 2026-11-17). Creado por decisión del usuario en la ingesta de la playlist de 77 entradas. |

| ~~`modelos-llm-locales/`~~ | **Fusionado en `ia-local/`** (2026-11-15, decisión del usuario tras lint: solapamiento muy alto herramientas/modelos locales; 22 fuentes migradas sin colisiones). |

**Evaluación de dominios nuevos (2026-11-16, cierre del pedido L35, T74-T76)**: ninguna fuente de los tramos 61-72 (59 pares útiles) justifica dominio nuevo — todas encajan en dominios existentes (batería Nichonauta → ia-local por precedente; WL-437 economía argentina → argentina/sociedad por la frontera vigente entonces).

**Cierre del pendiente JEV (lint 2026-11-21, T3)**: «el caso JEV WL-346/350/353 queda cruzado entre dominios» quedó RESUELTO COMO NO-APLICABLE: las 3 fuentes tratan el producto **Jev** (demo y lanzamiento, contraste temático), no la paradoja de Jevons; su tema común ya vive en [[routing-por-coste]] (ia-uso-practico). El concepto [[paradoja-jevons-software]] queda con sus fuentes propias (WL-552/602/662/676/679/683/692/694/655/640/644/651/709/710). El pendiente «canales de 1 fuente sin entidad» de casa-2 ya estaba resuelto con criterio «solo si aporta: ninguno justifica hoy» (2026-11-21, log).

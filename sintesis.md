# Síntesis acumulativa del estado del conocimiento

Registro de hilos temáticos por dominio. Se actualiza en cada consolidación.

## Hilo 1: Casa / Calefacción (casa-calefaccion/) — **CONSOLIDADO**

- **Fuentes**: 13/13 (playlist Casa/Calefacción de Jorge J. Izaguirre)
- **Conceptos creados**: [[estufas-rocket]], [[solar-pasivo-y-ventilacion]], [[calefaccion-de-emergencia]], [[biogas-casero]] (absorben 13 resúmenes huérfanos)
- **Entidades**: Jorge J. Izaguirre (canal), Codist (3 fuentes), TheDebugDuck, Pecas Explica, Cápsula Mental, Just Explained, TecnoCroquis
- **Estado**: Lote completo, consolidación diferida finalizada, grafo Obsidian limpio (showOrphans=false, search «log» limpiado)
- **Pendientes documentados**: entidad Codist (3 fuentes), canales con 1 fuente, Jensen Huang (historia-informatica)

## Hilo 2: Ciencias de la Tierra (ciencias-tierra/) — **ESTABLE**

- **Fuentes**: 3 (Coordenada Crítica: AMOC, El Niño post-súper, Súper El Niño 1877)
- **Conceptos**: [[amoc]] (frenado, colapso abierto, impactos asimétricos), [[el-nino]] (oscilador retardado, La Niña, calor diferido, huracanes, dengue, precios, corales), [[hambruna-global-1877]] (tres océanos récord, >50M muertos, fundó predicción ENSO)
- **Entidad**: [[coordenada-critica]] (canal, política de correcciones en descripción)
- **Pendientes**: ninguna activa

## Hilo 3: Crítica Tecnológica (critica-tecnologica/) — **ESTABLE**

- **Fuentes**: 11 (Café Kyoto: video-ensayos poder algorítmico, filosofía, política argentina)
- **Conceptos**: [[sociedades-de-control]] (Foucault→Deleuze), [[industria-cultural]] (Adorno/Horkheimer), [[efecto-enjambre]] (Berardi: multitud/red/enjambre), [[estetica-de-la-regresion]] (infantilización, hipersticiones), [[doctrina-del-odio]] (insulto como tecnología política), [[construccion-del-acontecimiento]] (Verón, semiosis, algoritmos), [[radicalizacion-digital]] (alt-right pipeline), [[meritocracia-y-moral-del-esfuerzo]] (Weber/Han/Benjamin), [[low-tech-y-fuga]] (soberanía tecnológica, desobediencias estéticas)
- **Entidad**: [[cafe-kyoto]] (canal, 11 fuentes, conducido por Juan Felipe)
- **Pendientes**: ninguna

## Hilo 4: IA Crítica y Fronteras (ia-critica-y-fronteras/) — **ACTIVO**

- **Fuentes**: 12+ (Gary Marcus, IA China, world models, Clawdbot, NotebookLM/Obsidian memoria)
- **Conceptos**: [[burbuja-de-la-ia]] (economía LLM, token maximum, señales desinflado CoreWeave/Anthropic/OpenAI-Emiratos, contexto político Gary Marcus), [[limites-de-los-llm]] (alucinación, autocompletado vs hechos, IA simbólica), [[ia-y-sociedad]] (democracia, desinformación, riesgos, regulación, empleo), [[world-models]] (Genie 3, simulación píxeles, límite 1 min, gradiente DLSS↔Genie), [[computer-use]] (ChatGPT Desktop vision vs Agent Desktop texto, Clawdbot acceso total), [[ia-china]] (Z.ai/GLM, Manus, Kimi, DeepSeek, Qwen, MiniMax, Kling — 11 casos vía gratuita, ~1/10 inversión US), [[notebooklm-ecosistema]] (ingesta masiva, export editable, Antigravity, SurfSense open), [[obsidian-memoria-agentes]] (raw→wiki, WebClipper, skills Kepano, Clawdbot archivado), [[clonacion-de-voz]] (VoiceBox local, MiniMax/MyVocal nube, Suno canciones)
- **Entidades**: [[gary-marcus]], [[gustavo-entrala]], [[dot-csv-lab]], [[alejavi-rivera]], [[nextgen-ia-hub]], [[hdeleon-clips]], [[migue-baena-ia]], [[pablo-tapias]]
- **Pendientes**: consolidar 11 casos IA China (fuente reciente), world models gradiente, Clawdbot prompt injection risk

## Hilo 5: IA Media Generativa (ia-media-generativa/) — **ACTIVO**

- **Fuentes**: 10+ (FLUX, ComfyUI, Fooocus, clonación voz, marcas agua, Remotion, HyperFrames)
- **Conceptos**: [[generacion-local-de-imagenes]] (FLUX/Stable Diffusion local, Fooocus/ComfyUI/GGUF/RunPod, Ideogram 4.0, vídeo local Bernini/LTX, escalera acceso gratuito, LoRAs por tareas, «sin censura»), [[clonacion-de-voz]] (VoiceBox local open source, MiniMax/MyVocal nube, Suno canciones, calidad input + consentimiento)
- **Entidades**: [[darellanodev]] (Herramientas IA: Remotion+OpenCode, HyperFrames+OpenCode), [[alejavi-rivera]] (8 fuentes: FLUX, IA china, NotebookLM, open source, VPS/Docker, clonación voz, FreeLLMAPI), [[creatuia]], [[academia-sd]], [[xavier-mitjana]], [[codesimple]], [[alan-daitch]]
- **Pendientes**: Fooocus/ComfyUI tutoriales, FLUX Kontext, marcas agua invisibles (SynthID 5 agujeros)

## Hilo 6: IA Local y agentes (ia-local/ + agentes-de-codigo/ + ia-uso-practico/) — **✅ CONSOLIDADO (2026-11-11)**

> **Reestructuración aprobada** (2026-11-11): 3 dominios nuevos de la división de ia-uso-practico; raw/inteligencia-artificial redistribuido; general/ eliminado (ver wiki/dominios.md).

- **Playlist**: IA Local (58 videos, PLeaYlHPISoSQ) — **57 procesadas + 1 SKIP (video privado)**.
- **Entidades nuevas del cierre**: [[strata]] (motor a medida para Qwen 3.8 Flash Next: caché de expertos adaptativa 72 %, CPU+GPU pipeline, lectura chunked 14-26×; la idea ya saltó a llama.cpp vía PR #29887), [[bitnet]] / [[ternary-bonsai]] (LLMs ternarios 1.58-bit — QAT con straight-through estimator; el muro era el reentrenamiento, Bonsai 2 lo rompe con distilación desde pesos reales: Qwen 3.8 27B a 5.9 GB, 98.2 %), [[ornith]] 1.5 9B y [[frognano]] 4B (fine-tunes de Qwen: el primero gana en desarrollo agéntico, el segundo no reemplaza al original), [[minagent]] (agente terminal minimalista sobre Pi, «no sobreingeniería»), [[lm-studio]] (gestor: JIT loading, truco KV F16→Q8, MCP Exa, Copilot local Ask/Plan), [[jorge-marfil]] (laboratorio con trampas: **Qwen 3.8 Flash Next 3-bit en una 3060 = 17/17, empata con Claude Opus 5**), [[abi]] (Kaggle GPU gratis vía agente), [[bartowski]] (cuantizador de referencia GGUF).
- **Tesis macro del cierre**: la IA local de 2026 ya corre modelos de primer nivel en hardware de hogar — pero **la RAM manda sobre la VRAM** para los MoE (180B = 125B cerebro + 51B tabla n-grams en SSD + 4B MTP; «si no cabe en la despensa, no corre»), los benchmarks engañan (miden decodificación; la espera real es preprocesamiento; «¿qué versión contra cuál? ¿escritura o lectura?»), y el valor se desplazó al **arnés**: prompts estructurados + código + cachés (expertos, KV Q8) rinden más que comprar un modelo más inteligente.
- **Economía actualizada**: GPU ≥16 GB = commodity que se revaloriza (DRAM +172 %); memoria soldada = prima irrevendible; Kaggle = laboratorio gratis, no producción; comprar RAM solo para esto → mejor la API.
- **Ver overview.md** para las 17 decisiones de arquitectura y contradicciones.

## Hilo 7: Informática Teoría (informatica-teoria/) — **ACTIVO**

- **Fuentes**: 10+ (Codist: estructuras datos, APIs, algoritmos; Torti Code: patrones, concurrencia, testing, POO; TecnoCroquis: esenciales; Pedro Lino Cáceres: redes/Cisco)
- **Conceptos**: [[documentacion-diataxis]] (4 tipos sin mezclar, ADRs, docs as code, agents.md), [[dora-y-lease-dhcp]] (4 mensajes DORA, lease renovación), [[historia-lenguajes-programacion]] (Assembly→Kotlin, compilador como apuesta, interoperabilidad), [[memoria-dos-xms-ems]] (5 memorias MS-DOS, 1 MB frontera), [[arquitectura-von-neumann]] (First Draft EDVAC 1945, cuello botella Backus), [[resumen-every-data-structure-simply-explained-in-25-minutes-codist]], [[resumen-every-type-of-api-simply-explained-in-9-minutes-codist]], [[resumen-25-algorithms-simply-explained-in-40-minutes-codist]], [[resumen-6-patrones-de-diseno-que-ya-usas-sin-saberlo-torti-code]], [[resumen-concurrencia-vs-paralelismo-explicado-como-debieron-ensenartelo-torti-code]], [[resumen-todo-lo-que-sabes-de-testing-esta-al-reves-torti-code]], [[resumen-poo-el-error-de-confundir-sus-4-pilares-torti-code]], [[resumen-todos-los-conceptos-de-programacion-explicados-en-22-minutos-tecnocroquis]]
- **Entidades**: [[pedro-lino-caceres]], [[john-backus]], [[john-von-neumann]], [[alan-turing]], [[margaret-hamilton]], [[gabe-newell]], [[vermeer-frontpage]]
- **Pendientes**: ninguna activa

## Hilo 8: Python Práctico (python-practico/) — **CONSOLIDADO**

- **Fuentes**: 7/7 (lote completo, consolidación al momento sin aplazamiento)
- **Conceptos**: [[logging-en-python]] (Loguru), [[automatizacion-con-python]] (polars/playwright/fastapi), [[codigo-de-plomeria]] (arquitectura backend anti-plomería), [[mapa-del-ecosistema-python]] (taxonomía por rol, 23 librerías), [[bases-de-datos-especializadas]] (tesis nichos, matriz decisión polars/automatizacion), [[micro-saas-con-python]] (stack 4 movimientos)
- **Entidades**: [[loguru]], [[polars]], [[playwright]], [[fastapi]], [[pydantic]], [[sqlmodel]], [[dramatiq]], [[dynaconf]], [[manim]], [[faker]], [[gradio]], [[diagrams]], [[marimo]], [[duckdb]], [[alembic]], [[celery]], [[informatica-teoria/cognix]]
- **Estado**: Lote completo, overview/sintesis actualizados, push done.

## Hilo 9: Historia Informática (historia-informatica/) — **ESTABLE**

- **Fuentes**: 12+ (Jensen Huang, FORTRAN, FrontPage, Gabe Newell, MS-DOS memoria, von Neumann, Apolo 11, lenguajes parte 2 Cognix)
- **Conceptos**: [[arquitectura-von-neumann]], [[memoria-dos-xms-ems]], [[historia-lenguajes-programacion]]
- **Entidades**: [[jensen-huang]], [[john-backus]], [[gabe-newell]], [[john-von-neumann]], [[alan-turing]], [[margaret-hamilton]], [[vermeer-frontpage]]
- **Pendientes**: entidad Jensen Huang (biografía), consolidar serie lenguajes Cognix

---

## Próximas acciones de consolidación

1. **Cierre lote ia-local (58/58)**: consolidación final + overview/sintesis completos + push
2. **Revisión cruzada**: contradicciones Gemma/Qwen, KV Q8 vs Q4, MTP aparte/integrado, licencia TimesFM
3. **Entidades pendientes**: ninguna activa (historia-argentina consolidada 2026-11-12; verificación de datos sin enlace pendiente) (atareao, Apasoft, Cognix, MinAgent, Herdr consolidadas). **Pendiente estructural**: migración de dominios aprobada (dividir ia-uso-practico en 3; redistribuir raw/inteligencia-artificial; eliminar general/).
4. **Conceptos pendientes hardware**: CPU sin GPU, guía compra, Mac Studio vs AMD, Kaggle, servidor 32 GB VRAM gratis

---

## Hilo 12: Historia Argentina (historia-argentina/) — **CONSOLIDADO**

- **Fuentes**: 9/9 (lista «Historia Argentina», sin SKIP)
- **Conceptos**: [[aduana-portena]] (renta aduanera como eje de la economía política: Pigna + Mundo Olvidado), [[portenocentrismo]] (percepción cultural de la puerta única), [[cuestion-malvinas]] (testimonial Pigna vs. revisionista Gullo, sin resolver)
- **Entidades**: [[felipe-pigna]], [[marcelo-gullo-omodeo]] (2 fuentes), [[ventosa-periodismo]], [[mundo-olvidado]], [[puchito-cine]], [[rastros-argentinos]], [[planeta-wow]], [[del-plano-al-hierro]]
- **Tesis dominante del corpus**: los mapas y las instituciones argentinas son resultados de decisiones económicas — la renta aduanera explica unitarios/federales y la costa vacía; los «vacíos» del mapa no son accidentes (pregunta clave: «¿a quién no le sirvió?»)
- **Registro ideológico**: la tesis anglosajona de Gullo quedó etiquetada como opinión del autor; los resúmenes distinguen opinión vs. hecho documentado
- **Pendientes**: verificación de créditos de Plata dulce, cifras sin cita (Planeta Wow, Del Plano al Hierro), lint de contradictions cruzadas con historia-informatica (ninguna detectada)


# WL-340 · Mi stack real de IA para programar: agentes, imágenes, cloud y más

- **Fuente**: [`raw/agentes-de-codigo/2026-09-23-mi-stack-real-de-ia-para-programar-agentes-imagenes-cloud-y-mas.md`](../../raw/agentes-de-codigo/2026-09-23-mi-stack-real-de-ia-para-programar-agentes-imagenes-cloud-y-mas.md) — vídeo de YouTube `tR632IiOxaY`
- **Canal**: Fazt
- **Publicado**: 2026-09-23 · **Duración**: 26:34
- **Tipo**: tutorial/demo de herramienta (stack personal de desarrollo asistido por IA)
- **Dominio destino sugerido**: agentes-de-codigo o ia-uso-practico

## Tesis

El flujo real de desarrollo asistido por IA ya no es un agente único sino un entorno multiproyecto: un orquestador de sesiones de agentes en terminal (Herder), varios harness según modelo (Claude Code, Codex, OpenCode, Pi), un asistente personal (Hermes + Himalaya), skills (Playwright CLI), administración de tareas por MCP (Notion/Linear), generación de imágenes (Hixfield), diagramas (Scalidraw MCP) y despliegue por CLI (gh, Railway, AWS, Azure) — todo administrado por el agente y vigilando la RAM.

## Puntos clave

- **Agentic change management** [00:39]: patrocinio principal — los agentes generan código más rápido de lo que un equipo humano puede revisarlo; la categoría nueva («revisión de cambios agénticos») agrupa cuatro tareas: revisar con contexto real, priorizar la cola, entender difs de 1.000 líneas y asegurar todo el repo. CodeRabbit como solución (triage, lectura por capas, security repo-wide); >1 M de PRs/semana, app más instalada en GitHub/GitLab marketplaces — cifras de marketing, señaladas.
- **Herder como orquestador** [02:52]: interfaz de terminal para múltiples sesiones de agentes con modo detach (sobrevive al apagado), navegación con mouse (a diferencia de tmux), workspaces/spaces agrupando pestañas, comunicación entre sesiones vía su herramienta de consola, plugins extensibles; patrón VPS: Herder + agentes en servidor accedidos por SSH desde el móvil (aún en prueba para el autor).
- **Harness según modelo** [06:20]: Claude Code como principal (caro: la suscripción de 20 USD «no dura nada», real 100-200 USD); Codex usado por su suscripción reutilizable en otras herramientas y por el reset de límites por inactividad; OpenCode como harness abierto preferido para modelos chinos (Qwen, DeepSeek — reglas mejores que los harness propios de cada modelo; OpenCode Zen desde 10 USD) y para modelos locales; Pi (p_def) como alternativa minimalista sin nada preinstalado (MCP/planificación/subagentes por plugins), buena con GPT, floja con modelos chinos según su prueba.
- **Asistente personal** [10:15]: Hermes — agente de IM/escritorio/terminal que delega en herramientas de consola open source existentes (Himalaya para correo) en vez de reimplementarlas; cabe en Herder como pestaña más.
- **Skills** [12:06]: Playwright CLI (skill de Microsoft para agentes) — el agente testeá la app en navegador (incl. tamaño móvil) y reporta solo lo que necesita atención humana; instalable multiagente desde skills.sh. Matiz honesto: no reemplaza el testeo de interactividad fina (drag and drop).
- **Administración de tareas por MCP** [13:31]: Notion y Linear con MCP — el agente crea planificaciones, tablas y boards en la herramienta del usuario (demo: plan generado y volcado a Notion en ~45 s); alternativa DIY del autor con CLI propio. Advertencia operativa: el entorno multiproyecto consume mucha RAM (procesos en segundo plano, pruebas en navegador).
- **Recursos y despliegue** [17:54]: Hixfield como agregador de proveedores de imágenes para maquetas (skill design de Claude Code / «impecable»; de pago, señalado); Scalidraw (excalidraw) con MCP para diagramas de secuencia (JWT + refresh tokens como demo) — pasó a beta de pago, matizado por el autor; GitHub CLI, Railway (CLI + skills + agentes de nube, competidor de Vercel), AWS CLI (más barato a escala, exige entender la nube), Azure CLI (az) para clientes del ecosistema Microsoft; terminal WezTerm multiplataforma con recomendación contraintuitiva de usar la versión nightly.
- **Tesis de fondo** [01:52]: «el futuro no está en escribir código, sino en revisarlo y lanzarlo con confianza» — el cuello de botella se movió de la generación a la revisión/priorización/confianza.

## Evaluación

- Demo de 1.ª mano con opiniones de uso real (precios de suscripciones, qué harness para qué modelo); criterio práctico de composición de herramientas open source en vez de plataformas monolíticas.
- Patrocinio CodeRabbit declarado y excluido de la sustancia; autopromoción leve (cursos, asesorías) señalada.
- ASR garbiñeado fuerte en nombres: Cloud→Claude, Herder/Hardar/Henter→Herder, Quen→Qwen, DJSK (video?), Pen/P.Ddef→Pi, Play CL/Playwrght→Playwright, Minimax/Hickfiel→Hixfield, Scalidrow→Scalidraw, Asure→Azure, Westm/Wester→WezTerm, Alacrity→Alacritty, Untion→Notion — normalizados solo aquí.

## Cruces

- [[agentes-de-codigo]] (cluster central: Herder ya documentado en [[multiplexores-agentes]] — cruce directo; harness múltiples vs único, revisión IA), [[delegacion-cognitiva-ia]].
- WL-325 (plan como artefacto + revisión), WL-331 (OpenClaw, agente como infraestructura — Hermes juega el rol asistente), WL-332 (routing/estructura), WL-333 (modelos locales vs nube), WL-295/333 (Qwen/DeepSeek).
- Fazt: +1 fuente del canal (ya procesada una previa fuera del tramo WL: «Así desarrollo con varios agentes a la par», [[multiplexores-agentes]]) — actualizar entidad en consolidación.

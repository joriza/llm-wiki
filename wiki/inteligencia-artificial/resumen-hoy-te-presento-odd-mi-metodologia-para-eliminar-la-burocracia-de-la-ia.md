# Resumen: HOY te presento ODD, mi metodología para eliminar la BUROCRACIA de la IA

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=WM2JAuR-MOU) (fuente 52/57 del lote IA-Recursos)
- **Canal**: Gentleman Programming Vods (stream) — [[gentleman-programming]].
- **Publicado**: 2026-09-16 · Duración 127:52
- **Raw**: `raw/inteligencia-artificial/2026-09-16-hoy-te-presento-odd-mi-metodologia-para-eliminar-la-burocracia-de-la-i.md` (subtítulos automáticos, transcripción literal; stream, mucho ruido de chat)

## Idea central

Defensa de los arneses (harnesses) frente a dos extremos: la sobreingeniería y el «tirar todo por la borda». Presenta **ODD (Organic Driven Development)** como el flujo por defecto de Gentle AI (desde la versión 3.0), que reemplaza SDD: la burocracia de propuesta → spec → diseño → implementación → verificación encarece cada iteración, porque si algo falla hay que volver a cambiar la proposal, el diseño y las specs. Su criterio: las metodologías humanas (SDD, TDD) se aplican solo cuando aportan, y el arnés debe crecer junto con la tarea — no matar mosquitas con una bazuca (crítica explícita al Swarm Forge de Uncle Bob: 6 agentes en paralelo).

## Contexto del stream

- Reacciona al tweet de **Uncle Bob** («dejé de usar arnés, mi consumo cayó un factor gigante, hago orquestación manual»): lo atribuye a la mejora de los modelos, y su respuesta es el mix — arnés que escala con la tarea. Refuerza con el caso OpenAI/GPT 5.6: parte de la reducción de coste del 80% vino de mejorar el **arnés** de prompting.
- Distingue arneses **empresariales** (Claude Code, Codex — «están hechos para consumir tokens como un desgraciado», hay un negocio detrás) y **open source** (sobreingeniería sin justificar). La defensa de Gentle AI: sobreingeniería justificada según la petición.
- Descarga del hate en X (críticas tóxicas «espero que esto fracase») con pedidos de crítica constructiva, tener criterio propio y no dejarse influenciar ni por él.

## ODD — el flujo

1. **Petición → ¿implementación autorizada?** Si es simple: se implementa directo, sin artefactos (sin MD, sin documentación guardada).
2. Si hay incertidumbre: **exploración** del código existente → **research acotado** (búsqueda externa solo para llenar huecos del scope) → resolución de decisiones dentro del scope.
3. Si hay una **premisa de altas consecuencias**: **challenge** — buscar/ejecutar evidencia que refute o confirme la premisa antes de implementar.
4. Si la petición es **sustancial**: un documento por feature (repositorio, objetivo, problemática, porqués, scope, tareas ligadas al TODO del agente — el TODO lo actualiza el agente constantemente, nadie lo reescribe a mano).
5. Implementación con **TDD**, tarea por tarea, chequeando al avanzar; al terminar se graba con **evidencia real** (tests, e2e, golden files) — no evidencia «cognitiva»: si otro agente lee el MD, no re-ejecuta porque ya hay evidencia de que funciona.
6. Al cerrar el ciclo se aplica **RDD** (receipt-driven) para la revisión, y si sigue habiendo trabajo se vuelve al paso 1. Anécdota citada en el chat: una feature de 10k líneas con ODD + RDD sin correcciones.

## Otras cosas mostradas

- **Instalación** (recap de la fuente 51/57): brew/Go por SO, `gentle-ai` TUI, detección de agentes, personalidad Gentleman/Neutral (técnico en inglés), stack completo vs dev-only (Engram, SDD→ODD, skills, GGA) vs solo memoria, perfiles de modelos por agente con recomendaciones por plan, TDD estricto, CodeGraph recomendado («hay mejores, pero es suficiente — queremos lo mínimo»), RTK a punto de quitarse, backups y upgrade+sync.
- **Tags en CLAUDE.md**: todo lo instalado por Gentle AI va entre tags; lo propio del usuario va arriba o abajo de ellas y no se pisa en la sincronización.
- **Gentle Shell** (Pi): UI responsive, ciber (rama, modelo, cambios, usos), configurador con Alt+K, perfiles por repositorio (pin global o compartido con Shift+P), manejo de agentes/subagentes, all sessions (ver todas las terminales), intercomunicación orquestador↔subagente, shortcuts vía /gentle.
- **Engram**: memoria compartida local entre agentes (decisiones, lo que importa, por tópicos); «si le preguntas a tu agente qué es ODD sin usar Engram docs y no contesta, es porque no usaste el ecosistema».
- Demo en vivo posterior: feature sobre la web del canal (agregar ODD a la página) con modelos open source vía NAN(?) — incluida la trampa: pedirla «sin SDD» para ver que el arnés solo activa SDD si el usuario lo pide explícitamente, y los preflight checks.

## Cruces y observaciones

- Esta es la fuente «primaria» de ODD dentro del lote: la 51/57 lo muestra como workflow de Gentle AI y la 57 del propio wiki ya lo usa como formato de `odd/tasks/` (tareas, acceptance criteria, evidencia, process log).
- El concepto «evidencia real vs evidencia cognitiva» conecta con la crítica a los detectores/reviews puramente textuales de [[evaluacion-de-llms]] y con SpecJudge (veredictos que citan fragmentos literales).
- La defensa de los arneses con coste acotado es el contrapeso directo de la fuente 49/57 (ahorro de tokens) y del tweet de Uncle Bob — tesis del canal: el arnés no es el enemigo, la burocracia fija sí.
- Autopromoción constante del ecosistema (Gentle AI, Engram, Gentle Shell, merch, «regalito» al final); contenido de stream con mucho relleno de chat — el resumen recorta al hilo técnico.

## Notas sobre la fuente

Transcripción de subtítulos automáticos de un stream, literal, con mucho ruido (chat en vivo, charla, música, repeticiones VTT). Normalizaciones: «Jan G Programming» por Gentleman Programming, «Shan/Shentel/Gentil/Gentelidad» por Gentle AI, «Claudio» por Claude, «Pi/Pell/Pag» por el agente Pi, «Orgasmic driving development» por Organic Driven Development (broma incluida en el stream), «Swam Forge» por Swarm Forge, «RTK» por (tool de costes, dudosa), «NAN» (proveedor de modelos open source, dudoso), «GGA/Gentlem Guard Angel» por Gentleman Guardian Angel, «SMD» por (el MD de la tarea), «Sol» por Sonnet, «Astra Max» por (?). Nombres dudosos marcados con (?) requieren verificación contra el repo.
- **Enlaces de consolidación (2026-11-11)**: [[gentleman-programming]] · [[odd-metodologia]].

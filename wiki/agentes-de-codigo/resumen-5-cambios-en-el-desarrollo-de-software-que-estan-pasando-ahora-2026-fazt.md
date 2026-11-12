# Resumen: 5 Cambios en el Desarrollo de Software que Están Pasando AHORA (2026)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-10-12-5-cambios-en-el-desarrollo-de-software-que-estan-pasando-ahora-2026-fazt.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar; «Ban»→bun, «Sinout»→nombre del sponsor, «Header»→Herdr) — https://www.youtube.com/watch?v=hKV5oAQlp2M — Fazt, 2026-10-12 (17:56).
- **Nota**: fuente 8/18 de la playlist «IA-Nuevas formas de trabajo». El segmento patrocinado inicial (plataforma de despliegue «Sinout») se excluye de la síntesis salvo el concepto técnico que presenta (deploy unificado + MCP para que el agente despliegue y lea logs). Varios hechos citados (bun→Rust, proyecto «StarCraft» clon de Adobe, tweet de Torvalds, caso del bug de $10.000) provienen de redes/blog — verificar antes de tratarlos como confirmados.

## Cambio 1 — Rust se vuelve un lenguaje de vibe coding

- La popularidad de Rust no viene de desarrolladores aprendiéndolo sino de **vibe coders** buscando rendimiento con recursos mínimos; ejemplos citados: reescritura de **bun de C a Rust** (~1M de líneas, motivada por seguridad de memoria vía borrow checker), «StarCraft» (suite open source alternativa a Adobe en Rust), un clon de Excel en Rust, y **DHH** anunciando usar Rust «siempre que no tenga que escribirlo yo» (vía su distro Linux financiada, todo el código pedido a punta de prompt).
- **Matiz clave (blog JetBrains)**: muchos creen que cambiar de lenguaje da mejoras automáticas de rendimiento; en las reescrituras reales la mejora viene sobre todo de **corregir errores al reescribir desde cero**, y toda reescritura (con o sin IA) **introduce nuevos bugs** → más trabajo de revisión, ajeno al lenguaje.
- Contraejemplos de reescrituras fallidas: Prisma (la traducción TS↔Rust costaba más de lo que ganaba), un videojuego (luchaba contra el borrow checker), curl/hyper (reescritura gradual con disparidad de estilos → abandonada).
- Consecuencia práctica: ya casi nadie **escribe** Rust a mano, pero hay que aprender a **leerlo** y a medir rendimiento.

## Cambio 2 — Testing y CI/CD en disputa

- Proyecto «E2E» (viral hace semanas): testing end-to-end con IA — assertions deterministas + un nuevo tipo `agent.act` donde el test se escribe en **texto**, no en código («comprobar que se actualice el plan → llega la factura / preview visible»).
- Caso viral: un desarrollador **eliminó 800.000 líneas de tests unitarios** de su monorepo con tres hipótesis (los unit tests generan código lento de remover, ralentizan los ciclos de desarrollo, consumen tokens). La postura del autor: **no imitarlo** — el CI/CD existe para validar el despliegue; en proyectos con usuarios reales esa revisión protege producción. Respuesta popular al post (sarcasmo): «lo siguiente que podés eliminar son los build configs, que la IA decida la configuración».
- La aceleración real viene de **entornos**: producción con CI/CD completo, staging y un entorno ultrarrápido para cambios instantáneos. El cambio de fondo sí es real: «una enorme cantidad de gente no está leyendo lo que está creando» — lanzar sin la ansiedad de revisar se está normalizando.

## Cambio 3 — El vibe coding pierde el estigma

- **Linus Torvalds**: «muchos se burlan del vibe coding, pero me parece una forma asombrosa de disfrutar programar; permite a nuevos programadores hacer cosas antes muy complicadas». **Notch** (Minecraft): antes denostaba la IA, ahora disfruta el vibe coding y «puede que se haya equivocado antes». Desarrolladores serios ya lo usan en sistemas complejos.

## Cambio 4 — Las nubes se simplifican (y la deuda ya no se perdona)

- AWS simplificando UI (registro sencillo, login con Google): con un agente que despliega por vos (CLI + MCP), la interfaz gráfica compleja deja de ser la barrera (y el motivo de cursos/certificaciones).
- **Contraejemplo costoso**: un desarrollador vibe-codeó con Codex y desplegó en Cloudflare; un bug de bucle infinito de llamadas (app sin usuarios) consumió **$10.000** de cuota. Antes las nubes perdonaban este tipo de deuda; ahora que «la IA lo genera», **no se perdona**. Su conclusión: no usar modelos no-SOTA tan a la ligera.
- Recomendación dura: colocar **spend limit** en Cloudflare/Vercel/Railway/AWS/Azure — «un bucle infinito es un caño abierto» con servicios que se cobran por consumo (serverless, DB serverless, APIs de IA).

## Cambio 5 — La orquestación de agentes se vuelve interfaz principal

- **Lauren Tan (SpaceX)** publicando decenas de aplicaciones orquestando agentes con «Grokbot» (chat interno de SpaceX: lanza muchos agentes que comparten contexto y se comunican); similar a OpenClaw/Hermes pero para usuarios no técnicos que «lanzan una startup pidiendo cosas». OpenAI respondió con «Dots» (ChatGPT multi-agente).
- **Inversión de la interfaz**: antes el editor era principal y el chat secundario; ahora el agente es la pantalla principal y los archivos/sesiones van al lado. De ahí el auge de Orca y Herdr: «si todo lo hacés con IA, eventualmente vas a llegar a estas interfaces».
- Bujeo final del autor: seguimos haciendo los mismos pasos (crear, probar, desplegar, revisar) pero con otro enfoque; la IA «no hace el trabajo por vos: es un trabajador al que delegás tareas específicas — lo repetitivo y predecible lo puede hacer».

## Cruces

- Cambio 5 conecta directo con fuentes 6-7/18 (Herdr) y con [[multiplexores-agentes]].
- Cambio 1 cruza con [[desarrollo-con-modelos-locales]] (vibe coding + rendimiento) y con la entidad llama-cpp (bun→Rust como historia gemela del PR de llama.cpp).
- Cambio 2 conecta con la fuente 4/18 (Ruiz: «la IA no escribe sus propios tests») — aquí el extremo opuesto (borrar 800k líneas de tests) aparece como antipatrón señalado.

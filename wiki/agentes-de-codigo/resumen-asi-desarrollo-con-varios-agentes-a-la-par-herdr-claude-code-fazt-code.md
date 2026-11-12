# Resumen: Así desarrollo con varios agentes a la par (Herdr + Claude Code)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-10-03-asi-desarrollo-con-varios-agentes-a-la-par-herdr-claude-code-fazt-code.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar; «Herder/Helder»→Herdr, «Cloud»→Claude, «Honu/Horno»→Hono) — https://www.youtube.com/watch?v=Hr693AAnCV0 — Fazt Code, 2026-10-03 (38:59).
- **Nota**: fuente 6/18 de la playlist «IA-Nuevas formas de trabajo». Demo end-to-end (proyecto academia estilo Udemy) con patrocinio (DonDominio) excluido de la síntesis. Cruce fuerte con [[multiplexores-agentes]] y la entidad herdr del banco de pruebas de ia-local.

## El stack del flujo diario

- **Herdr como orquestador**: multiplexor de sesiones en terminal (alternativa gráfica: Orca, «sucesor de VS Code»; antecedente no-IA: tmux). Ventajas que lo hacen preferirlo: **ligero**, funciona con **mouse** o atajos tipo tmux (Ctrl+B c), **modo detach** (cerrás la terminal y las sesiones siguen vivas), y **sesiones remotas** (instancias en otra máquina/servidor, útil con entornos en la nube). Cada terminal puede ser un worktree distinto; renombra pestañas y salta filtrando por nombre; notificaciones con sonido del sistema.
- Acepta cualquier **harness**: Claude Code, Codex, Hermes. Fórmula del autor: *harness decente + modelo frontera = avanzar mucho más rápido* (cita Anthropic: GLM 5.3 con capacidades tipo Mythos para código sofisticado).
- En una sola suscripción Max de $200; cuando se agota la cuota cambia a Codex.

## Skills propios («FX-*»)

~100 skills en `~/.claude/skills`; nomenclatura FX-* por actividad. Naturaleza: blueprints simples, no técnicos (preferencias de stack: Zod, Resend, DigitalOcean Spaces; dark/light theme; login con forgot/reset password; dashboard). Destacados: **fx-docker** (puertos ya ocupados en local → verificar y cambiar puerto; sin volumes en desarrollo, backups en su lugar), **fx-commit** (flujo de commit sin «Co-Authored-By: Claude» ni pedidos vagos de «guardá todo»), **fx-review** (el único extenso: múltiples revisiones — tests, mantenibilidad, no duplicación, consistencia de patrones; nacido «de la pereza» de escribir cada checklist), fx-browser (Playwright o Chrome DevTools).

## Flujo de desarrollo (demo)

1. **Plan primero**: modo plan (Shift+Tab) con modelo de máximo esfuerzo (Opus 5.5 extra-high): «con una suscripción barata usá el grado de esfuerzo máximo; mejor planificar bien que pedir modificaciones después». El plan escanea, propone stack/alcance y **no escribe nada hasta aprobación**. Si hacés vibe coding, igual leé el resumen: el modelo puede elegir versiones/ORM que no querés (Drizzle vs Prisma, shadcn vs Tailwind).
2. **Implementación**: Claude Code con alias `cl` = bypass permissions («no siempre voy a ciegas; leo lo que va a hacer»); subagentes en background para tareas independientes desde la misma sesión (documentar arquitectura, Swagger); `/rename` de sesiones; btw para preguntas laterales sin interrumpir; shells para ver/matar procesos.
3. **Testeo delegado**: Playwright CLI headless prueba interfaces una a una (auth, navegación, reproducción) y reporta; el humano revisa manual solo lo vital (flujo de compra, video). Playwright CLI lanza instancias de navegador independientes por proyecto — cosa que la extensión de navegador de Claude y el MCP Chrome DevTools no permiten.
4. **Diseño**: skill `design` de Claude genera **artifacts** (HTML subido con URL) con opciones A/B/C editables, fusionables («pasá el hero de la A al C») e implementables; el skill Impecable (templates de referencia) le viene andando peor.

## Paralelismo real: worktrees + ramas

- **Colisión de archivos**: dos agentes en el mismo directorio (Google OAuth y GitHub OAuth) se pisan — «uno hace modificaciones y otro elimina lo avanzado». Regla: **características que colisionan → pedir worktree** (rama propia + copia completa del base en `.claude/worktrees/`).
- Ramas más importantes que nunca («los agentes modifican muy grande y muy rápido»): **main = producción**, **dev = cambios diarios**, un worktree por característica en paralelo. Al terminar la característica, fusionar a dev y **eliminar el worktree** («no deberías acumular una enorme cantidad»).
- **Mensajería entre sesiones**: una sesión puede decir «al terminar dev, enviá lo implementado a la sesión academia-main»; el mensaje queda como tarea pendiente (control+enter para entregarlo ya) y la sesión receptora, en modo auto, pide aprobación antes de aplicarlo. Instrucciones adicionales («eliminá los worktrees al fusionar») se integran al programa en curso.

## Observaciones sobre harness y modelo

- Harnesses de modelos abiertos (OpenCode, Command Code): generan bien pero **fallan en ejecución en background** (no mantienen procesos, abren terminales aparte, hay que re-pedir) — «no es culpa del modelo abierto, es culpa del harness». Claude casi nunca falla ahí; Codex ya lo corrigió.
- Despliegue recomendado por orden: Railway (skills+CLI, se despliega solo), Cloudflare/Wrangler (sitios estáticos gratis), nubes grandes (AWS, Azure; Google Cloud solo por integraciones).
- Monitoreo post-lanzamiento: Posthog, Sentry (pendiente para otro video).

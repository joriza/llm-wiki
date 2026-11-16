# WL-278 — «VIBECODING con Kimchi - Usando Kimi, GLM, Minimax» (Pelado Nerd)

- **Fuente original**: `raw/wl/tramo-40/2026-09-29-vibecoding-con-kimchi-usando-kimi-glm-minimax.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=f2laroE5zgE · Canal Pelado Nerd · Publicado 2026-09-29 · 21:09 · Subtítulos automáticos es
- **Tramo**: 40, fuente útil 5/5 (posición 90 de 4686) — **CIERRE DEL TRAMO Y DEL PEDIDO L25, contador explícito: sin sexto ciclo útil**
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/agentes-de-codigo (vibecoding con harness y modelos open source; cruces WL-271/272, [[agentes-de-codigo]])

## Qué es

Demo-tutorial (21 min) de Pelado Nerd — administrador de sistemas/SRE que confiesa haberle tenido miedo siempre a programar — sobre **vibecoding**: construir y desplegar proyectos completos con un harness de código conectado a modelos open source de frontera (Kimi K3, GLM 5.3, Minimax, DeepSeek), usando el cliente Kimchi como ejemplo (patrocinado, aunque él afirma que el flujo vale para cualquier harness).

## Puntos clave

- **Harness ≠ chat**: la distinción base del video — un harness de code (con planificación previa, herramientas, buenas prácticas e instrucciones al modelo) frente a un chat genérico que «no está preparado para codear». Modos de operación: preguntar por edición, solo planear, automático y **Yolo** («hacé todo, te doy todos los permisos»).
- **Tres demos progresivas**: (1) app de tareas en un HTML desde un prompt en español, lista en ~2 minutos sin que él viera el código; (2) dashboard dark-theme que consume la status API de GitHub, con **modo multimodelo automático** — el cliente usa un modelo rápido y barato para planear y otro más caro para codear, trabajando varios proyectos en paralelo; (3) feature de i18n (botón español/inglés) sobre su sitio web existente, con ciclo completo **commit → PR → resolución de conflicto de git por el agente → deploy a producción**, sin que él tocara código ni comandos.
- **Memoria externa del agente**: el harness crea un directorio `.kimchi` en el proyecto con plan, tareas numeradas y decisiones — «los modelos no tienen memoria, la memoria se la ponés vos» — y es seguro/versionable compartirlo en el repo para que otro colaborador (o el agente en otra sesión) continúe sin re-inspeccionar todo.
- **Code Reviewer externo**: feature de Kimchi que revisa los PRs desde fuera sin el contexto del prompt original — «como si fuera otra persona» — y puede chatear con el PR para aplicar sus correcciones automáticamente.
- **Costes detallados**: la sesión completa de tres proyectos costó ~2 USD (24 USD el último mes), con desglose por modelo (Minimax, Kimi, DeepSeek, GLM); compatible con Claude Code usando los mismos créditos. Regalo de registro: ~50 USD en tokens (link de afiliado).
- **Honestidad del cierre**: la demo del botón de i18n falló en vivo (traducía al «jeringoso» — desvío memorable); él mismo lo corrige después y remata: «a veces probar antes de mergear el PR es importante todavía».

## Salvedades de triage

- **Video patrocinado** (Kimchi se contactó con él — declarado explícitamente) con link de afiliado; los elogios a modelos «iguales o mejores que Anthropic/OpenAI» son afirmación del canal sin benchmark citado.
- Benchmarks autocreportados y costes propios; el caso del deploy sin revisar código se presenta como práctica personal sin discutir riesgos (contraste útil con WL-271/WL-272 sobre calidad/revisión).
- Transcripción automática con nombres ruidosos («Quinchi/Kimchi/Kimche», «jarness», «Open Clinchit» por Open/Claude) — normalizar en consolidación.

## Cruces sugeridos

- Tema DHH/vibecoding: WL-271 (Fazt) y WL-272 (GP Vods) — contraste directo: aquí el vibecoding como emancipación del no-programador; allí la crítica a la escritura manual muerta. Consolidar juntos.
- Cluster agentes-de-codigo: WL-249, WL-253, WL-257, [[agentes-de-codigo]]; memoria externa del agente cruza con [[obsidian-memoria-agentes]].
- [[inferencia-local]]/OpenRouter: enrutamiento multimodelo por coste (Kimi auto) cruza con WL-274 (routing por precio).

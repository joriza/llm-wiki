# WL-325 — Inteligencia artificial: por qué hace lo que le pedís y sale mal

- **Fuente original**: `raw/wl/tramo-49/2026-09-21-inteligencia-artificial-por-que-hace-lo-que-le-pedis-y-sale-mal.md`
- **Video**: [7CZLMLnfIiw](https://www.youtube.com/watch?v=7CZLMLnfIiw) (~19:30, publicado 2026-09-21)
- **Canal**: Gentleman Programming (subtítulos originales, es)
- **Recopilado**: 2026-11-16 (transcripción literal; garbiñeos normalizados solo aquí)

## Resumen

Tutorial-ensayo del canal sobre por qué los agentes de código «salen mal»: la causa está en el flujo de trabajo, no en el modelo. Punto de partida: un bug real de gentle-ai (issue 4089, mostrado en pantalla) — el usuario pidió un arreglo «en tres renglones» que requería tres párrafos; el agente tocó 11 archivos, rompió tests que ya andaban y duplicó una función que ya existía tres carpetas más arriba. «El agente hizo bien su trabajo; el problema fue mi pedido».

Tesis central — **el prompt es efímero, el plan es un artefacto**: el prompt vive en un scroll de terminal y muere al cerrarla, pero le confiemos decisiones de arquitectura; el plan vive en el repositorio, se comitea, se revisa, se discute y se edita **antes** de escribir una línea de código. Corregir un plan cuesta 30 segundos; corregir una implementación, una tarde — «el mismo error en dos momentos, dos precios». Continuidad con la línea del canal: conceptos antes que código.

Demo práctica sobre un agente sin su ecosistema instalado — **Junie CLI de JetBrains** (segmento patrocinado, declarado): exploración del proyecto, configuración (proveedores cloud, API propia o locales vía Ollama/LM Studio), `AGENTS.md`/`.junie/agents.md` («hacer un buen AGENTS.md no es opcional; el agente no adivina convenciones que nunca le contaste», precedencia proyecto > global), modo planificación con high-effort para el razonamiento y modelo rápido/low-effort para la implementación (routing por coste), modo voz para dictar contexto, worktrees para agentes paralelos sin conflictos, y **review mode** cambio por cambio (aceptar/rechazar) + GitHub Action para CI. Sobre el bug 4089: el formato correcto del identificador ya existía en otra parte de la herramienta — dos caminos (reutilizar+documentar vs escribir uno nuevo); el agente apurado sin plan elige el segundo y queda el «div de dos lecturas del mismo dato».

Tres conclusiones: (1) si la decisión importa, tiene que quedar en un archivo (plan en repo, issue, Jira/Linear/Obsidian), no en un scroll; (2) el lugar más barato para corregir un error es la fase de planificación — «a veces ir rápido es ir lento»; (3) el agente no adivina convenciones — escribirlas (AGENTS.md, skills, «antes de crear algo nuevo, busca si ya existe», la regla que evita la duplicación). Cierre: la práctica es agnóstica de herramienta («el concepto importa, la herramienta ejecuta») y advertencia de no dejarse influenciar por la IA: discutirle ventajas/desventajas como «ese developer tóxico» que obliga a pensar alternativas.

## Apreciación crítica

- **Patrocinio JetBrains/Junie integrado en la demo** — declarado abiertamente por el autor, pero los elogios a la herramienta (benchmarks «internos de JetBrains, dato de ellos», precios/descuentos) son material patrocinado, señalado.
- **Autopromoción recurrente de gentle-ai** (el propio ecosistema del canal aparece cada dos párrafos como solución ya incorporada); el issue 4089 sí es verificable (repositorio público, señalado por el autor).
- Subtítulos originales con garbiñeos del ASR («gente» por «el agente/Junie», «pur/purr request», «hillos», «worde/worktree», «Oce», «Yama, Little, LM» por Ollama/LiteLLM) — normalizados solo en el resumen; nombres de productos interpretados con contexto (Grok 4.6 vía Copilot, «Fable 5.1» probablemente distorsión).

## Cruces y dominio

- Dominio previsto: **agentes-de-codigo** o ia-uso-practico. Cruces fuertes: [[gentleman-programming]] (+1, canal recurrente — 7.ª fuente aprox.), [[agentes-de-codigo]], [[odd-metodologia]] (plan antes de código, SDD), WL-153/165/178/185/228 (metodología agéntica del canal, context rot), WL-298/274/278 (routing por coste), WL-247 (MCP). Concepto ya existente de la wiki: plan como artefacto versionado ≈ [[obsidian-memoria-agentes]] tangencial.

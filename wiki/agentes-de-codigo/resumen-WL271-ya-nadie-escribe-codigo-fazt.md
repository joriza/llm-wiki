# WL-271 — «Ya nadie escribe código. El trabajo real es otro» (Fazt)

- **Fuente original**: `raw/agentes-de-codigo/2026-10-09-ya-nadie-escribe-codigo-el-trabajo-real-es-otro.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=QoTuEx4J-DA · Canal Fazt · Publicado 2026-10-09 · 22:12 · Subtítulos automáticos es
- **Tramo**: 39, fuente útil 4/5 (posición 83 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): ia-uso-practico/agentes-de-codigo o ia-critica-y-fronteras (consolidar con el cluster WL-228/241/250/257)

## Qué es

Videoensayo de opinión sobre el estado de la industria tras el vibecoding, organizado alrededor de un **post viral (~8 M de vistas)** de un ingeniero de una gran empresa: todo (specs, código, tests, PRDs, tickets) se hace con Claude Code, nadie revisa nada, todos «presionan Enter» 12-13 horas al día y nadie piensa. Fazt contrasta ese desencanto con ejemplos recientes de la industria y concluye que el trabajo real ya no es escribir código sino **entender, revisar y mantener**.

## Puntos clave

- **Generar ≠ mantener**: el vibecoding «CraftingApps» (clon de la suite de Adobe, reescritura con IA sin ingeniería inversa) demuestra que cualquier idea se genera en horas, pero su propio autor respondió «probablemente no» a «¿lo vas a mantener?»; incluso planea delegar los issues a un workflow de Claude — «vibecoding del vibecoding». El trabajo real está en la mejora continua y la verificación.
- **Experto vs vibecoder con IA**: la reescritura del compilador de TypeScript en Rust por Theo (T3 Code, meses de iteración) es veloz, pero Bun (Jared Sumner, especialista de siempre en compiladores) sigue siendo más rápido — el conocimiento técnico pesa más, no menos, en la era IA.
- **Testing con agentes**: nuevo framework que mezcla resultados deterministas (código) con pasos expresados en lenguaje natural para el agente; por debajo sigue siendo el mismo código.
- **Contribuciones en open source**: PRs generados por IA inundan los mantenedores; System76/Cosmic prohíbe PRs e issues generados por IA; la respuesta a los bugs también llega cada vez más de IA triage (Copilot integrado en GitHub, CodeRabbit).
- **DHH**: promueve el vibecoding desde Omakub/Omarch (stack financiado, revisión automatizada con IA); Fazt lo lee como tendencia hacia sistemas operativos «vibecoded» con tokens de Grok/SpaceX y Meta de por medio.
- **Percepciones erróneas**: «el software está muerto» y «no vale la pena estudiar» son las dos lecturas equivocadas; referencia al ciclo del duelo (negación → aceptación), con Notch (Minecraft) admitiendo que disfruta el vibecoding.
- **Conclusión práctica**: escribir código a mano «murió», pero hay que seguir aprendiendo bases (lenguajes, diseño de sistemas, algoritmos, seguridad, redes) porque delegar exige entender lo que se delega; el vibecoding sirve para ideas pequeñas, los sistemas serios (bancos, clínicas, gobiernos) exigen ingeniería real y diseño de sistemas.
- **Costo real de los modelos frontera**: las suscripciones de $20 no alcanzan; en la práctica los agentes cuestan desde ~$100/mes salvo modelos chinos, a los que atribuye (especulación declarada) restricciones anti-destilación de los modelos frontera.

## Salvedades de triage

- **Videoensayo de opinión, NO fuente factual**: el post viral y los proyectos citados son de 2.ª mano sin enlaces; afirmaciones sobre costes de modelos y «restricciones anti-destilación» son especulación del autor, señalada.
- Patrocinio explícito: bloque dedicado a Siniuch/«Cnode» (hosting de precio fijo con MCP para agentes) con enlace en descripción — sesgo comercial declarado.
- Nombres y hechos citados a verificar en consolidación: CraftingApps, compilador TS en Rust de Theo, Bun Shell, System76/Cosmic, Omakub, financiación SpaceX/Grok, Opus 5.5 y GPT-6 Astra como frontera.

## Cruces sugeridos

- Cluster agentes de código: WL-228 (context rot), WL-257 (encuesta SO — mismo malestar), WL-241/WL-250 (REA), [[agentes-de-codigo]].
- Tema «el mantenimiento es el trabajo real» cruza con WL-255 (Y2K/deuda técnica) y WL-252/WL-246.
- Canal Fazt: entidad existente ([[fazt]], 12 fuentes) — actualizar en consolidación.

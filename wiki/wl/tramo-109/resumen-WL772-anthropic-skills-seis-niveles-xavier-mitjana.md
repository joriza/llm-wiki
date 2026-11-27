# WL-772 — Los ingenieros de Anthropic ya no crean agentes (hacen esto)

- **Video**: https://www.youtube.com/watch?v=cx1hHeb-OMk
- **Canal**: Xavier Mitjana (×2)
- **Publicado**: 2026-11-26 · **Duración**: 16:21 · **Raw**: `raw/wl/tramo-109/2026-11-26-los-ingenieros-de-anthropic-ya-no-crean-agentes-hacen-esto.md`

## Síntesis

Segunda parte del método carpeta (WL-771): el argumento central es que en Anthropic dejaron de pensar «un agente por tarea» — el mismo agente de propósito general de Claude Code dio origen a Cowork, y lo que falta al modelo no es inteligencia sino **oficio**, que se guarda en skills. Analogía estructural: modelo = procesador, agente = sistema operativo, skills = aplicaciones. Con skills, un solo agente puede portar cientos de tareas porque al arrancar solo lee las descripciones y abre las instrucciones completas solo cuando la petición encaja (resuelve el problema de contexto saturado que motivaba la multiplicación de agentes).

Tres capas de Anthropic: modelo (centro) → arnés/harness (instrucciones de sistema + CLAUDE.md, siempre cargadas) → skills (capa externa, carga bajo demanda).

Los **seis niveles** de crear/gestionar skills:
0. Escribirla a mano — desaconsejado (poca precisión); mejor preparar un esquema.
1. Skill Creator de Anthropic escribe la skill siguiendo buenas prácticas; darle ejemplos propios propios («en los ejemplos está el oficio que le falta al genio»).
2. **Recomendado**: hacer la tarea una vez con el modelo, corregir «como a alguien en prácticas» y pedir que convierta la sesión en skill; actualizarla cuando aparezcan reglas nuevas.
3. Aprender viendo: grabación de pantalla integrada en la app de Claude (o vídeo externo + skill de transcripción).
4. Skills de contexto compartido — datos de clientes, identidad visual, definiciones propias («¿qué es para ti un cliente prioritario?») — combinables tipo LEGO; el cambio se hace una sola vez.
5. Skills de terceros: formato abierto adoptado por 70+ plataformas; directorio de Anthropic y skills.sh de Vercel; revisar código y adaptar, no usar tal cual.
6. **Borrarlas**: Boris Cherny (creador de Claude Code) recomienda cada ~6 meses borrar CLAUDE.md/skills/hooks y comparar el modelo desnudo — las skills escritas para modelos menos capatces los «atan» (*hobbling*); Anthropic recortó >80 % de sus instrucciones de sistema sin perder rendimiento. Criterio de Mitjana: recortar los «cómo» que el modelo ya sabe; conservar datos, marca, definiciones y correcciones de estilo que no puede adivinar. Prueba práctica: tarea con y sin skill, comparar.

## Evaluación

- Divulgación fiel de la práctica real de Anthropic (skills, harness, hobbling, Boris Cherny); el nivel 6 es la mejor parte y la menos difundida. Coherente con [[limites-de-los-llm]]: el contexto persistente acumulado puede estorbar a modelos más capaces.
- Garbiñeos ASR normalizados solo aquí: «Cloud» = Claude, «cloud.md» = CLAUDE.md, «Co-work/Cowork», «capatces» = capaces.

## Cableado

- [[agentes-de-codigo]] — skills/harness; par directo con WL-771 (agente carpeta).
- [[delegacion-cognitiva-ia]] — el oficio se delega vía skills, no vía agentes especializados.

**Patrocinios excluidos**: bloque Internxt (05:00–06:00, Black Friday).

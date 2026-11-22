# WL-712 — GTA 6: ¿no utiliza inteligencia artificial?

- **Fuente original**: `raw/informatica-teoria/2026-11-18-gta-6-no-utiliza-inteligencia-artificial.md` ([Vídeo](https://www.youtube.com/watch?v=jAJPc6sgRUo))
- **Dominio definitivo**: `informatica-teoria` (consolidación T25, tramo 105)
- **Canal**: TodoCode (entidad existente, 4.ª fuente — [[tocode]])
- **Publicado**: 2026-11-18 · **Duración**: 12:38
- **Fecha de ingesta**: 2026-11-24

## Qué trata

Microlección técnica a partir de la declaración del CEO de Take-Two de que la **IA generativa no participa en la creación de GTA VI**:

1. **La distinción clave**: no toda IA es generativa. El CEO no negó que el juego use IA — negó la generativa en el proceso creativo; los videojuegos llevan décadas usando técnicas clásicas mucho antes de ChatGPT (máquinas de estados, árboles de comportamiento, pathfinding).
2. **NPC de la vida cotidiana**: el personaje que espera el semáforo y esquiva autos se programa con una **máquina de estados** (caminando/esperando/huyendo con condiciones del entorno) — «parecer inteligente no es pensar como una persona», son algoritmos preestablecidos; por eso algunos NPCs corren contra paredes y otros no.
3. **Pathfinding como grafo**: la ciudad como nodos (intersecciones) y conexiones (calles), algoritmos de búsqueda del mejor camino — nada de «anda hasta este punto» a ciegas.
4. **Coherencia como esencia de jugabilidad**: el NPC debe respetar su universo (si le preguntás por Todd Howard, en el juego no existe); soltar IA generativa sin límites rompe la esencia — riesgo que Rockstar no quiso correr para no demorar más el lanzamiento. «No siempre lo más novedoso es lo ideal para resolver un problema».
5. **Los equipos detrás**: gameplay, IA, datos, redes, optimización, herramientas; artistas, animadores, guionistas — programadores por sistema (enemigos, tráfico, rutas, rendimiento) que deben **integrarse**; usar IA generativa «para todo» de golpe en un equipo así rompería la coherencia. La IA no elimina automáticamente el criterio del programador: analizar problemas, diseñar soluciones, evaluar alternativas y probar comportamientos sigue siendo humano.
6. **Cierre honesto**: no conocemos los detalles internos de Rockstar — solo las declaraciones públicas; pregunta a la audiencia (¿esencia clásica o generativa improvisada?).

## Señales de triage

- **Microlección didáctica limpia**: separa generativa vs. clásica sin sensacionalismo, declara explícitamente los límites de lo que sabe (declaraciones públicas ≠ internals), usa el caso GTA como excusa para enseñar máquinas de estados y pathfinding.
- TodoCode mantiene su línea divulgativa correcta (eco de FAV-463/464 y WL-701).
- ASR normalizado solo aquí («Munation»→Ammu-Nation, «Todocoo»→TodoCode); raw intacto. CTA estándar.

## Cruces

- [[tocode]]: 4.ª fuente de la entidad (FAV-463, FAV-464, WL-701 + esta) — para consolidación.
- [[delegacion-cognitiva-ia]] / [[brecha-junior-ia]]: «la IA no reemplaza automáticamente el criterio del programador» — mismo hilo que WL-711 (día anterior); el criterio como lo no automatizable.
- Máquinas de estados/pathfinding como contrapunto histórico: la «IA clásica» de videojuegos vs. la generativa — conecta con la distinción asistente/agente de WL-710.
- Consolidación aplazada.

## Veredicto de triage

Buena microlección técnica con pivote noticioso bien usado: corrige la confusión colectiva «IA = generativa» con ejemplos concretos y honestidad sobre fuentes. Sin consolidación (aplazada).

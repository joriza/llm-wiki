# WL-165 · Google Harness 2: Cómo Crear Agentes de IA que Aprenden Solos (Sin Reentrenar el Modelo)

- **Fuente original**: `raw/wl/tramo-20/2026-10-21-google-harness-2-como-crear-agentes-de-ia-que-aprenden-solos-sin-reentrenar-el-m.md`
- **Video**: [Rrwnak3RRIw](https://www.youtube.com/watch?v=Rrwnak3RRIw) · Canal: InzideTech · Publicado: 2026-10-21 · Duración: 14:49
- **Tipo**: divulgación técnica sobre el proyecto open source «Harness²» (Google Cloud AI Research + Northwestern), con metáforas visuales.

## Problema que ataca

Los agentes de IA sufren «amnesia operativa»: cerebro grande (LLM congelado) pero armadura (harness) rígida escrita a mano que falla ante el «problema del mundo abierto» — lo imprevisto provoca bucles, alucinaciones o rendición. La premisa de Harness²: congelar los pesos del modelo y dejar que **el propio sistema evolucione su armadura en caliente**, sin reentrenamiento ni respuestas correctas dadas.

## Arquitectura: ocho piezas modulares «vivas»

1. System prompt (brújula de razonamiento) · 2. Guardrails (reglas de seguridad/calidad autoescritas) · 3. Memoria (el agente redefine cómo resume y filtra su contexto) · 4. Tool guidance (manual de uso de herramientas autoeditado) · 5. Subagentes especializados creados al vuelo (p. ej. un «auditor») · 6. Skills (recursos procedurales reutilizables) · 7. Scripts reales (Python/consola para cálculos y formatos) · 8. Plugins middleware (interceptores en el bucle de herramientas para limpiar/validar/bloquear).

## Doble recursión

- **Nivel de tarea — bucle propose → probe → compose**: un agente editor analiza la grabación de la ejecución de referencia y propone dos candidatos (uno invariante/general, otro de dominio específico); ambos se ejecutan en paralelo sobre la misma tarea y se comparan por **contraste conductual** (sin respuestas correctas); un compositor fusiona selectivamente solo las piezas ganadoras y descarta las que causaron regresiones. Parámetro de presupuesto K: recursión paralela (explorar a lo ancho) o secuencial (refinar a lo profundo).
- **Nivel de harnessing (el «al cuadrado»)**: al cerrar cada tarea se actualiza un improvement harness — biblioteca persistente de componentes probados + lecciones con evidencia en `experience.md` — que transfiere experiencia entre tareas y hasta entre benchmarks distintos.

## Resultados y uso

- Números del paper (según el video): pesos de Gemini 3.5 Flash y GLM-5 congelados; ejecutores Open Code y Codex con Claude Opus como editor. WorkBench +11.5 pts, benchmark legal Lab +11.8 pts de aprobación, JobBench +4.5 pts en el primer paso.
- Licencia Apache 2.0; demo local sin coste de API; conectable a Vertex AI con `dry run` para previsualizar gastos.
- **Dos advertencias del video**: coste de cómputo (ejecuta la tarea varias veces — solo para misiones complejas) y seguridad (por defecto los ejecutores tienen red sin restricciones y Codex corre sin sandbox: nunca en la máquina personal, siempre en contenedor/VM aislada).

## Valor para la wiki y triage

- Divulgación de divulgación indirecta: el canal resume un paper/repositorio externo, con cifras no verificadas de primera mano y alguna imprecisión típica del formato (nombres de benchmarks «Work Body Bench»/«Job Bench» posiblemente deformados por ASR). Útil como mapa conceptual del «automated harness engineering»; verificar contra el repositorio/paper antes de citar cifras. Cruces naturales: [[deepseek-harness]], agentes-de-codigo, WL-153 (Gentle Design), WL-132 (hype de NCM — mismo patrón de canal divulgativo sobre papers ajenos).
- Cierre de suscripción excluido. Señalar en triage: fuente secundaria.
- Dominio previsto (pendiente de consolidación, S4 sin dominios nuevos): ia-uso-practico/agentes-de-codigo.

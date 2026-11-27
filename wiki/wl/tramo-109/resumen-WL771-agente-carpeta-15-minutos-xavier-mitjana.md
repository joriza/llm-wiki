# WL-771 — Crea tu primer AGENTE de IA en 15 minutos (sin programar)

- **Video**: https://www.youtube.com/watch?v=ZnlLfKR-vDQ
- **Canal**: Xavier Mitjana (×1)
- **Publicado**: 2026-09-20 · **Duración**: 17:45 · **Raw**: `raw/wl/tramo-109/2026-09-20-crea-tu-primer-agente-de-ia-en-15-minutos-sin-programar.md`

## Síntesis

Mitjana presenta un método de cuatro pasos para montar un «agente carpeta»: una estructura de directorios que cualquier IA (ChatGPT Projects, Claude Cowork, Antigravity) puede leer sin programar nada. El ejemplo hilo conductor es un estudio de reformas que prepara presupuestos semanales.

1. **Carpeta + agents.md**: cuatro subcarpetas — contexto (tarifas, catálogo, tono), skills, memoria y proyectos (un cliente por subcarpeta) — más un archivo `agents.md` manual. Las dos líneas clave del manual: «si te falta un dato, pregunta en vez de inventar» y «apunta por tu cuenta todo lo que te convenga recordar».
2. **Primera ejecución manual**: hacer la tarea una vez a mano en la herramienta para descubrir qué criterios faltan (estructura de presupuesto por oficios, suministro+colocación en una partida, criterios de unidades). El modelo pregunta lo que el contexto no cubre.
3. **Consolidar en skills**: la memoria anota los criterios cronológicamente de forma automática; la skill los clasifica y ordena secuencialmente para que el agente los aplique a la primera. La skill se crea pidiéndoselo al propio modelo dentro de la conversación. Segunda tarea (recorrido 3D web del piso, con desglose de presupuesto clicable) genera una skill más compleja, con referencias y assets.
4. **Portabilidad**: el segundo proyecto se corre en Claude Cowork y reproduce los mismos entregables (presupuesto Excel/HTML + recorrido 3D) con una sola instrucción — el valor vive en la carpeta, no en la herramienta.

Cierre: escalable por agente (más skills) y en conjunto (todos los agentes bajo una carpeta raíz).

## Evaluación

- El método es esencialmente el patrón LLM Wiki / AGENTS.md aplicado a un caso de negocio: carpeta = cerebro, skills = recetas, memoria = apuntes del agente. Tercera–cuarta confirmación independiente del patrón que aplica esta misma wiki (cf. WL-635, WL-742).
- Tutorial correcto y honesto en su alcance (17:45, sin venta de curso; plantilla de agents.md gratuita en descripción).
- Garbiñeos ASR normalizados solo aquí: «Cloud/Cowork» = Claude Cowork, «la gente» = el agente (error sistemático de ASR), «Antigravity» correcto.

## Cableado

- [[agentes-de-codigo]] — mismo patrón de estructura de carpetas + AGENTS.md + skills.
- [[delegacion-cognitiva-ia]] — el humano hace la primera vez manual y delega la repetición.

**Patrocinios excluidos**: bloque Mammoth AI (04:00–05:06).

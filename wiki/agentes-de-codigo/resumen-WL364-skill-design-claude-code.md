# Resumen WL-364: El Skill /design de Claude Code que casi nadie conoce — Fazt

**Fuente original:** `raw/agentes-de-codigo/2026-09-14-el-skill-design-de-claude-que-casi-nadie-conoce.md` (YouTube: `j-UOQyrszDE`, canal **Fazt**, publicado 2026-09-14, 1:38).

---

## Síntesis

Demo rápida (1:38) del **skill `/design` incluido por defecto en Claude Code** (terminal y versión escritorio). Permite generar interfaces visuales (páginas web, mockups, animaciones, wireframes, infografías) **mediante código**, sin generar imágenes directamente. Flujo: escribes `/design` + descripción → Claude genera propuestas de código (HTML/CSS/JS, React, etc.) → eliges/iteras → implementas. Se puede combinar con otros skills (ej. "Impeccable Front-End Design") y alimentar con screenshots de referencia (Pinterest, Dribbble). El autor lo usa a diario para mejorar UIs de proyectos web: pide alternativas, elige, avanza. Nota: antecedente web `claude.ai/design` (primeros meses 2026) con la misma suscripción.

---

## Qué hace el skill `/design`

| Capacidad | Detalle |
|---|---|
| **Genera código visual** | No imágenes: HTML/CSS/JS, React, Vue, Svelte, Tailwind, etc. |
| **Tipos de salida** | Páginas web, landing pages, mockups, animaciones, wireframes, infografías |
| **Iteración conversacional** | Editas textos, cambias la idea, pides variantes — todo en el chat |
| **Referencias visuales** | Acepta screenshots (Pinterest, Dribbble) como input para generar diseños derivados |
| **Combinación de skills** | Compatible con otros skills de diseño (ej. *Impeccable Front-End Design*) |
| **Disponibilidad** | Incluido **por defecto** en Claude Code (terminal + app escritorio); antecedente web `claude.ai/design` |

---

## Flujo de trabajo del autor (Fazt)

1. **`/design` + petición** → Claude genera varias propuestas de código.
2. **Revisión visual** (en navegador o preview del IDE) → elige la que más le gusta.
3. **Itera**: "cambia esto", "prueba tal otra variante", "combina A con B".
4. **Implementa** el código elegido en el proyecto real.
5. **Combina skills** para pulir: *Impeccable Front-End Design* + `/design` = resultados "asombrosos".

---

## Normalizaciones ASR (solo en este resumen)

- "Cloud" / "Cloud Code" → **Claude Code** (producto Anthropic; el ASR oye "Cloud").
- "cloud.ai/design" → **claude.ai/design** (URL correcta).
- "Impeccable Front-End Design" → **Impeccable Front-End Design** (skill nombre propio, conservado).
- Duración 1:38 confirmada (video corto, demo concentrada).

---

## Dominios destino sugeridos (consolidación aplazada, sin dominios nuevos)

- **agentes-de-codigo** — primera opción (skill de Claude Code, workflow de agente, UI generation).
- **ia-uso-practico** — segunda opción (uso práctico de skill para desarrollo asistido).

---

## Entidades / conceptos para cablear (búsqueda en `wiki/`)

- [[fazt]] — canal (entidad consolidada: WL-334, 364, 340... 13+ fuentes).
- claude-code — herramienta (entidad transversal).
- skill-design-claude / claude-code-design-skill — skill específico (umbral ≥2 con esta fuente).
- generacion-ui-codigo — concepto transversal (UI via code, no imagen).
- impeccable-frontend-design — skill complementario mencionado.
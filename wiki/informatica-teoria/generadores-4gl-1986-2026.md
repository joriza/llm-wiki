# Generadores de aplicaciones 4GL (1986–2026): de Clarion a Craft Anything

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»; borrador previo normalizado desde la carpeta de trabajo).
- **Fuentes**: [[resumen-WL069-clarion-generador-aplicaciones]] (WL-69, Archivo del Futuro — fuente principal), [[resumen-WL064-visual-basic-historia]] (WL-64 — la ruptura de compatibilidad), [[resumen-WL067-esp-mosaico-hardware-agentico]] (WL-67 — el patrón MCP-first), [[resumen-WL059-craft-anything-recrea-apps]] (WL-59 — «Clarion con IA», en tránsito tramo 4), [[resumen-WL058-artcraft-ofimatica-agentica]] (WL-58 — MCP embebido, en tránsito tramo 4), [[resumen-WL055-gus-lenguaje-sin-heap]] (WL-55 — compilador escrito por IA, en tránsito tramo 4) y [[resumen-WL056-t3-code-ade-comparativa]] (WL-56 — ADE multi-suscripción, en tránsito tramo 4).
- **Ver también**: [[reglas-cableadas-vs-programadas]] · [[lenguaje-rust]] · [[hardware-agentico-mcp-first]] · dominio `informatica-teoria/`.

## El concepto

Herramientas que permiten **describir la estructura de datos y las reglas de negocio una vez**, y generan automáticamente el 80-90 % del código repetitivo (pantallas, CRUD, informes, API), dejando al programador la **primera excepción de negocio**: la lógica que no encaja en el modelo genérico. Clarion (1986) hacía exactamente esto con un diccionario de datos; los generadores agénticos de 2026 (ArtCraft/Craft Anything) lo hacen con un LLM + MCP. **Craft Anything es Clarion con IA** — misma arquitectura conceptual, distinta tecnología generadora.

## Línea evolutiva

| Año | Herramienta | Innovación clave | Estado |
| --- | --- | --- | --- |
| 1986 | Clarion (Barrington Systems) | Diccionario de datos central + plantillas + puntos de inserción preservables en regeneraciones | Activo (SoftVelocity, Clarion 12, 2025) |
| 1991 | Visual Basic (Cooper → Microsoft) | Drag-and-drop + componentes VBX; salvavidas de programadores COBOL | Legacy (simply works en Win11, sin desarrollo) |
| 1995 | Delphi / C++Builder (Borland) | Componentes visuales + lenguaje nativo | Activo (Embarcadero) |
| 1997 | Visual FoxPro / Access | RAD para datos locales | Legacy |
| 2002 | Visual Basic .NET | Ruptura de compatibilidad («Visual Fred») → rechazo masivo | Frozen (sin nuevos tipos desde 2023) |
| 2023 | Copilot / ChatGPT | Generación de código por LLM | Activo |
| 2026 | ESP Mosaic / Arduino Agentic Mode | Hardware + MCP para agentes | Emergente |
| 2026 | ArtCraft / Craft Anything (StoryTold) | 13 apps Rust + MCP embebido; recreación desde URL/app | Emergente (beta) |

## La invariante arquitectónica (40 años)

```
Entrada: diccionario de datos / especificación en lenguaje natural
        ↓
Motor: generador (plantillas 4GL) / agente LLM + MCP
        ↓
Salida: 80-90 % de código estándar (CRUD, pantallas, informes, API)
        ↓
Punto de inserción: la «primera excepción de negocio»
        ↓
Programador: escribe SOLO la lógica que no cabe en el modelo
        ↓
Regeneración: el código propio sobrevive en los puntos de inserción
```

## La invariante del conocimiento (tesis central)

> **«Lo automatizado se vuelve lo que alguien debe comprender cuando algo falla»** — Bruce Barrington (Clarion, años 80, citado por WL-69) reaparecida en el «firmware ≠ diseño de producto» de BricoGeek (WL-67).

- Clarion 4 (ABC): el ahorro de código exige más conocimiento para personalizar lo generado.
- Visual Basic .NET: órdenes viejas con resultado distinto (el integer que cambió) → errores en nómina — la ruptura de compatibilidad como anti-invariante (WL-64).
- ESP Mosaic / ArtCraft: «escribir firmware ≠ diseñar producto» (energía, seguridad, fiabilidad — WL-67).
- Craft Anything: «reconstruir es el punto de partida, no el destino» (WL-59).
- SuperAgente DeepSeek: la supervisión humana insostenible como costo de la generación (WL-47; ver [[burnout-era-ia]]).

## Paralelo exacto Clarion ↔ Craft Anything

| Clarion (1986) | Craft Anything (2026) |
| --- | --- |
| Diccionario de datos central | URL / app instalada / descripción en lenguaje natural |
| Generador de pantallas/CRUD/informes | Agente LLM + MCP (Chat Coding / Vibe Coding) |
| Plantillas + puntos de inserción preservables | Código generado + iteración conversacional |
| El diccionario propaga cambios (tamaño de ID, redondeo) | El agente itera: «desarrolla más», «quita ese apartado» |
| La primera excepción = valor del programador | La iteración conversacional = dirección humana |
| «Lo automatizado se vuelve lo que hay que comprender cuando falla» | «Escribir firmware ≠ diseñar producto» |

## Diferencia clave: generador determinista vs agente probabilístico

| Generador 4GL clásico | Agente LLM + MCP |
| --- | --- |
| Determinista: misma entrada → misma salida | Probabilístico: misma entrada → salida variable |
| Plantillas y puntos de inserción fijos | Iteración conversacional libre |
| El programador conoce el generador | El programador no ve el código hasta revisarlo |
| Error = plantilla mal diseñada | Error = alucinación o desviación del requisito |

## Cruces

- **WL-69 ↔ WL-59**: cruce bidireccional obligatorio — «Craft Anything = Clarion con IA» (antecedente directo de 1986).
- **WL-64**: la compatibilidad hacia atrás como activo — VB6 «simply works» y el COBOL-paralelo exacto; el final de VB repite el ciclo de Clarion (SoftVelocity manteniendo aplicaciones décadas): el tema «software que resiste» (WL-64+69, sin página propia todavía).
- **WL-67**: el patrón MCP-first llevado al hardware ([[hardware-agentico-mcp-first]]).
- **WL-55**: el compilador de Gus escrito por IA — «la IA puso las manos, la cabeza sigue siendo humana», la misma frontera del 4GL empujada a software de sistemas.
- **WL-56**: los ADE como orquestación del mismo flujo generación-revisión.
- Pendiente de cablear en su consolidación: [[resumen-WL046-no-reescribo-todo-en-rust]] (el miedo a reescribir y el costo de migración — WL-64/45/31).

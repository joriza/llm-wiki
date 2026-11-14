# Hardware agéntico — MCP-first (2026)

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»; borrador previo normalizado desde la carpeta de trabajo).
- **Fuentes**: [[resumen-WL067-esp-mosaico-hardware-agentico]] (WL-67, BricoGeek — fuente principal), [[resumen-WL058-artcraft-ofimatica-agentica]] (WL-58, atareao — el patrón en el escritorio, en tránsito tramo 4), [[resumen-WL059-craft-anything-recrea-apps]] (WL-59, Alejavi Rivera — recreación de apps, en tránsito tramo 4), [[resumen-WL056-t3-code-ade-comparativa]] (WL-56 — orquestación multi-suscripción, en tránsito tramo 4) y [[resumen-WL055-gus-lenguaje-sin-heap]] (WL-55 — el compilador escrito por IA como pariente lejano, en tránsito tramo 4).
- **Ver también**: [[generadores-4gl-1986-2026]] · [[reglas-cableadas-vs-programadas]] · [[gentleman-programming]] · [[agentes-de-codigo]].

## El concepto

Dispositivos y suites diseñados **desde el origen** para ser operados por agentes de IA a través del **Model Context Protocol (MCP)** — se elimina la brecha entre «la IA genera código» y «la IA opera el hardware/el escritorio».

```
Usuario (lenguaje natural)
    ↓
Agente LLM (Claude Code / Codex / ESP Cloud / agente local)
    ↓
Servidor MCP (documentación oficial del fabricante + herramientas de acción)
    ↓
Hardware / app nativa (compilar, flashear, verificar, iterar)
    ↓
Resultado verificado → loop si falla
```

## La tríada 2026 (según las fuentes)

| Dispositivo | Fabricante | Arquitectura MCP | Estado declarado |
| --- | --- | --- | --- |
| ESP Mosaic | Espressif | Chat Coding (ESP Cloud embebido) + Vibe Coding (MCP externo) | anunciado 20/10/2026 |
| Arduino Agentic Mode | Arduino/Qualcomm | MCP en el IDE de Arduino | agosto 2026 |
| ArtCraft / Craft Anything | StoryTold | 13 apps Rust con MCP embebido; generador de apps vía MCP | beta 2026 |

## La ruptura: «docs oficiales vs burradas de foro»

- **BricoGeek (WL-67)**: en vez de que la IA busque por internet y se equivoque «porque alguien en un foro dijo una burrada», el agente recupera documentación oficial del fabricante y programas el dispositivo de forma automática — el ecosistema completo (docs, ejemplos, simulador, lectura de estado para que el agente corrija) es parte del producto.
- **atareao (WL-58)**: la noticia de ArtCraft no es «acabará con Photoshop» (GIMP nunca lo hizo — el flujo no era el mismo) sino el MCP embebido: «le estás dando manos a tus modelos de lenguaje» — la IA reemplaza tu trabajo, no la herramienta.
- **Alejavi Rivera (WL-59)**: «reconstruir lo que existe no es el destino, es el punto de partida» — la recreación de apps (Loom por 0,69 $) como demostración de la misma arquitectura.

## La advertencia compartida: firmware ≠ producto

Las tres fuentes repiten el contrapeso honesto: que la IA escriba el firmware no significa que sepa diseñar un buen producto electrónico (energía, seguridad, fiabilidad, gestión de errores, años de funcionamiento); y hay un límite ético declarado en máquinas industriales peligrosas. La pregunta final de WL-67 se aplica a todo el patrón: ¿habrá mejores proyectos o simplemente muchos más proyectos que nadie sabrá cómo funcionan?

## Marcas de la fuente

Fechas y nombres (ESP32-S31, ESP Cloud, Arduino Agentic Mode, StoryTold, 795 herramientas MCP, PhotoCraft 71k estrellas) son claims de los videos sin fuente primaria — verificar antes de citar. ASR con garbeos en nombres de apps.

## Cruces

- **WL-67 ↔ WL-58/59**: mismo ecosistema de tesis MCP-first en hardware y escritorio — «el MCP convierte la herramienta en manos del agente».
- **WL-56**: la orquestación multi-suscripción como la capa de dirección del mismo flujo.
- **WL-55**: el patrón hermano sin MCP — diseñador humano + IA implementadora (el compilador de Gus).
- **WL-52/68** ([[burnout-era-ia]]): «¿proyectos que nadie entiende?» repite la preocupación de oxidación y supervisión del clúster burnout.
- **WL-82**: la variante defensiva del patrón — el proxy MCP como frontera de permisos («esconde lo prohibido al agente») en Gentle Dot.
- **WL-81**: el espejo histórico — cuando las reglas vivían cableadas en el circuito antes de ser software ([[reglas-cableadas-vs-programadas]]).

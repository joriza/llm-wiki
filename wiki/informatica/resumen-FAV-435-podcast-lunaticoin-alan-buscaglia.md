# FAV-435 — Empieza a hacer apps sin saber programar (podcast Lunaticoin con Alan Buscaglia)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=5Ts_EX73o1Y) — Podcast **Lunaticoin** (Luna, Bitcoin/soberanía/tecnología), invitado **Alan Buscaglia** («Gentleman Programming», desarrollador ~16 años, Microsoft MVP y Google Developer Expert en Angular, Argentina→Barcelona), publicado 2026-09-10, 90:54, ES-AR (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-podcast-lunaticoin-alan-buscaglia-apps-sin-programar.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal).

## Para quién es el desarrollo hoy

Charla pensada para no-programadores que quieren crear apps con IA. Buscaglia: no hay receta única, pero **los conceptos nunca se reemplazan** — programar no es tirar código, es saber qué hacer, por qué, y elegir la mejor solución para el contexto.

## La jerga, bajada a analogías (mesa/restaurante)

- **Lenguaje** = la madera; **biblioteca** = los tornillos (código de terceros que resuelve una pieza); **framework** = el mueble de IKEA: colección de bibliotecas bajo una ideología, con la documentación como set de instrucciones. React, Angular, Next «todas hacen lo mismo»: la diferencia es cómo se adaptan a tu flujo (Angular para requisitos concretos y rigurosos, no para un MVP rápido).
- **Arquitectura** = una idea para separar concerns (Clean, Onion, hexagonal son variantes); **patrón de diseño** = solución ya probada para un problema concreto.
- **Frontend** (la mesa, lo que el usuario ve) vs **backend** (los tornillos/cocina) con el endpoint como el mozo; ojo: el frontend moderno lleva mucha lógica y también hay BD en el navegador. El lenguaje depende de la plataforma (JS para web, Swift para iOS, etc.).
- **Full stack**: hoy más viable que hace años — porque la IA elimina la fricción de cambiar de ecosistema (antes solo los veteranos de 20 años).

## La revolución agéntica y los harnesses

- El punto de inflexión no fue ChatGPT (2022) sino **2025**: chatbot con fricción → **modo agéntico**: al modelo se le dan herramientas y control de ejecución («le diste manos»).
- **Coder vs programador**: el que no sabe qué es un formulario o un `preventDefault` es un coder — la IA reemplaza coders, no gente que entiende el porqué. El especialista pasa a ser el **human in the loop** que dirige y corrige.
- **Harnesses (arneses/guardrails)**: las restricciones e instrucciones que envuelven al modelo — formato de respuesta, sí/no de seguridad, flujos guiados. Consecuencia clave: **no elegís un modelo, elegís un conjunto de arneses** — el mismo modelo se comporta distinto en Claude Code, Codex, OpenCode o Pi; «lo que te gusta es cómo la gente se comporta bajo ese conjunto de arneses». La falta de arneses de **Pi** se presenta como rasgo: está diseñado para que el usuario haga su propio harness engineering (con plugins opcionales para subagentes, todo, etc.).
- **Skills y contexto**: el contexto es la ventana de pintura chica; las skills son instrucciones que entran solo cuando se necesitan (vs. quemar tokens con comandos tipo slash). **Gentle-AI** (su herramienta): enfoque orgánico — la IA pregunta, enseña y guía sin comandos, con perfil junior (no deja hacer cosas peligrosas hasta que sepas) y perfil experto.

## Valor

Panorama de nivel medio-alto sobre la transición al desarrollo agéntico; media hora final con publicidad (HodlHodl/Bitrefill) y sesgo bitcoinero del anfitrión, señalado. Su propia historia: un año sin escribir una línea de código a mano; su click fue rehacer con Claude Code el testing de un proyecto entero en 3 días.

## Cruces

- Clúster **vibe coding con IA**: FAV-434 (los 5 agujeros — contraparte crítica del mismo fenómeno) → 2 fuentes, umbral ≥2, candidata a página de concepto.
- Entidad candidata: **Gentleman Programming / Alan Buscaglia** (1.ª fuente en la wiki, mención explícita a Gentle-AI y Pi) — deferida por umbral <2.
- Cruces con FAV-426/428 (VS Code/Claude Code como entornos), FAV-419 (IA local vs nube/privacidad).

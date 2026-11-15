# FAV-430 — Cómo un Solo Developer Humilló a Toda la Industria con Git (fatdev)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=fi4YiZvbLXU) — Canal **fatdev**, publicado 2026-04-04, 13:21, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-como-linus-creo-git-fatdev.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal).

## La historia de Git en 13 minutos (relato narrativo)

Video-storytelling de calidad — bien documentado, marco narrativo de clickbait en el título ("humilló") que el contenido justifica a medias:

1. **Antes de Git**: el kernel de Linux (2002) se gestionaba por parches por email, revisados a mano por Linus Torvalds — inviable a escala de miles de contribuidores.
2. **Las alternativas odiadas**: CVS y Subversion, centralizadas — inaceptables para un proyecto global distribuido (cita real de Linus despreciando Subversion en Google).
3. **BitKeeper (2002-2005)**: herramienta propietaria distribuida y rápida, con licencia gratuita para open source a cambio de no competir con ella. División de la comunidad: Stallman y Alan Cox en contra por principios, Linus pragmático («funciona»). Tridgell (creador de Samba) demuestra por ingeniería inversa trivial (Telnet al puerto 5000, comando `help`) que el protocolo era abierto → BitMover revoca la licencia en abril 2005.
4. **La venganza**: la profecía de Stallman («privilegios temporales que podemos revocar») se cumple. Linus evalúa alternativas, no encuentra ninguna, y en 10 días (3-16 de abril de 2005) escribe Git en C: 6/4 self-hosting (1300 líneas), 7/4 primer commit del kernel con Git, 16/4 release completa gestionada con Git.
5. **Diseño como cicatriz de BitKeeper**: distribuido (nadie puede revocar tu acceso), velocidad, branching/merging barato, integridad por SHA-1 («confianza por criptografía, no por contrato de licencia»).
6. **Legado**: julio 2005 pasa el mantenimiento a Junio Hamano; el nombre «Git» = insulto en argot británico (autoironía de Linus). 2008 GitHub inventa la cultura de pull requests; 2018 Microsoft compra GitHub por 7.500 M$. BitKeeper se hace open source en 2016, demasiado tarde; desarrollo detenido en 2018.
7. **Gancho final** (excluido de la síntesis): teaser sobre otro developer vs Google/Facebook con un framework JS.

## Valor

Historia de la informática útil como contexto motivacional para FAV-429: explica el PORQUÉ de cada decisión de diseño de Git (distribución, SHA-1, branching barato) que el curso de HolaMundo enseña como datos.

## Cruces

- Clúster **Git**: FAV-429 (curso práctico completo) — 2 fuentes, umbral ≥2, candidata a página de concepto en consolidación.
- Clúster **historia-informatica**: BitKeeper/Subversion/CVS y Samba (Tridgell) — posible cruce si el dominio historia-informatica acumula fuentes del mismo período.
- FAV-426 (VS Code): el flujo Git+GitHub que ambos videos presuponen.


## Consolidación (2026-11-15)

- Eje y canal consolidados: [[historia-software-corporativa]] · entidad [[fatdev]].

# Resumen: Construye tu Segundo Cerebro Digital | Obsidian + NVIM | Organiza Tu Vida

- **Tipo**: resumen de fuente (tutorial: segundo cerebro con Obsidian y Neovim, flujo manual).
- **Canal**: [[gentleman-programming]] (Alan).
- **Publicado**: 2024-05-27. **Duración**: 31:26.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=6HSc2l0oyws).
- **Raw**: [raw/ia-critica-y-fronteras/2024-05-27-construye-tu-segundo-cerebro-digital-obsidian-nvim-organiza-tu-vida.md](../../raw/ia-critica-y-fronteras/2024-05-27-construye-tu-segundo-cerebro-digital-obsidian-nvim-organiza-tu-vida.md) (subtítulos automáticos, transcripción literal).
- **Páginas de concepto asociadas**: — (sin IA: ver nota sobre la fuente).
- **Disposición de la ingesta**: Nueva.

## Tesis central

«Usamos el cerebro para crear ideas, no para retenerlas»: montar un **segundo cerebro digital** con Obsidian (bóveda = carpeta local en Markdown, gratis) siguiendo Zettelkasten (Mumenthaler/Luhmann — el canal no recuerda el nombre) con notas atómicas, hubs temáticos y grafo de relaciones. La parte diferencial del canal es el **workflow en Neovim**: edita la misma bóveda desde el terminal con plantillas, IDs con timestamp y comandos propios. Aunque el video es de 2024 y **no menciona IA**, la demostración de que el propio método ya estaba en el ecosistema antes del boom lo convierte en el antecedente manual de las fuentes que lo automatizan con agentes (32/57).

## Recorrido del vídeo

- **[00:02-03:38] Demo del grafo**: la bóveda «Gentleman notes» mostrada como mapa mental (nodos de metodologías ágiles, Clean/Hexagonal architecture, lenguajes…), más el grafo de otra persona con un nodo central muy denso («lugar donde está muy centralizada la información → espectacular para implementar una idea»). Anuncio: escribió un libro gratuito de 15 capítulos sobre Clean Architecture en un día, partiendo de 4 videos propios como referencias — con Obsidian.
- **[03:38-08:46] Estructura de la bóveda**: carpetas (arquitecturas, languages, library, vim, YouTube, files, Limbo, templates) + un **Hub** por tema (nota central con tags, alias e introducción) que referencia a notas atómicas creadas a partir de referencias (los 4 videos → capítulos del libro).
- **[08:46-12:32] Notas atómicas**: cada nota nace con **ID (timestamp de creación) + alias + tags**, contiene el pensamiento concreto y un link de vuelta al Hub; los enlaces `[[...]]` cruzan temas (separación de preocupaciones ↔ arquitectura hexagonal) y se reflejan en el grafo. El Limbo es donde cae todo lo nuevo antes de ubicarse.
- **[12:32-14:47] Configuración de Obsidian**: notas nuevas → carpeta Limbo; attachments (imágenes) → carpeta `files` (como `assets/` en web); Vim key bindings activables en el editor; soporte Mermaid; plugins de comunidad disponibles (el autor no los usa: vive en NVIM).
- **[14:47-19:35] La misma bóveda en Neovim**: estructura idéntica de carpetas abierta en NVIM; búsqueda de notas por tag/término con preview; creación de notas con un espacio de nombres de comandos propio (`<space>o n` nueva nota, `<space>o t` insertar template de Hub o de nota con **variables autorellenadas** — ID, fecha, alias).
- **[19:35-25:06] Extras de edición**: índice/tabla de contenidos automáticos sobre los títulos, formateo automático, y **markdownlint** integrado (ejemplo: error md026 — sin puntuación al final de títulos), con preview vía localhost (plugin Markdown preview) para ver la documentación al instante.
- **[25:06-29:12] Configuración del plugin obsidian.nvim**: depende de plenary.nvim; configura workspace (ruta de la bóveda), destino de notas nuevas (Limbo) e imágenes (files), templates por defecto, mappings (`<space>of` seguir link, `<space>od` checkboxes, `<space>on`/`<space>ont`) y formatos de fecha/hora. Flujo: escribir → linkear → navegar; todo cae en el Limbo.
- **[29:12-31:26] Backup**: de pago solo la sync oficial; él prefiere un **repositorio privado en GitHub** con todas las notas (commit + push periódico): «si mañana se me borra o cambio de máquina, tengo todo mi cerebro en GitHub».

## Puntos clave

1. **Cerebro para ideas, no para retenerlas**: capturar en notas atómicas enlazadas (Zettelkasten) y dejar que el grafo revele los nodos centrales donde maduran las ideas [01:44-12:32].
2. **Hub + notas atómicas + referencias**: cada tema tiene una nota central con tags/alias; los capítulos del libro surgieron de 4 videos referenciados [03:38-09:47].
3. **Bóveda = carpeta local**: Markdown libre de ataduras; el Limbo como zona de captura previa a la organización [05:51-12:32].
4. **NVIM sobre la misma bóveda**: plugin obsidian.nvim con plantillas variables, IDs con timestamp, formateo y lint (md026) — productividad de terminal sin abandonar el grafo [14:47-27:21].
5. **Backup en GitHub en vez de sync de pago** [29:50-31:26].

## Notas sobre la fuente

- Nombres garbiñados que este resumen normaliza: «bim/vim/beam» → Vim/NVIM, «el método cman» → Zettelkasten (el canal admite no recordar el nombre; el método descrito —notas atómicas, referencias, grafo— lo identifica), «bolt/bóveda/vacía» → bóveda, «Markdom/markdom» → markdown, «wcl/wsl» → WSL, «Gentleman dots» → su dotfiles públicos, «Mark preview» → Markdown preview (plugin), «ep walsh barra obsidian beim» → ruta `~/.config/nvim/…/obsidian.nvim`.
- **Fuente sin IA (2024)**: se ingesta en el dominio de IA por pertenecer a la playlist «IA-Recursos», pero su contenido es metodología de conocimiento sin agentes. Su valor para la wiki es de contraste: el método que 32/57 ([[resumen-obsidian-revento-la-ia-con-memoria-gratis-e-ilimitada-alejavi-rivera]]) automatiza con agentes ya existía como flujo manual — mismo patrón raw/captura → notas → enlaces → grafo.
- Cruce por tema: libro gratuito de Clean Architecture del autor; «charla con leifer Méndez» citada como origen del libro.
- Fuente 33/57 de la playlist «IA-Recursos» (video ID canónico `6HSc2l0oyws`); raw por el fallback de subtítulos (literal).
- **Enlaces de consolidación (2026-11-11)**: [[gentleman-programming]] · [[obsidian-memoria-agentes]] (antecedente manual del método).

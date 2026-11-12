# Resumen: Deja de perder tiempo configurando agentes de IA en cada ordenador

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Jctradr7k-Q) (fuente 47/57 del lote IA-Recursos)
- **Canal**: [[fazt]]
- **Publicado**: 2026-08-22 · Duración 15:05
- **Raw**: `raw/ia-uso-practico/2026-08-22-deja-de-perder-tiempo-configurando-agentes-de-ia-en-cada-ordenador.md` (subtítulos automáticos, transcripción literal)

## Idea central

Cada agente de IA tiene su carpeta de configuración (`.claude`, `.codex`, `.kimi`, …) y hay quien usa varias herramientas en varias máquinas (Linux, Mac, Windows, servidores). La solución genérica, anterior a los agentes de IA, son los **dotfiles**: un repositorio con las configuraciones, sincronizado con Git, más **symlinks** para que la carpeta real del programa apunte al original del repo. Así se configura una vez y se sincroniza en todas las máquinas — un problema clásico de Linux que ahora aplica a agentes.

## Puntos clave

1. **Dónde viven las configuraciones**: en el home (`~`) cada programa crea su carpeta oculta — Claude Code usa `.claude` (skills, comandos, plugins), Codex `.codex` (config TOML), Kimi `.kimi`, etc.; otros van dentro de `~/.config` — es el caso de **OpenCode** (`.config/opencode`), Kilocode, Stripe… Lógica general: o en el home o en `.config`; la documentación («Claude Code config», «Codex config», «OpenCode config») lo confirma.
2. **Repositorio dotfiles**: copia solo los archivos necesarios de esas carpetas (en su caso: Claude, terminales Alacritty/WezTerm, OBS, Neovim, …). En Claude solo comparte la carpeta de **skills** comunes: commit automático, un cuestionario previo a montar algo, su «fx style» (base de datos y diseño por defecto, REST APIs en vez de server actions), transcripciones de vídeo, etc.
3. **Scripts de instalación** para sh (Linux/Mac) y PowerShell (Windows) que copian la carpeta `.skills` en `.claude` y en `.agents` — Claude lee la primera, pero `.agents` sirve para compartir con Cursor, VS Code, OpenCode y similares. Los scripts también los puede escribir el propio agente.
4. **Symlink (`ln -s`)**: la clave. La carpeta del repo es el «root» original; al enlazarla, editar en cualquier lugar actualiza todos los destinos, sin duplicar cambios.
5. **Flujo de sincronización**: repo en GitHub (público + privado). Un skill nuevo se crea en la máquina que sea, se sube al repo, y en las demás se pide al agente que actualice el repo de dotfiles.
6. **Herramientas dedicadas** (automatizan scripts + symlink): **chezmoi** (`chezmoi update`), **GNU Stow** (minimalista, licencia abierta), **YADM** (como Git pero con cifrado de archivos y llaves), **dotbot**, y el extremo: **Nix Home Manager / NixOS** — sistema operativo declarativo donde programas, paquetes y SO completo se describen en un archivo («llevando el dotfiles al extremo»).
7. **Privado vs público**: con GitHub CLI se puede importar un repo privado autenticado; él usa público para máquinas de desarrollo y privado para asistentes de IA, aunque basta uno privado.

## Cruces y observaciones

- Coincide con la fuente 33/57 (Gentleman Programming, Obsidian+NVIM) en la disciplina de configuración versionada, y con la 47-temática de [[agentes-de-codigo]]: la configuración de agentes (skills, MCP, hooks, comandos) como activo portable.
- La carpeta `.agents` como formato común entre herramientas es un dato notable: apunta a convergencia del ecosistema.
- Patrocinio: Brevo (CRM/marketing, código FAST50, 50% de descuento) [00:35-01:33]; excluido de la síntesis. Cierre con promoción de asesorías (fast.dev).
- Nota de calidad: es una fuente introductoria; no entra en detalle de hooks ni de MCP compartidos — el aporte útil es el patrón dotfiles + symlink aplicado a agentes.

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal, con la duplicación típica del VTT. Nombres garbiñados normalizados aquí: «Cloud Code» por Claude Code, «Open Code» por OpenCode, «MSPs» por MCPs, «simlink» por symlink, «Question me» por el skill de cuestionario previo del autor, «Kimi/Quent» por Kimi Code.

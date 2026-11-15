# FAV-426 — Aprende VS Code ahora! curso completo desde CERO (HolaMundo)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Ei1y51K8jQk) — Canal **HolaMundo**, publicado 2022-10-14, 65:41, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-vscode-curso-holamundo.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/VSCode).

## Qué cubre el curso (65 min)

Curso de iniciación a VS Code de HolaMundo (Mitocode), práctico y guiado sobre un proyecto de prueba Markdown → JavaScript:

1. **Instalación y explorador**: descarga desde code.visualstudio.com, creación de archivos/carpetas (convención `src/`), apertura y pestañas.
2. **Editor básico**: guardar (Ctrl+S), barra de estado (errores, Ln/Col, indentación de 4 espacios, codificación UTF-8, finales de línea CRLF vs LF y por qué importan en equipos con sistemas operativos mixtos — se resuelve con Git), tipo de archivo/lenguaje.
3. **Búsqueda y reemplazo**: búsqueda en proyecto con match case y palabra completa, reemplazo global.
4. **Control de versiones integrado**: instalación de Git, stage de archivos, commit (configuración de `user.name`/`user.email`), publicación a GitHub vía GitHub Authentication (repositorio público/privado desde el editor).
5. **Ramas desde el editor**: crear rama, commits en ella, sincronización y merge de vuelta a master, eliminación de rama.
6. **Clonar y depurar**: clon de repositorio por URL o búsqueda de GitHub; depurador con `launch.json` implícito (Run and Debug), breakpoints, panel de variables locales/globales, step over/into/out, consola de depuración.
7. **Extensiones y temas**: sugerencias (temas de color, Material Icon Theme, Community Material Theme, Groove Box), cambio de tema con Ctrl+K Ctrl+T.
8. **Atajos de edición**: fin de línea, salto por palabras con Alt, mover líneas con Alt+↑/↓, indentar con Tab/Shift+Tab, comentar con Ctrl+; .
9. **IntelliSense y snippets**: autocompletado de métodos, creación de snippets propios (`Configure User Snippets`, cuerpo con `$1`/`$2` para saltos de cursor, ejemplo `clg` → `console.log`), snippets de paquetes para Angular/Vue.
10. **Paleta de comandos (Ctrl+Shift+P)**: presentada como la "barra maestra" — todo lo visto (comentar, guardar, temas, configuración) es ejecutable desde ella.
11. **Personalización**: mover la barra lateral a la derecha, ocultar la barra de acciones, terminal integrada cambiada de PowerShell a Git Bash (Select Default Profile).

## Valor y nivel

Tutorial de puesta a punto completo para principiantes: la ventaja diferencial es que muestra el flujo Git+GitHub integrado al editor y el depurador de Node/JS paso a paso, no solo estética. ASR degradado en nombres técnicos ("BS code", "cómic" ≈ commit, "get bash" ≈ Git Bash).

## Cruces

- FAV-428: segundo tutorial de VS Code de la cola (clúster VSCode — 2 fuentes, umbral ≥2, candidata a página de concepto en consolidación).
- FAV-429/430 (Git): el curso muestra el flujo Git integrado (stage/commit/ramas/GitHub) como pieza del editor.
- Clúster informatica: [[resumen-FAV-425-express-js-10-minutos-carlos-gonzalez]] (desarrollo web en VS Code), FAV-422/423/424 (Python y uv).

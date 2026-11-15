# FAV-429 — Aprende GIT ahora! curso completo GRATIS desde cero (HolaMundo)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=VdGzPZ31ts8) — Canal **HolaMundo**, publicado 2022-02-18, 66:41, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-git-curso-completo-holamundo.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal).

## Recorrido del curso (66 min, terminal primero)

Curso de Git desde cero del mismo canal que FAV-426 (los dos se complementan: aquí la terminal, allí el flujo integrado en VS Code):

1. **Configuración inicial**: `git config --global user.name/user.email`, editor por defecto (`core.editor "code --wait"`), edición del archivo de configuración global, y `core.autocrlf` (`true` en Windows, `input` en Mac/Linux) — de nuevo el problema de saltos de línea CRLF/LF entre sistemas operativos.
2. **Terminal básica**: `ls`, `cd`, `pwd`, autocompletado con Tab, creación de directorios — prerequisite mínimos para trabajar Git.
3. **Repositorio**: `git init` y la carpeta oculta `.git` (todas las versiones, ramas y commits; nunca se comparte).
4. **Flujo de trabajo en 3 etapas**: working directory → `git add` (stage; solo lo seleccionado pasa) → `git commit` → (opcional) servidor remoto. Explicación conceptual clara antes de los comandos.
5. **Comandos base**: `git status` (untracked, staged, atajos `-s`), `git add` selectivo vs `git add .` (riesgo de incluir binarios grandes), `git commit -m` vs commit con editor, `git rm`, `git mv` (renombrar + stage), `git restore --stage` (sacar del stage), descartar cambios.
6. **`.gitignore`**: ignorar archivos (`*.txt`), carpetas (`node_modules`) y el caso estándar `.env` — credenciales y variables de entorno jamás al repositorio.
7. **Diferencias e historia**: `git diff` y `git diff --staged`, `git log` y `git log --oneline` (hash + mensaje); énfasis en mensajes de commit con sentido para otros desarrolladores.
8. **Ramas**: historia lineal vs bifurcaciones, `git branch`, `git checkout` para cambiar de rama, trabajo aislado (rama `b` con cambios propios) y `git merge` de vuelta a `main`; convención de nombres de rama por feature o ticket (SS-4515).
9. **Remoto y GitHub**: crear repositorio en GitHub, `git remote add origin`, `git push -u origin main`, y autenticación por token de acceso personal (PAT) al ser eliminadas las contraseñas.

## Valor y nivel

Curso introductorio sólido y completo para la línea de comandos; mismo estilo didáctico ("chanchito feliz") que su curso de VS Code. ASR degradado en comandos ("guita"/"gita" ≈ Git, "ántrax files" ≈ untracked files, "comité" ≈ commit, "catch" ≈ cat).

## Cruces

- FAV-430: historia del Git (contexto de por qué existe la herramienta) — clúster **Git 2 fuentes** (FAV-429/430), umbral ≥2, candidata a página de concepto en consolidación.
- FAV-426 (VS Code): el flujo Git visto allí desde el editor; `.env` y `node_modules` conectan con [[resumen-FAV-425-express-js-10-minutos-carlos-gonzalez]] (Node) y FAV-423/424 (Python).

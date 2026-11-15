# Mejora tu flujo de trabajo en la terminal con estas 10 CLI

- **Fuente original**: `raw/wl/tramo-21/2026-10-24-mejora-tu-flujo-de-trabajo-en-la-terminal-con-estas-10-cli.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=8VKy05wcZW4))
- **Canal**: CodeSimple
- **Publicado**: 2026-10-24 · **Duración**: 11:37 · **Idioma**: es (subtítulos automáticos, normalizados en este resumen)
- **Recopilado**: 2026-11-15 (tramo 21, WL-170)

## Qué trata

Repaso divulgativo de 10 herramientas de línea de comandos modernas, presentado una por una con el problema que resuelve (excluida la autopromoción del canal):

1. **DNS Globe** (~[00:29]): consulta la propagación de registros DNS desde distintas ubicaciones y sigue los resolutores públicos hasta que convergen; sustituye el refresco manual de webs tipo What's My DNS.
2. **Gitsavvy / reproductor de historial Git** (~[01:17], presentada como «Git Log»): convierte el historial de un repositorio en una reproducción animada commit a commit, para entender visualmente cómo evolucionó un proyecto grande.
3. **VisiData** (~[02:17]): hoja de cálculo en la terminal para explorar, filtrar, ordenar y editar CSV y datos estructurados sin combinar awk/sed/jq.
4. **Oxker** (~[03:20]): interfaz única de terminal para gestión de Docker — contenedores, estado, recursos y logs sin encadenar comandos sueltos ni copiar IDs.
5. **LM Fit** (~[04:01]): comprueba el hardware local (RAM/VRAM) y puntúa modelos de IA local por requisitos de memoria, velocidad estimada, calidad y contexto, antes de descargar.
6. **Croc** (~[05:30]): transferencia de archivos y carpetas entre máquinas cifrada extremo a extremo, sin SSH ni claves, con reanudación ante corte.
7. **Grex** (~[06:24]): genera expresiones regulares a partir de cadenas de ejemplo (con soporte Unicode); útil para validación y análisis de logs.
8. **Kondo** (~[07:14]): analiza proyectos en busca de artefactos de compilación y dependencias innecesarias (node_modules, builds) y permite limpiar espacio con decisión del usuario.
9. **Worktrunk** (~[08:15]): gestión de worktrees de Git (crear, cambiar, listar, eliminar, hooks, caches compartidas); caso de uso destacado: aislar tareas de agentes de código IA (p. ej. Claude Code) en worktrees separados.
10. **yq** (~[09:31]): lectura, filtrado, actualización y conversión de YAML/JSON/XML/CSV/TOML desde scripts — operaciones de configuración y CI/CD sin editar archivos a mano.

## Ideas clave

- El hilo común: ninguna herramienta sustituye al flujo existente; cada una ataca una tarea concreta y repetitiva (propagación DNS, exploración de datos, gestión de contenedores, limpieza de proyectos).
- Dos entradas conectan con temas de la wiki: **LM Fit** (elección de modelos para IA local, cf. [[hardware-para-ia-local]]) y **Worktrunk** (worktrees como entorno aislado para agentes de código, cf. [[agentes-de-codigo]]).

## Observaciones de triage

- Divulgación introductoria tipo lista, sin profundidad técnica ni benchmarks; nombres de algunas herramientas llegan garbiñeados por el ASR en el raw (normalizados aquí cuando el contexto los identifica con claridad, p. ej. «Ocker»→Oxker, «Condo/Kondo», «LLM Fit»→LM Fit).
- Sin patrocinios externos; solo petición de suscripción del propio canal (excluida de la síntesis).

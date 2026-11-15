# Resumen: ¿Programar bien? PEP8, Linters, Formatters y Git Hooks

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2020-07-12-programar-bien-pep8-linters-formatters-y-git-hooks.md` (video en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «Pepo/Pep ocho/p8»→PEP 8, «promit/prep/prep push»→pre-commit/pre-push, «promit config yamal»→.pre-commit-config.yaml, «p project tumel/thummel»→pyproject.toml, «fake 8/flec/flaco»→flake8, «pint»→lint, «repito/repo Black»→repo: black (mirrors), «autep 8»→flake8, «comit/comiter/comiti»→commit, «Non o nul»→non-zero, «tortita»→🥞 (emoji de salida de black)) — https://www.youtube.com/watch?v=NtobWmD1A0w — CodinEric, 2020-07-12 (12:33). Segunda entrega de una serie de «correctas prácticas»; cierre en gancho hacia GitHub Actions (video siguiente, fuera de esta fuente).

## PEP 8: convención, no ley

PEP 8 es la guía de estilo acordada de Python (existen equivalentes en todos los lenguajes, incluso en Java o C — anécdota del canal: le desaprobaban exámenes de C por tabs mal puestos aunque el código funcionara). Nadie la aprende de memoria ni hace falta: el punto es que todos escriban igual, y eso se **automatiza**.

## Linters y formatters

- **black** (formatter): reescribe el código al estilo canónico sin discusión; `black main.py` formatea y reporta «1 file reformatted»; `--diff` muestra los cambios sin aplicarlos. Config en `pyproject.toml` (ej.: line-length 88 — el default de flake8 es 79).
- **flake8** (linter): detecta problemas de estilo y errores; configuración en `.flake8` (ej.: max-line-length 88, alineado con black).
- Menciona otros (isort, mypy, pylint) sin desarrollarlos.
- Instalación vía pip y corrida manual siempre disponible — la ventaja clave frente a depender del linter integrado del IDE (VS Code): funciona en cualquier entorno, incluso Vim o sin IDE.

## Git hooks con pre-commit

- Git ejecuta scripts antes/después de operaciones: **pre-commit hook** corre antes de cada commit, **pre-push** antes de cada push (el `stage` del config determina cuál).
- La carpeta `.git/hooks/` trae ejemplos en shell (que el canal decide no aprender); la vía Python es **pre-commit**: declarar en `.pre-commit-config.yaml` los repos y hooks (black, flake8, pytest, cada uno con su stage), correr `pre-commit install` — que genera el archivo del hook en `.git/hooks/`; para cambiar la config hay que borrarlo y reinstalar.
- Demo real: un commit con código feo + test roto hace que la cadena (black → flake8 → pytest) **falle y bloquee el commit** (no hay entrada en `git log`); tras corregir, todos los checks pasan y el commit entra.
- Escape hatch honesto: `git commit -n` salta los hooks y sube código roto — de ahí el gancho del canal hacia GitHub Actions para reforzar en el remoto (quedó para el video siguiente, no cubierto aquí).

## Dónde encaja en la wiki

La cadena formatter → linter → tests → hooks es la versión artesanal del control de calidad de código que [[codigo-de-plomeria]] critica cuando se reimplementa a mano en cada proyecto: aquí la convención (PEP 8) y su enforcement (black/flake8/pre-commit) son justamente infraestructura resuelta una vez y compartida. Complementa la vista de herramientas de [[mapa-del-ecosistema-python]] (black/flake8/pre-commit como piezas estándar de cualquier proyecto) y presagia la CI remota (GitHub Actions) que el dominio aún no cubre — laguna abierta para futuras fuentes.

---

**Ver también**: [[codigo-de-plomeria]] · [[mapa-del-ecosistema-python]].

# FAV-333 — ¡No Uses Más Pip! UV es 100 Veces Más Rápido

- **Origen**: «¡No Uses Más Pip! UV es 100 Veces Más Rápido (Tutorial Completo)» — TuTechGuy — `https://www.youtube.com/watch?v=yre97f8owHE` (10:00, español, subtítulos automáticos; transcripción en `raw/python-practico/raw-yre97f8owHE.md`)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `python-practico/` (gestión de paquetes y entornos; cruza con el mapa del ecosistema)

## Qué es

Tutorial del canal **TuTechGuy** sobre **UV**, gestor de paquetes y proyectos de Python escrito en **Rust**, que sustituye a pip y a los entornos virtuales manuales en una sola herramienta: instalar dependencias, gestionar venvs y ejecutar distintas versiones de Python, con mejoras de velocidad drásticas (del orden de 100× frente a pip; ejemplos del vídeo: instalar Python en ~4 s, eliminar pandas en 40 ms, 16 paquetes en 169 ms). El ASR escribe «V/VV/VD/Uber» por «uv» y «Cool/wet» por «curl/wget» — normalizado solo aquí.

## Instalación

- macOS/Linux: con `curl` o `wget`; también `pip install uv`. Windows: comando propio o `pip install uv` [00:29].

## UV para scripts [03:12]

- `uv run script.py` ejecuta un archivo directamente.
- `uv init` sobre un script añade en su cabecera un comentario con metadata: versión mínima de Python requerida y una lista de `dependencies` editable a mano.
- `uv add <script> <paquete>` (ej. Rich) registra la dependencia en esa cabecera; al correr con `uv run`, UV la instala antes de ejecutar.
- Se puede fijar la versión de Python con la que corre: `uv run --python 3.12 script.py`.

## UV para proyectos [05:23]

- `uv init proyecto` crea la estructura: versión de Python configurada, `main.py` de ejemplo y **`pyproject.toml`** — «como requirements.txt pero con más detalle» (nombre, versión, descripción, README, python requerido, dependencias).
- `uv add pandas` crea el entorno virtual `.venv` automáticamente (sin gestión manual), instala y actualiza el `pyproject.toml`; además genera **`uv.lock`**, equivalente al `package-lock.json` de Node: todas las dependencias con versión exacta.
- `uv remove pandas` borra la dependencia y actualiza lock + pyproject en milisegundos.
- Cambiar la versión de Python del proyecto es editar el `pyproject.toml`: al instalar, UV descarga esa versión y recrea el venv solo [07:51].
- Añadir una dependencia a mano en el `pyproject.toml` también funciona: al ejecutar, UV detecta el cambio y la instala — por debajo eso es **`uv sync`**, que sincroniza el entorno virtual con la configuración declarada [08:50].

## Versiones de Python [01:39]

- `uv python list` muestra las disponibles (de la 3.8 a la 3.14 en el vídeo); `uv python install 3.10` instala en segundos y `uv python uninstall` elimina.

## Ideas transversales

1. UV unifica tres roles que antes exigían herramientas separadas (pip + venv + pyenv): un solo binario rápido por su implementación en Rust.
2. El flujo proyecto (pyproject.toml + uv.lock + uv sync) es el equivalente Python del ecosistema Node/npm — buena puerta de entrada para quien ya conoce ese modelo.
3. Encaja con el panorama del [[mapa-del-ecosistema-python]] como la pieza moderna de gestión de entornos y dependencias.

# FAV-423 — Si sigues usando pip, estás perdiendo horas de tu vida (Código Espinoza)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RFInJeuhiFk) — Canal **Código Espinoza - Automatiza tu Vida**, publicado 2026-02-26, 11:30, ES (subtítulos automáticos).
- **Raw**: `raw/electronica-practica/2026-11-15-pip-uv-gestor-paquetes-python.md`
- **Nota de dominio**: fuente de INFORMÁTICA — **candidata a dominio informatica** (se suma a FAV-413/419/420/422). Residenciada en `electronica-practica/` por defecto de la ventana.

## Tesis

En 2026 la comunidad de Python adoptó **uv** (Astral, escrito en Rust, lanzado 2024) como gestor estándar para proyectos nuevos: reemplaza en un solo binario pip, virtualenv/pyenv-virtualenv, pip-tools/pipx y pyenv, con velocidad de 10–100×.

## Por qué es rápido (3 razones)

1. **Rust**: sin overhead de intérprete ni recolección de basura en la resolución de dependencias.
2. **Paralelismo real**: pip instala secuencial; uv descarga y resuelve en paralelo.
3. **Caché global con hard links**: un paquete se descarga una vez y se enlaza entre proyectos; instalación nueva desde caché en milisegundos (demo del video: `pip install -r requirements.txt` ≈ 90 s vs `uv pip install` casi instantáneo).

## Adopción

- **Migración de proyectos existentes**: instalar uv con un comando (script en PowerShell/Linux, o `pip install uv`) y cambiar `pip install -r requirements.txt` por `uv pip install -r requirements.txt`.
- **Proyectos nuevos, 4 comandos**: `uv init <proyecto>` (crea estructura: pyproject.toml, README, .python-version, .gitignore, main.py) · `uv add <dep>` · `uv sync` (sincroniza entorno desde lockfile) · `uv run python main.py`.
- **Lockfile reproducible**: equivalente a `package-lock.json` (Node) o `Cargo.lock` (Rust) — mismo entorno en cualquier máquina.
- **Gestión de versiones de Python**: `uv python install 3.12`, `uv python pin` y `uv venv --python 3.10` — elimina la necesidad de pyenv/nvm-análogos; advierte de incompatibilidades con la versión declarada en pyproject.
- **Scripts desechables**: `uv run --with pandas,matplotlib script.py` crea entorno temporal, instala dependencias en caché global, ejecuta y desaparece — sin ensuciar el sistema (el «comando estrella» del título).

## Límites (cuándo NO usar uv)

- Paquetes con binarios/dependencias del sistema (CUDA, cuDNN, ffmpeg): pip sigue siendo el rey; uv no instala binarios del SO.
- Publicación de paquetes con CI complejo: Poetry sigue más maduro en ese aspecto.
- Para el 90% restante (apps, scripts, APIs, data science de Python puro), el video recomienda migrar.

## Cruces

- [[ia-en-mcu]]/FAV-419: el ecosistema Python de IA (LangChain, FastAPI, ChromaDB) es el caso típico de proyecto con muchas dependencias donde la velocidad de uv importa.
- FAV-422 (tutorial oficial Python), FAV-424 (APIs de Python): clúster Informatica/Python, ya 3 fuentes — umbral anotado en Log sin páginas nuevas.


## Consolidación (2026-11-15)

- Canal consolidado: entidad [[codigo-espinoza]].
- Ver también (ecosistema Python): [[resumen-FAV-422-introduccion-informal-python-docs]].

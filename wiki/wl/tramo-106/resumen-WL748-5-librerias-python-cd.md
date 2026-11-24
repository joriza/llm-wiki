# WL-748 — 5 Librerías de Python que deberían ser ILEGALES (CD)

- **Fuente original**: `raw/wl/tramo-106/2026-11-01-5-librerias-de-python-que-deberian-ser-ilegales.md` ([YouTube](https://www.youtube.com/watch?v=cM4HJXWDNeU))
- **Canal**: CD (1.ª fuente en la wiki)
- **Publicado**: 2026-11-01 · **Duración**: 06:57 · **Idioma**: es (ASR, garbiñeos normalizados aquí)
- **Tramo**: 106 (relevo 2) · **Ingesta**: 2026-11-24

## Qué trata

Recorrido rápido por 5 herramientas Python con criterio común: convierten trabajo aburrido de una hora en una línea de código (open source, un comando para instalar, sin ser experto). La tesis final es el hallazgo real del video: **4 de las 5 no están escritas en Python** — Python quedó como el "idioma con el que das órdenes", mientras lo pesado y rápido se escribe debajo (Rust, C++, Node).

## Las 5 librerías

1. **Typer** — de Sebastián Ramírez (el colombiano detrás de FastAPI, que la documenta como "hermano pequeño de FastAPI"): tipos en los parámetros → aplicación de terminal con argumentos, ayuda y autocompletado (Bash/ZSH/Fish/PowerShell) generados solos. La única de la lista en Python puro.
2. **DuckDB** — el ASR lo dicta "DocDB" (garbiñeo corregido aquí): SQL directo sobre archivos (CSV/TSV/Parquet) sin servidor, y sobre DataFrames de Pandas en memoria "la base de datos vive dentro de tu propio programa". Con él "empiezas a mirar a Pandas con otros ojos".
3. **Polars** — lo mismo que Pandas pero multicore + modo lazy (el optimizador reorganiza la consulta antes de ejecutar) + procesa archivos más grandes que la RAM por partes. La pega: sintaxis distinta, hay que reaprender. Escrito en **Rust**.
4. **Playwright** (Microsoft) — automatización de navegador; el truco "ilegal": `playwright codegen` abre dos ventanas y **escribe el código del test por ti** mientras navegas (con aserciones por señalar texto). El motor interno es **Node.js**.
5. **uv** (Astral) — sustituto declarado de pip/pip-tools/pipx/poetry/pyenv/twine/virtualenv, 10-100× más rápido; dependencias inline en el script con `uv run`; gestión de versiones de Python (`uv python install`). Escrito en **Rust**; Astral también hace ruff. Nota del video: OpenAI anunció comprarla para su equipo de Codex — "la herramienta con la que vas a instalar Python va a ser de una empresa de IA".

## La tesis de cierre

Las herramientas que más rápido crecen **no compiten con Python: se esconden debajo de él**. No hace falta aprender Rust para aprovecharlo, pero sí saber que existe: "quien entiende qué hay debajo es quien elige bien las herramientas". Recomendación si solo se instala una: uv, "la que más tiempo te devuelve".

## Cruces

- Hilo de 2.ª fuente de las herramientas ya fichadas: [[resumen-tutorial-duckdb-la-bbdd-rapida-y-ligera-ideal-para-analitica-etl-scripting-micro]] (tutorial previo del dominio), [[polars]], [[playwright]], [[resumen-FAV-333-uv-reemplaza-pip]] (mismo sujeto, enfoque reemplazo de pip) — el video añade la capa de contexto de ecosistema: la compra de Astral por OpenAI y el patrón "Python como idioma de órdenes".
- [[fastapi]]: origen compartido con Typer (mismo autor).
- Espejo temático del hilo ecosistema: [[mapa-del-ecosistema-python]].
- Tangencial del hilo "ya no escribo código" del tramo 105 (WL-740, WL-736): aquí el delegado no es un LLM sino el tooling nativo — automatización por debajo del lenguaje.

# Resumen: 827 — No Necesitas una GPU de 3000€ para IA Local

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-08-31-827-no-necesitas-una-gpu-de-3000-para-ia-local.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Oyama»/«Oayama»→Ollama, «fi»→Phi, «qwin»→Qwen, «bgmm»→bge-m3, «gema 4»→Gemma 4, «QWin 1.5 B»→Qwen 1.5B) — https://www.youtube.com/watch?v=2EAtjJbnEVk — atareao (atareado con Linux, episodio 827), 2026-08-31 (22:37).
- **Nota**: fuente 27/58 del lote ia-local (descargada en vuelo; raw en scratch reubicado). Primera fuente del canal atareao en el lote.

## La tesis: con lo que ya tienes, vales

El episodio parte del viaje de los últimos 3 meses del canal: de un «pequeño laboratorio» para cualquiera a necesitar 2 GPUs Nvidia, para terminar en la nube (OpenRouter). El punto de llegada de 827: **«no vas a necesitar una GPU de 3000 euros ni un clúster»** — hardware mínimo + software mínimo + los modelos y herramientas adecuados. El error a evitar: perderse buscando un modelo supercomplejo cuando «con un modelo mucho más sencillo y las herramientas adecuadas (MCPs y skills), vamos a tener lo que buscamos».

## El «botiquín del explorador de recursos de IA»

### Hardware mínimo (sin GPU, solo RAM)

- **8 GB RAM + SSD** (sin GPU): ya rinde para modelos pequeños como Phi 3.5 o Qwen 1.5B.
- **16 GB** → modelos un poco más grandes; **32 GB** → mucho más grandes; con GPU, a más.
- **SSD es obligatorio** — mejor NVMe; «con un disco duro no te va a funcionar ni de coña».
- **Consejo de combinación**: lo simple en local, lo pesado en la nube — «combinar lo que tenemos con los servicios en la nube».
- Modelo de mentalidad: montar la memoria digital hoy con lo que hay, crecer sobre ella, y mejorar hardware después o apoyarse en la nube (también mezcla: embeddings iniciales por un servicio barato, nuevos documentos en local).

### Software base

- **Ollama** es la recomendación para empezar a lo mínimo: en Arch `sudo pacman -S ollama`, o en general `curl -fsSL https://ollama.com/install.sh` (transcripción: «ollama.install/sh»). `ollama ls` lista los modelos instalados; `ollama pull phi3.5` / `ollama run llama3.2` (2B ~2 GB) para trabajar. El canal lleva 26 modelos instalados de 2.2 GB (llama3.2) a 9.6 GB (Gemma 4), incluyendo bge-m3 1.2 GB para embeddings.
- **Docker o Podman** para los servicios (el canal es «team Podman»): Open WebUI y OpenCode instálados sueltos «contaminan» el sistema con librerías incompatibles entre sí; en contenedor, aislados. Regla práctica: montar primero, investigar Docker vs Podman después — «¿para qué vas a calentar la cabeza?».
- Alternativas a Ollama (llama.cpp, vllm) quedan para más adelante.

### Roadmap de episodios siguientes (lo que viene en la temporada 9)

- **RAG local con SQLite-vec** (extensión de SQLite para vectores): notas enlazadas en un grafo — «rag de tipo gráfico»; escrito en Rust para que se descargue y use directo (empezó en Python para mostrar las posibilidades).
- **Whisper** local (reconocimiento de voz, episodio propio) + **yt-dlp y FFmpeg** para bajar y procesar audio/vídeo (transcribir vídeos, podcasts, reuniones → alimentar la base de conocimiento).
- **TTS local** más sofisticado que lo de Windows/Linux.
- **Skills imprescindibles y MCPs** (episodios dedicados).

### El script de organización (notas del episodio, «82705 organización»)

Un script bash que monta el laboratorio completo: Docker para Ollama, Docker para Open WebUI, directorio de modelos para llama.cpp, directorio de datos (notas, transcripciones, embeddings), scripts de backup, transcripción y consultas, y configs de Ollama y Open WebUI. La joya: **guardarlo como repositorio git** — «cuando migres a otro equipo… siempre vas a tener disponible esta configuración». Demo en vivo: `ollama run llama3.2` responde al instante (él corriendo en Nvidia, «para que sea dinámico el vídeo»), hasta generando un compose.yml de ejemplo.

## Por qué importa para la wiki

Es la **pieza de organización y escalado mínimo** del hilo ia-local: el criterio «RAM + SSD basta para empezar» complementa la lección medida de [[hardware-para-ia-local]] (velocidad de memoria > capacidad) y da el stack de servicios (Ollama + Open WebUI + OpenCode en contenedores) del cual salen RAG SQLite-vec, Whisper, TTS y el git del laboratorio como sistema reproducible. Canal: atareao.

## Cruces en la wiki

[[hardware-para-ia-local]] (ampliado: piso 8 GB, SSD obligatorio, stack Ollama/contenedores), [[ia-local-texto]] (el laboratorio mínimo como punto de partida), [[desarrollo-con-modelos-locales]] (OpenCode/Open WebUI en el stack). El RAG SQLite-vec y Whisper anuncian el roadmap de la temporada 9 del canal.
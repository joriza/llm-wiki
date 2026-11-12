# atareao

- **Tipo**: página de entidad (canal).
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 27/58 del lote ia-local — única fuente del canal en este lote).
- **Fuentes**: [[resumen-827-no-necesitas-una-gpu-de-3000-para-ia-local]].

**atareao** (atareado con Linux) es un canal de divulgación tecnológica en español centrado en Linux, contenedores (Podman/Docker), automatización y ahora IA local. La fuente 27 entrega el **botiquín mínimo de IA local**: 8 GB RAM + NVMe obligatorio → Phi 3.5 / Qwen 1.5B; 16-32 GB → modelos mayores; sin GPU combinar local (simple) + nube (pesado); stack Ollama (`curl -fsSL https://ollama.com/install.sh` o `pacman -S ollama`) + contenedores Podman/Docker para Open WebUI y OpenCode (aislamiento librerías); roadmap temporada 9: RAG SQLite-vec (Rust), Whisper local, TTS, skills/MCPs; script bash monta laboratorio completo y se guarda en git.

Estilo: práctico, orientado a "montar tu laboratorio con lo que tienes", combinación local + nube, escalado progresivo.
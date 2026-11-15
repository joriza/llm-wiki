# FAV-413 — SillyTavern: frontend de LLM para power users (docs oficiales)

- **Fuente original**: fuente web no-YouTube (sin raw) — https://docs.sillytavern.app/ — documentación oficial de SillyTavern.
- **Dominio**: `electronica-practica/` — **fuente claramente de INFORMÁTICA/IA local, candidata a dominio informatica** (decisión del usuario en la consolidación).

## Qué es

**SillyTavern (ST)** es una **interfaz de usuario instalada localmente** para interactuar con LLMs de texto, motores de generación de imágenes y modelos TTS de voz. Proyecto libre y open source de la comunidad (fork de TavernAI 1.2.8, febrero de 2023; 300+ colaboradores), orientado a dar máximo control sobre los prompts, asumiendo una curva de aprendizaje alta.

## Notas

- **Requisitos**: mínimo — cualquier máquina con **Node.js 20+**; para inferencia local en la misma máquina se recomienda GPU NVIDIA serie 3000 con ≥6 GB de VRAM. Instalación para Windows, Linux/Mac, Android y Docker.
- **Ramas**: `release` (estable, actualización mensual, recomendada) y `staging` (features al día, varias actualizaciones diarias, solo power users).
- **Backends**: ST es solo la interfaz — necesita un backend de inferencia: AI Horde (out-of-the-box), API OpenAI-compatible, KoboldAI, Tabby y otros backends locales o en la nube.

## Relacionado

- Contraste de arquitecturas IA en microcontroladores (edge vs nube): [[ia-en-mcu]] — SillyTavern es el análogo en PC: frontend local + backend de inferencia elegible.
- La wiki tiene fuentes previas del clúster IA local del dominio ia-uso-practico (panorama de herramientas open source); esta doc refuerza el patrón frontend + backend desacoplados.

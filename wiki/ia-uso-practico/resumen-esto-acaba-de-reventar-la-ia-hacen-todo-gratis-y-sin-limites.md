# Resumen: ¡Esto acaba de reventar la IA! Hacen TODO gratis y sin límites

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-uso-practico/`.
- **Fuente original**: `raw/ia-uso-practico/2026-06-28-esto-acaba-de-reventar-la-ia-hacen-todo-gratis-y-sin-limites.md` (video en español, subtítulos manuales) — https://www.youtube.com/watch?v=HreBx99BDsc — Alejavi Rivera, 2026-06-28 (27:11).
- **Nota**: fuente 1/58 del lote ia-local. Recopilatorio panorámico: una mención por herramienta, sin profundidad técnica — consolidado en [[panorama-herramientas-open-source-ia]]. Los nombres garbiñados por ASR se marcan con (?). El patrocinio del video (Mammouth) queda excluido de la síntesis.

## La tesis

El código abierto dejó de ser «la alternativa gratuita» para volverse «la mejor opción» en privacidad e ilimitación — y la instalación dejó de ser barrera: hay cuatro vías (instalador oficial, comando de inicio rápido, Docker, o **pedirle a un agente de código que lea la documentación e instale por vos**, demostrado con Codex).

## Los bloques de casos de uso (20+ herramientas)

- **NotebookLM privado**: Open Notebook (cuadernos/fuentes/podcasts local, vía Docker).
- **Voz**: Voice Box — clonar, locutar, transcribir; modelos locales (Whisper para transcripción, Qwen TTS para voz) o vía API; con «Capture» para dictado en cualquier app.
- **Optimización de tokens**: Headroom — detecta el tipo de contenido y comprime el contexto; claims del canal: >50.000 estrellas en GitHub y ahorros de ~90 % en tareas de búsqueda de código (no verificado).
- **Seguridad de skills**: Skill Spector (NVIDIA) — inspecciona skills de IA antes de instalarlas; 68 patrones de vulnerabilidad en 17 categorías (prompt injection, jailbreak…); «más del 26 % de las skills podrían contener vulnerabilidades».
- **Equipos de agentes**: Paper Click (?) — plataforma de orquestación jerárquica estilo organigrama empresarial (roles, tickets, gobernanza de costes), integrando Claude/Codex/Gemini CLI/Hermes (?).
- **Todo en uno local**: Anything LLM (instalador desktop).
- **Interfaz agéntica unificada**: Openhs (?) — unifica Claude Code, Codex, Gemini CLI; calendario de tareas autónomas, skills y MCP unificados.
- **Navegación para agentes**: Browser Use (plan cloud + local), Firecrawl (scraping/búsqueda/mapas/crawls con plan free) y la skill «Last 30 Days» (?) — investigación real de últimos 30 días vía Reddit/YouTube largo, evitando filtros de X.
- **Investigación profunda**: Deerflow (ByteDance, v2.0) — skills progresivas, testeable online antes de instalar.
- **Video/animación**: Hyperframe (HeyGen) — animaciones desde código HTML/CSS/JSON → MP4; acepta material propio; Open Montage (?) — producción agéntica completa (investigación → redacción → materiales → edición → composición).
- **Skills de proyecto**: Gstack (Garry Tan, Y Combinator) — suite ordenada pensar → planificar → construir → revisar → probar → lanzar → reflexionar, con roles (office hours, CEO planner, gerente de ingeniería…); Superpowers (200.000+ estrellas) — repo de skills.
- **Auditoría de seguridad**: BronDF (?) — agentes que auditan apps/activos antes de publicar; Anthropic Cyber Security Skills — 6 frameworks (MITRE ATT&CK…), 66 skills de nube, análisis de malware.
- **Documentos para agentes**: MarkItDown (PDF/Office → Markdown) y OCR avanzado de Baidu (texto, imágenes, tablas, fórmulas, citas).
- **Alternativa a Higgsfield**: Open Generative AI (?) — UI open source para imagen/vídeo/audio (clips, lip-sync, animaciones).
- **Bloque express** (ya consolidados en la wiki): Obsidian ([[obsidian-memoria-agentes]]), Handy (transcripción), Hermes Agent, Yan (?) (chat local estilo [[ia-local-texto]]), n8n, ComfyUI ([[generacion-local-de-imagenes]]), Ollama ([[ia-local-texto]]).

---

**Ver también**: [[panorama-herramientas-open-source-ia]] (concepto consolidado) · [[obsidian-memoria-agentes]] · [[ia-local-texto]] · [[generacion-local-de-imagenes]] · [[clonacion-de-voz]] · [[agentes-de-codigo]] · [[agregacion-apis]] (páginas existentes que cruza).

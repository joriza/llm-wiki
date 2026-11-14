# Resumen: Craft Anything acabó con TODO — copia cualquier app fácil y gratis

- **Fuente original**: `raw/wl/2026-11-12-craft-anything-acabo-con-todo-copia-cualquier-app-facil-y-gratis.md` (WL-59, tramo 4)
- **URL**: https://www.youtube.com/watch?v=hclMMYHiMtI
- **Canal**: Alejavi Rivera (subtítulos **manuales**; con patrocinio de OpenArt — generación de vídeo Seedance 2.5 — integrado en bloque propio)
- **Publicado**: 2026-11-12 · **Duración**: 25:18 · **Idioma**: es (transcripción literal)

## Qué es Craft Anything

Nueva herramienta de **ArtCraft/StoryTold** (el ecosistema de Brandon Thomas — ingeniero que empezó a reconstruir apps de Adobe como Photocraft por la penalización por cancelar Adobe DO; ecosistema hoy: ~15 apps open source, **+220.000 estrellas en GitHub**, updates diarias; instalador de un clic). Craft Anything se libera a la semana siguiente de PhotoCraft y **no es un clon de algo**: convierte «parte de un proceso» en herramienta reutilizable y permite **recrear cualquier software** desde web, app instalada, videojuego o desde cero. Su lanzamiento coincidió con las restricciones de Claude Code para recrear videojuegos existentes — «se presentó como reivindicación de la autonomía del usuario». Conectable a **cualquier motor de IA**, incluidos locales (Ollama/MS Studio; «algo más recortados que la nube»), APIs gratuitas (OpenRouter, Groq, Nvidia NIM, FreeLLMAPI) u oficiales — Alejavi usa **DeepSeek 4.1** (configura proveedor/URL/API key/modelo a mano). Herramientas auxiliares recomendadas: Playwright (motor de investigación), Godot/Rust/Unity/Unreal para juegos.

## La prueba (3 recreaciones con DeepSeek 4.1, costes reales)

1. **«Lumabi» (clon funcional de Loom)** — grabar pantalla+webcam+mic y exportar, **sin réplica visual** (>50 % similitud prohibida, renombrado). 50 minutos; **0,69 $**. Resultado honesto del propio tool (similitudes 31-40 % por página); **la funcionalidad funciona de verdad**: graba pantalla+cámara+micrófono, previsualiza, recorta, exporta y descarga — ejecutando **local y privado** (URL local). Iteración posterior (por ~2 $) añade personalización del círculo de webcam (posición/tamaño/forma/colores, calidad 2K) — funcionó a la primera.
2. **Excalidraw al 90 %+ de similitud**: 1 h 20 min, **85 M de tokens, 0,54 $** → 93 % de similitud («pizarra»); figuras, flechas, mano que mueve todo, dibujo libre — «todo funcionando a la perfección». Modo avanzado del tool = «un Visual Studio enfocado a recreación» con trazabilidad completa (modo simple/avanzado conmutable).
3. (Wordcraft instalado como demo del instalador de un clic.)

## Las advertencias del canal (bloque legal/límites)

- **Legalidad**: recrear funcionalidades e inspirarse = posible; **copiar código, marcas o elementos protegidos = ilegal**; no comercializar una copia como alternativa original.
- **Similitud visual ≠ funcional** — probar botones, operaciones y resultados reales.
- **Complejidad**: apps con servidores/APIs/servicios externos son mucho más difíciles de recrear; y «donde te inspirás de otro software, mañana lo hacen con el tuyo».
- **Tokens/coste**: modelos potentes = mejores resultados; más iteraciones = más tiempo y tokens; locales < nube. FreeLLMAPI como agregador de APIs gratuitas (>7.000 M tokens/mes). Fase alfa: errores, bloqueos, inconsistencias — «una buena supervisión, pruebas y correcciones marcan la diferencia vs la estructura que puede soportar una empresa detrás de un SaaS».
- Cierre-filosofía: «reconstruir lo que existe no es el destino, es el punto de partida para crear algo que todavía no existe».

## Notas críticas

- Prueba hands-on con **costes y tokens declarados** (0,69 $/50 min; 85 M tokens/0,54 $) — raros y valiosos en el género. La herramienta complementa a la de WL-58 (mismo ecosistema ArtCraft, pieza distinta: allí MCP en apps, aquí el generador de apps).
- Ética bien acotada (no clonar lo cerrado; funcionalidad vs apariencia; el umbral del 50 % pedido explícitamente como decisión moral/práctica, no técnica).
- ASR: «Fall AI» (Fall AI?), «Geminite» (Gemini), «Kimica/Kimik» (Kimi K?), «Dipsic/Deepsic» (DeepSeek), «Jidra» (¿Playwright?), «Scalidraw» (Excalidraw), «Lom» (Loom), «Sidans 2.5» (Seedance), «DO» (Adobe).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** — mismo ecosistema que WL-58 (ArtCraft) y patrón vi-coding de WL-56; [[deepseek-harness]] reforzado (DeepSeek 4.1 como motor barato de recreación — 85 M tokens por app completa).
- **WL-48 (Sequoia)**: el caso Loom es exactamente «sustituir el contrato de externalización por un proveedor nativo de IA» — y el título deWL-58 («haz que la IA trabaje por ti») ejecuta la tesis.
- **WL-53 (Mitjana)**: el «pedal de guitarra replicado en 3 días» aquí tiene su versión completa (Loom replicada por 0,69 $) — la misma línea ética (funcionalidad sí, marca/código no).
- Tema-candidato: **recreación de software por IA con costes medidos** — primera fuente con economía detallada del vi-coding de apps.

# WL-214 · Cómo usar REA para CLONAR Apps con IA (explicado fácil)

- **Fuente original**: `raw/wl/tramo-30/2026-10-15-como-usar-rea-para-clonar-apps-con-ia-explicado-facil.md`
- **Video**: [Cómo usar REA para CLONAR Apps con IA (explicado fácil)](https://www.youtube.com/watch?v=1yUWkR32QXQ)
- **Canal**: Martín Toledo | IA & Automatización
- **Publicado**: 2026-10-15 · **Duración**: 25:21 · **Ingesta**: 2026-11-15 (tramo 30, formato dominio pendiente de consolidación)
- **Marco**: demo en primera mano del autor sobre una herramienta de terceros (REA, de "Morluto"); cifras de estrellas de GitHub citadas en vivo; bloque final de autopromoción (mentorías, agencia) excluido de la síntesis.

## Qué trata

Explicación divulgativa de REA ("Reverse Engineer Anything"), repositorio de GitHub que conecta un agente de código (Claude Code o Codex) vía MCP con herramientas clásicas de ingeniería inversa (Ghidra, IDA, Hopper, analizadores web) para investigar cómo funciona una aplicación y construir una versión propia adaptada. Incluye demo: clonado de la interfaz de TypeLess (dictado por voz) desde una captura de pantalla.

## Puntos clave

- **El concepto**: ingeniería inversa = partir de algo que funciona y descender hasta entender cómo lo consigue (contra la ingeniería directa). No es nuevo — existían Ghidra/IDA/Hopper desde hace años; lo nuevo es que REA baja la barrera: el agente orquesta las herramientas de análisis y el usuario solo plantea el objetivo.
- **Cinco piezas del flujo**: (1) humano con una pregunta concreta (mientras más precisa, menos dispara la IA); (2) agente trabajador (Claude Code/Codex) que organiza el trabajo; (3) REA como capa MCP que expone las herramientas de análisis; (4) hallazgos devueltos con pruebas y vacíos señalados; (5) uso: explicar, documentar o escribir una implementación nueva.
- **Disciplina epistémica destacada por el autor**: distinguir lo **observado** (encontrado de verdad), lo **deducido** (interpretación a partir de pistas) y lo **desconocido**; no aceptar una explicación solo porque suena convincente — el LLM tiende a maquillar la respuesta aunque no lo sepa.
- **Velocidad de adopción citada**: de ~400 estrellas (2 de octubre) a ~230.000 en menos de dos semanas según lo mostrado en el repo.
- **Ejemplos de comunidad**: replicados de Minecraft/GTA V, productos de Adobe (PhotoCraft/VectorCraft/FilmCraft… como "miles de alternativas"), reconstrucción inspirada en TradingView. Advertencia del autor: vender un clon suele tener problema legal; usarlo local y sin distribuir lo ve razonable.
- **Demo (TypeLess)**: prompt acotado — recrear solo la pantalla (distribución, proporciones, colores, contenido ficticio), HTML autocontenido, sin instalar dependencias ni investigar funciones; resultado visual casi idéntico al original, comparado lado a lado. Nota honesta: para el clon visual bastó Claude Code con la imagen; REA aporta cuando hay que investigar el comportamiento más allá del aspecto.
- **Tesis económica ("¿muerte del SaaS?")**: sube la presión sobre herramientas cuya ventaja es solo una interfaz fácil de reconstruir; pero al pagar un SaaS se paga el iceberg completo — integraciones, soporte, mantenimiento, actualizaciones, confianza e historial compartido (Slack/Notion como ejemplos). Conclusión: no dar por muerto el software por un repositorio; sí remarcar que bajó el coste de explorar y construir alternativas. Clave práctica: replicar solo lo que uno usa de verdad, y asumir que el mantenimiento pasa a ser propio (VPS + modelo + mantenimiento).
- **Tres beneficios que destaca**: entender (aprender cómo resuelve problemas otra herramienta), comunicar mejor (una referencia concreta — captura — reduce iteraciones), y adaptar (construir solo las piezas que encajan con tu forma de trabajar).

## Observaciones de triage

- Demo de primera mano del autor; los casos de comunidad (Adobe, TradingView) son experiencia de terceros no auditada, tal como el propio autor aclara; cifras de estrellas no verificadas de forma independiente.
- Marco comercial señalado: mentorías gratuitas de domingo + agencia del autor (excluido de la síntesis).
- Cruces previstos: [[agentes-de-codigo]] (Claude Code/Codex como ejecutores), [[hardware-agentico-mcp-first]] / patrón MCP (REA como servidor MCP de herramientas de análisis), WL-153/WL-185/WL-203 (metodologías y flujos con agentes), WL-211 (SDD: disciplina de especificación compartida), WL-165 (Harness², capa de herramientas para agentes), WL-190 (teoría de juegos no — descartar; el eje es software).
- Dominio previsto: ia-uso-practico/agentes-de-codigo — consolidación diferida, S4: no se crean dominios nuevos.

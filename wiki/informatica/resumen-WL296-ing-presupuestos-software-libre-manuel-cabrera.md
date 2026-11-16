# WL-296 — Adiós a las licencias caras: herramienta Open Source para ingenieros

- **Fuente original**: `raw/general/2026-09-23-adios-a-las-licencias-caras-herramienta-open-source-para-ingenieros.md` (transcripción automática intacta)
- **Video**: https://www.youtube.com/watch?v=rZZJTF9IRjA
- **Canal**: Manuel Cabrera Caballero · **Publicado**: 2026-09-23 · **Duración**: 23:32 · **Ingesta**: 2026-11-16
- **Idioma**: español (subtítulos automáticos; normalizado solo aquí, no en el raw)

## Resumen

Demo-tour (23 min, Manuel Cabrera Caballero, Pop!_OS 24.04) de **Ing. Presupuestos**, software libre (repositorio público en GitHub, v3014 del 16-09-2026) de presupuestos de obra del ingeniero peruano Marco (autor también de Ingetrazo, mostrada en un video previo): multiplataforma y offline, formato abierto compatible con S10, Delphi/Delfin y Power Cost (alternativas privativas de referencia en Perú).

Puntos recorridos:

- **Instalación**: Windows (tienda Microsoft, 10/11) y GNU/Linux (AppImage ~340 MB o Flatpak; sin macOS por falta de equipo Apple del autor — no publica lo que no puede probar). Gestión del AppImage con AppImage Manager o Gear Lever. Proyecto apoyable por GitHub Issues (bugs/sugerencias, con llamada explícita a la cortesía), Yape (Perú), PayPal o Liberapay.
- **Primer arranque**: cuenta local, portafolios y proyectos de ejemplo (14 tarjetas con filtros por tipo — agrario, educación, salud, saneamiento — y por estado: elaboración/revisión/aprobado/ejecución), vistas mosaico/lista con cliente, ubicación, total y fecha.
- **Configuración**: datos fiscales de la empresa (nombre, RUC, dirección, logo), moneda (listado inicial corto; pesos colombianos entre ellas), jornada, backups automáticos diarios y al cierre (7 diarios + 10 al cierre + 10 manuales), carpeta de exportación PDF/Excel/Word, escala de interfaz (útil en 4K), español/inglés y multiusuario.
- **IA integrada (opcional, tejida en el flujo)**: sugerencia de estructura de partidas; compatible con Anthropic, OpenAI, Gemini, Groq, OpenRouter y Ollama (modelos locales sin coste), con API key propia oculta en pantalla. Demo con OpenRouter: 457 modelos disponibles, 24 gratuitos; asistente «Tucia» (pingüino flotante de consejos).
- **Flujo de presupuesto**: nuevo portafolio → proyecto (nombre, ubicación con geocodificación, cliente, moneda, modalidad, plazo de obra, grupo de análisis); la prueba de «sugerir partidas con IA» falla sin partida especificada y funciona con plantilla local «vivienda unifamiliar» (importa 53 partidas). El autor del video declara no ser experto en presupuestos y deja la evaluación profunda a la audiencia.

## Apreciación

Video de divulgación de software libre con demo en vivo; contenido factual limitado a las características mostradas y declaraciones del propio producto (sin métricas independientes). No es fuente de verificación externa — sirve como registro de una alternativa open source al software privativo de presupuestos peruanos y de la experiencia de primera mano de instalación y uso básico.

## Cruces y notas

- Mismo canal/autor de la serie de aplicaciones de Marco: Ingetrazo (video previo citado en el raw).
- Cruces: WL-155 (lenguajes/espera de alternativas open source). Dominio destino: general (software libre/herramientas), consolidación T49 2026-11-16.
- Afirmaciones de compatibilidad (S10/Delfin/Power Cost) y versiones — 1.ª mano del propio producto, sin contraste independiente.

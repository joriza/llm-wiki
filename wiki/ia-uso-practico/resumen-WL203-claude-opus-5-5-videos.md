# WL-203 · Claude Opus 5.5: La revolución en la creación de videos

- **Fuente original**: `raw/ia-uso-practico/2026-09-28-claude-opus-5-5-la-revolucion-en-la-creacion-de-videos.md`
- **Video**: [Claude Opus 5.5: La revolución en la creación de videos](https://www.youtube.com/watch?v=sHfxp_AVRlw)
- **Canal**: Melina Blanco | Agentes IA y Automatizaciones
- **Publicado**: 2026-09-28 · **Duración**: 23:12 · **Ingesta**: 2026-11-15 (tramo 27, formato dominio pendiente de consolidación)
- **Marco**: demo/tutorial comercial de agencia (comunidad de pago "Camaleones Digitales", mentorías, webinars como embudo); experiencia de primera mano pero con fuerte autopromoción — señalado en triage.

## Qué trata

Demo en vivo de generación de reels publicitarios con Claude Code + Claude Opus 5.5: instalación de una skill de terceros ("video-camaleón" desde GitHub), generación de un anuncio completo para un gimnasio (promoción 50% diciembre), iteración con avatar personalizado, integración de voces con ElevenLabs vía API key pegada en el chat, y cierre con un análisis de precios de mercado generado por el propio modelo para cotizar paquetes de reels como servicio de agencia.

## Puntos clave

- **Motivación**: la autora esperó pasar el hype del lanzamiento de Opus 5.5 para evaluar con pruebas propias; destaca especialmente el salto en generación de gráficos/3D/video respecto de modelos previos (compara con benchmarks de "Fable", GPT "Astra" y "Sol": mejora agéntica en código ~66,4% y ventaja en gráficos).
- **Flujo demostrado**: Claude Code → instalar skill de generación de video desde un repo de GitHub (con dependencias: Node y otra) → prompt por audio para un reel de gimnasio → iteraciones: reemplazar el avatar genérico "de marca Claude" por uno inspirado en una foto propia → añadir voz en off.
- **Voces**: integración de ElevenLabs por API key compartida en el chat (el modelo la guarda "fuera del repo"; la autora dice revocarla después) — la voz genera guion y locución emparejados con el guion visual del reel.
- **Coste de tokens**: reclama que Opus 5.5 cuesta la mitad que los modelos comparados y que la sesión completa de demo consumió ~6% del uso (de 5% a 11% durante la grabación).
- **Monetización**: modelo de negocio propuesto por paquetes (2/4/7 reels semanales) en vez de por video suelto; para fijar precios usa el propio Claude como "experto en análisis de mercado" con búsqueda web → informe estimado: negocio local $529–$1.499/mes y negocio mediano $799–$2.149/mes (referencias México/LatAm en dólares; ~$50–66 por reel), con pestañas de referencia EE. UU., costes, margen y recomendaciones.
- **Embudo final** (excluido de la síntesis como autopromoción): formulario de solicitudes de agentes (Tally), grupo de WhatsApp con recursos en Drive, comunidad de pago de ~377 miembros con módulos (automatizaciones, vibe coding con Antigravity y Claude, ventas, mentorías "camaleón agéntico") y webinars de apertura.

## Observaciones de triage

- Fuente de primera mano sobre el flujo skills + Claude Code para multimedia (generación de video corto), útil como evidencia de capacidad y de patrón de trabajo (skill de terceros + API externa + iteración conversacional), NO como referencia de precios: las cifras de mercado las produce el propio modelo con búsqueda web y la propia autora advierte de no tomarlas sin verificación.
- Fuerte componente promocional (comunidad de pago, mentorías, grupo de WhatsApp): señalado en triage; la parte comercial del cierre no se sintetiza.
- Patrones de seguridad discutibles mostrados en pantalla: pegar una API key en el chat del agente (aunque diga revocarla).
- Cruces previstos en consolidación: [[agentes-de-codigo]], cluster ia-uso-practico (comparables WL-153 Gentle Design, WL-165 Harness², WL-178/WL-180 Eric Risco); entidad de canal candidata (Melina Blanco).


## Ver también

- [[agentes-de-codigo]]
- [[generacion-local-de-imagenes]]
- [[ofimatica-agentica-local]]
- [[seguridad-fuera-del-modelo]]

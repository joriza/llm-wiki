# WL-633 — Probé CRAFT ANYTHING y entiendo por qué asusta a las EMPRESAS

- **Fuente original**: `raw/wl/tramo-99/2026-11-17-probe-craft-anything-y-entiendo-por-que-asusta-a-las-empresas.md` ([Vídeo](https://www.youtube.com/watch?v=_NI9ugWkDaY))
- **Canal**: MecheTech (Mr. R — 1.ª fuente; «no programador», prueba de 1.ª mano con costos reales)
- **Publicado**: 2026-11-17 · **Duración**: 15:11
- **Dominio**: herramientas IA / agentes de código (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Prueba pagada y honesta de **Craft Anything** (31-10-2026, +34.000 estrellas en GitHub en 2 semanas; sucesora del proyecto Artcraft, oct. 2026, que arrancó con 7 apps gratis clonando Adobe — «calladita» en Adobe Max sin mencionarlo):

1. **Qué es**: ingeniería inversa asistida por agente — mira la app como la vería un usuario y un agente de código (Claude Code, ChatGPT, Gemini, Kimi — el modelo lo pagas tú) construye una nueva comparándola con la original, en modo **sala limpia** («dibujar un edificio desde la calle sin ver los planos»: no lee el código, solo lo visible). Modo alternativo **deep**: sí lee el código, con herramientas de la NSA (Ghidra — ASR «descargarra») y análisis de Android/tráfico — «tenerlas no es ilegal; las usan los investigadores de seguridad», pero explica el miedo de las empresas.
2. **Las dos banderas rojas**: (a) el modo automático viene con «seguir sin preguntar» — el agente ejecuta en tu computadora «como si fueras tú»; su propia página de estado reconocía que ese modo «no se había probado en una construcción real» — él lo puso todo en preguntar («puede hacer desastres» y con API «gastos de locos»); (b) la **contradicción del revisor**: la herramienta que promete no copiar puntuaba por cuántas etiquetas del original tenía («6 de 20 requisitos, 30 %; pedía meter el nombre Focalboard») → el agente constructor **se negó** («eso iría contra lo pedido») → bucle pidiendo/copiando-negándose → 2 vueltas vacías de ~580.000 tokens cada una «para escribir apenas un par de líneas» — quejas idénticas abiertas en GitHub. Ironía central: «la aplicación salió bien; lo que falla es la parte que la revisa, que te castiga por no copiar».
3. **La prueba real y la factura**: clonó Focalboard — elección deliberadamente segura: app **abandonada por su propia empresa (Mattermost, 2024) con licencia libre** («pedirle clona esta app de pago o pasarle capturas es lo que te puede meter en problemas legales — lo dicen abogados, no yo»). Resultado: tablero+calendario funcional local (Claqueta), con nombres feos y barra calcada en estructura. Costo: ~1 h de máquina, 18 M de tokens leídos, **~$20 de API con Opus 5** (presupuestaba $3-5 — «me quedé corto»). Al terminar a mano con Claude Code + suscripción Pro, las mejoras «casi no se notaron» en el límite (57→58 %) — la lección económica: **suscripción vs. API cobran distinto por tokens parecidos** (suscriptores con >$1.500 de uso a precio API cubiertos por el plan de $200 — «las suscripciones las subvencionan las empresas; donde ganan es con la API»). Producto final: Metetec Labs (modo oscuro, papelera, deshacer, plantillas, sus logos).
4. **Lecciones para no-programadores**: elegir modelo por tamaño de tarea (Sonnet = mitad de precio que Opus por millón de tokens); pedir «con mucho más detalle del que creés, porque cada vuelta de más es dinero»; «no es tocar un botón: si no sabés qué pedís ni cuánto cuesta, te llevás un susto con la factura».
5. **Legal**: uso personal = riesgo bajo (abogado de la EFF); distribuir/vender sube el riesgo; el propio manual pide usarlo con programas propios o con permiso; en Europa lo protegido es el código, no la idea — «el diseño original de una pantalla también puede estarlo»; modo deep sobre software de pago «es otra historia».
6. **El marco macro**: proyectos de agencia equivalentes: 10.000-50.000 $ vs. ~$20 local-para-sí (honesto: «no es la misma aplicación — la de agencia lleva servidor, usuarios, móvil y soporte»); «la IA como commodity» (Altman: venderla por contador) vs. analistas en contra — sin apostar: «algo se está moviendo y rápido». Veredicto: «clona de verdad y es increíble, pero ni es gratis ni es un botón — lo pagás en tokens y en saber lo que estás haciendo; probá con todo en preguntar, con suscripción y para vos».

## Señales de triage

- **La mejor prueba de consumo del tramo**: costo real contado en contra de su propia expectativa ($20 vs. $3), el bug del bucle documentado con quejas de GitHub, la bandera de seguridad del modo automático (con cita del propio sitio de estado), la elección legal deliberada (Focalboard libre abandonado) y la comparación de costos honesta («no es la misma aplicación» — se autocorrige antes de que se lo digan).
- Datos contextuales verificables (Artcraft oct-2026, Adobe Max 10-11, estrellas en GitHub, EFF, Ghidra/NSA); nombres ASR normalizados solo aquí («Artcraft/Craft Anything», «Cloud Code/Anthopic» → Claude Code/Anthropic, «Focalbard» → Focalboard, «Sam Oman» → Sam Altman, «fou.ai» sin certeza); raw intacto. CTA de suscripción leve.
- Encaja directo con el hilo agentes del tramo 98 (WL-614/620: el revisor adversarial que bloquea ↔ WL-603 evals; el costo por tokens ↔ WL-602 Jevons).

## Cruces

- Consolidación aplazada: clúster agentes (WL-611/612/614/620/624 + 603/604); el bucle revisor-contradictorio ↔ WL-603 (evals) y WL-602 (la eficiencia amplía el gasto en tokens); suscripción vs. API ↔ [[routing-por-coste]].

## Veredicto de triage

La mejor fuente de consumo del tramo: prueba pagada con costos reales, dos banderas rojas bien detectadas (modo automático y revisor que pide copiar) y marco legal honesto. Sin consolidación (aplazada).

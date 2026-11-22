# WL-719 — Estoy harto de programar con IA (Helmcode)

- **Fuente original**: `raw/futuro-programacion/2026-11-21-estoy-harto-de-programar-con-ia.md` ([Vídeo](https://www.youtube.com/watch?v=l0wvwafjN2k))
- **Dominio definitivo**: `futuro-programacion` (consolidación T25, tramo 105)
- **Canal**: Helmcode (1.ª fuente del canal)
- **Publicado**: 2026-11-21 · **Duración**: 13:45
- **Fecha de ingesta**: 2026-11-24

## Qué trata

Ensayo-explicación con Alex Vidal (ingeniero y psicólogo que asesora equipos de desarrollo) sobre los 5 problemas del desarrollo acelerado por IA y por qué «una tecnología que debería liberarnos nos da más trabajo»:

1. **Producir más código del que entendemos — la deuda cognitiva**: encuesta a la comunidad: 55 % de comprensión del último merge; Vidal admite entender 15-20 % del código que la IA le genera. Antes, escribir código era aprender el sistema («conectar neuronas al construir»); ahora el proceso no es nuestro. Concepto clave: **deuda cognitiva** — igual que la deuda técnica, acumulamos cosas construidas que no entendemos. Matiz provocador: ¿realmente hace falta entender TODO? El código no es homogéneo (login/pagos vs. el corazón del producto: reservas/disponibilidad) — esfuerzo de comprensión proporcional a la importancia del dominio. Para PRs de 2000 líneas: pedirle a la IA un **explainer** (web visual personalizada) y revisar en superficies visuales en vez de línea por línea.
2. **Demasiados agentes para supervisar**: 5 agentes en paralelo terminan y todos piden decisión/revisión al mismo punto central — que sos vos. Capacidad de producción multiplicada, atención constante: supervisar agentes es trabajo intelectualmente exigente, no sentarse a mirar. Límite personal: «podría tener 70 agentes, no debo».
3. **El cuello de botella se desplaza**: acelerar una sección de la fábrica mueve el estrangulamiento a la siguiente — decidir, verificar, producción, adopción; si QA no aguanta, más agentes (tests, Figma→código, señalar bugs en la app, CI/CD)… y el cuello de botella termina siendo **el usuario**: 10× más código exige 10× más feedback; ejemplo Anthropic: entrevista a 81.000 personas con un agente de Claude.
4. **Burnout de coordinación y tamaño de equipo**: regla de las dos pizzas (Bezos) rota: 6 programadores con 5 agentes cada uno duplica las relaciones a gestionar (5→10 por persona, con interrupciones constantes). El máximo humano es finito: «si mi máximo son 10 personas, no puede ser 10 personas Y 5 agentes — tiene que ser menos personas y agentes»; los equipos óptimos se están reduciendo. Para managers: dividir equipos y asumir el **valle de productividad** inicial («hay un hit de performance») con roles más transversales.
5. **Crisis de identidad y el nuevo rol**: programar era resolver puzles y el placer de hacer que funcione; ahora el agente lo hace. Qué nos hace valiosos: meternos en producto, diseño y negocio — «la relevancia y defensibilidad está en resolver el problema de ingeniería COMPLETO»; entrenar sensibilidad de producto y de negocio, hablar con usuarios. «Escribir código es solo una de las muchas cosas de construir un buen producto — este es el nuevo rol de la ingeniería de software, y siempre lo fue».

## Señales de triage

- Ensayo de calidad con marco conceptual propio (deuda cognitiva, burnout de coordinación, valle de performance) y datos concretos (encuesta 55 %, 81.000 entrevistas, dos pizzas). Nota comercial: Vidal ofrece consultoría y la charla del 25/11 en Barcelona; cierre promociona la comunidad «Nan» (modelos DeepSeek/GLM/Kimi/Qwen) — señalado, no invalida el contenido.
- ASR con «tirorines»→«tilín» nivel; «ADES» mencionado implícitamente en la orquestación de agentes. Encaja de lleno en el hilo carreras/agentes del tramo (WL-709/710/711).

## Cruces

- [[delegacion-cognitiva-ia]]: la deuda cognitiva como nombre nuevo del costo de delegar comprensión; el límite de agentes por persona = atención finita.
- [[agentes-de-codigo]]: supervisión multiagente, orquestación y el punto central que colapsa; espejo del «trifecta» de WL-710.
- [[paradoja-jevons-software]]: 10× más código → cuello de botella desplazado al usuario y 10× feedback.
- [[brecha-junior-ia]] / hilo carreras: crisis de identidad y nuevo rol (producto/negocio), espejo WL-711 («no ser proxy»).
- Consolidación aplazada.

## Veredicto de triage

La mejor pieza técnica del relevo: nombra fenómenos que la wiki venía describiendo sin etiqueta (deuda cognitiva, burnout de coordinación). Con contenido comercial declarado. Sin candidatas nuevas a baja. Sin dominios nuevos ni consolidación (aplazada).

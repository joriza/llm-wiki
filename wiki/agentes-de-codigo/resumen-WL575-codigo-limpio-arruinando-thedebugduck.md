# WL-575 — Por qué tu código "Limpio" está ARRUINANDO el proyecto

- **Fuente original**: `raw/agentes-de-codigo/2026-08-16-por-que-tu-codigo-limpio-esta-arruinando-el-proyecto.md` ([Vídeo](https://www.youtube.com/watch?v=NTA6Nt2TSNw))
- **Canal**: TheDebugDuck
- **Publicado**: 2026-08-16 · **Duración**: 15:55
- **Dominio definitivo**: agentes-de-codigo (consolidación T97 relevo 2, 2026-11-17) / informatica-teoria (sobreingeniería y patrones)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Videoensayo técnico contra la sobreingeniería por defecto, ahora amplificada por la IA — la mejor fuente del backlog sobre el tema junto a WL-402 (BettaTech):

1. **El caso apertura**: prueba técnica «calcular envío por tipo de cliente» resuelta con 12 archivos (ShippingStrategy, Strategy, Factory, Singleton Registry, 3 interfaces más) vs la solución correcta: una función con un if, 10 líneas con tests. **El punto IA**: pedirle «hazlo extensible y bien estructurado» genera exactamente los 12 archivos — «no porque sea correcto sino porque los modelos fueron entrenados en millones de líneas enterprise y aprendieron que eso se ve serio. Serio y correcto no son lo mismo».
2. **Genealogía**: Gang of Four (1994) escrito para compiladores y frameworks gráficos C++ de los 90 — y el propio prefacio advierte «el error más común es forzar el patrón donde no existe el problema»; EJB 2 (2000s) imponía 3 archivos + XML por entidad → Rod Johnson (2002) demostró lo mismo con un décimo del código → **Spring nació como respuesta a la sobreingeniería, no como abstracción nueva**.
3. **Patrón por patrón con fallos concretos**: Singleton como estado global (batch que actualiza el IVA de madrugada vs checkout leyendo en plena transacción — tests que pasan/fallan según orden de ejecución; alternativa: scope del framework + instancia limpia por constructor en tests); **memory leak de Android documentado por Google** (singleton reteniendo una Activity destruida → OOM en gama baja, «las reseñas de una estrella solo dicen la app se cierra sola»; solución: contexto de aplicación); interfaces con una sola implementación (1.000 archivos en un proyecto de 500 clases; «la interfaz tiene sentido cuando ya hay dos implementaciones en producción»); PaymentGateway de 4 archivos «por si mañana usamos PayPal» → 3 años después Stripe cambia y hay que tocar los 4.
4. **Complejidad cognitiva**: el cobro falla de madrugada → 5 archivos, 4 clics, 10 minutos para llegar a un if de dos ramas; «no es cuántos ifs, es cuántos saltos mentales necesita alguien para seguir el flujo».
5. **Los desastres históricos**: **Knight Capital 2012** (flag Power Peg desplegado en 7/8 servidores; 45 minutos, 440 M USD de pérdida; el informe SEC: «nadie entendía cómo interactuaban los flags, las estrategias y los componentes») y **healthcare.gov 2013** (50 contratistas, cada uno con su fachada/capa de traducción; el equipo de rescate eliminó capas y conectó directo; >2.000 M USD).
6. **La regla operativa**: **Sandi Metz (2016): «duplicar código es más barato que armar la abstracción incorrecta»**; la regla de tres (primera vez directo, segunda tolera duplicación, tercera abstraes con información suficiente); caso para el Strategy sí existiendo (6 transportistas con 40 líneas de switch) y Observer sí (4 sistemas reaccionando a order confirmed); la pregunta discriminatoria: «¿el problema que resuelve el patrón ya existe hoy o es un quizá? Si es un quizá, es deuda técnica disfrazada de arquitectura»; 3 preguntas pre-abstracción (¿acoplamiento de hoy?, ¿más de una variante real?, ¿tu compañero sigue el flujo sin tour?) y cierre: «saber qué borrar vale tanto como saber qué pedirle a la IA».

## Señales de triage

- **Casos históricos verificables**: Knight Capital (SEC, 440 M) y healthcare.gov (informes públicos, 6 inscripciones, >2.000 M) coinciden con el registro público; citas reales (GoF prefacio, Sandi Metz 2016, guía de Android, Rod Johnson 2002) — todas trazables; «6 personas» de healthcare.gov coincide con los informes de la época.
- El análisis IA-entrenada-en-enterprise es una tesis plausible y coherente, sin estudio citado — señalada como hipótesis del canal.
- ASR mínimo («Jack ni» por YAGNI — identificable por contexto); raw intacto. Sin patrocinios.

## Cruces

- **[[agentes-de-codigo]] +1 y [[odd-metodologia]]**: «serio ≠ correcto» es el corazón del problema de delegación — pedir «extensible» a un agente activa el prior de patrones; ↔ [[delegacion-cognitiva-ia]], [[brecha-junior-ia]] (el junior-IA replica lo que vio), [[odd-metodologia]] (spec mínima antes que abstracción).
- WL-402 (BettaTech, METR sobreingeniería IA) — **par directo a consolidar juntos**; «regla de tres» ↔ [[routing-por-coste]] (abstraer cuando hay variantes reales); «si es un quizá es deuda disfrazada» ↔ WL-473 (alcance recortado), WL-561 (soluciones pequeñas).
- Knight Capital ↔ WL-537 (resiliencia) y el hilo «los errores viven en los bordes y los flags» (WL-536 ORM, WL-543).
- TheDebugDuck 6.ª fuente (entidad confirmada desde WL-536) — hilo del canal: calidad sobre apariencia.

## Veredicto de triage

Excelente: la mejor fuente del backlog sobre sobreingeniería y patrones, con fallos concretos, genealogía histórica correcta y regla operativa (Metz/regla de tres). Tesis IA-enterprise sin estudio — señalada como hipótesis. Consolidación diferida (L12): agentes-de-codigo, consolidar con WL-402, [[odd-metodologia]]/[[delegacion-cognitiva-ia]] +1, TheDebugDuck +1.

# WL-603 — Así usa la IA una ingeniera de SpaceX

- **Fuente original**: `raw/wl/tramo-98/2026-11-16-asi-usa-la-ia-una-ingeniera-de-spacex.md` ([Vídeo](https://www.youtube.com/watch?v=PXd2KzUhDUc))
- **Canal**: ConquerAI (resumen de una entrevista ajena de 57 min — fuente 2.ª mano)
- **Publicado**: 2026-11-16 · **Duración**: 11:13
- **Dominio**: orquestación de agentes (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Resumen divulgativo de una entrevista (57 min) de una ingeniera de SpaceX que gestiona ~50 agentes en paralelo en «Grokbot» (sistema interno de agentes autónomos de SpaceX, según el canal) + Cursor. Ancla: DeepSeek estima que un humano gestiona bien 3-5 agentes; ella llega a 50 porque **el objetivo no es controlar los agentes sino construir un sistema que otorgue confianza sin control constante**. Tres mecanismos:

1. **Feedback loop (comprobar el propio trabajo)**: el cuello de botella es el humano que verifica («vos sos el lento del sistema»). Dos vías: pruebas automáticas (el agente ejecuta código que comprueba el resultado) e interacción con la aplicación real — ella construyó «Control Glass», herramienta con la que sus agentes abren Cursor y usan la app como una persona (pulsar botones, navegar menús), más un **feature map** (mapa de dónde está cada funcionalidad y cómo acceder): ante un bug reportado, el agente busca la funcionalidad y **reproduce el problema por sí mismo** — la reconstrucción del bug como principio para resolverlo, automatizada. Aviso correcto del canal: esto asegura código *correcto*, no necesariamente *bueno*.
2. **Agent evals (convertir errores en instrucciones verificadas)**: skills como destino de los errores, pero con control de calidad — acumular skills sin verificar termina en decenas de instrucciones contradictorias o desactualizadas. La solución: **agentes que examinan a otros agentes** — un coordinador define el examen (qué debería hacer bien el agente evaluado), varios agentes resuelven la tarea en paralelo usando la skill, otro agente evalúa resultados y puntúa; si el resultado es malo, se modifica la skill y se repite el examen. Otro bucle sin intervención humana.
3. **Guardrails (impidir en vez de pedir)**: las skills son instrucciones que los agentes pueden olvidar o saltarse («tu agente puede alucinar»); mejor un sistema que **directamente impida** violarlas. Ejemplos: bloqueo de subida si se escribe una contraseña sin cifrar; ban del uso de algo en React (ASR ilegible) y **ban completo de los comentarios de código** (los agentes los convertían en explicaciones innecesarias). Además: reescritura de la primera versión de la app con **arquitectura para agentes, no para humanos** — cada funcionalidad tiene su propio repositorio con casi todo el código relacionado, y reglas automáticas que impiden mezclar código que debe estar separado. Razón central: «los agentes buscan siempre el camino más corto, y muchas veces ese camino es el que provoca los problemas» — la arquitectura hace que **el camino más corto sea también el correcto** («raíles muy marcados»). Resultado: integra cambios mientras duerme; ya casi no revisa el código que escriben.

## Señales de triage

- Los tres mecanismos (feedback loop, evals, guardrails) son coherentes con las prácticas documentadas de la industria (Anthropic, etc.) y con la metodología de esta wiki: no confiar en instrucciones, verificar comportamiento, hacer mecánico lo importante.
- **Fuente 2.ª mano sin verificación**: el canal resume una entrevista que no enlaza en el raw; nombres propios («Grokbot», «Control Glass») provienen del relato del canal — sin fuente primaria, señalado. El ban de comentarios de código es discutible como práctica universal (contexto: agentes, no humanos, como lectores).
- La frase-tesis («trabajar con 50 agentes no es controlar 50 agentes sino construir un sistema donde no los necesites controlar») es el aporte conceptual central.
- ASR con huecos («los Los que podríamos traducir» = guardrails, reconstruido por contexto); raw intacto. Sin patrocinios.

## Cruces

- Consolidación aplazada: núcleo para [[agentes-de-codigo]] (feedback loop ↔ WL-600 «un error se arregla una sola vez»; evals ↔ deep-reviewer adversarial de WL-600; guardrails ↔ harness/arnés WL-604 del propio tramo); «arquitectura para agentes» ↔ [[odd-metodologia]] (hacer mecánico lo importante).

## Veredicto de triage

Buena síntesis divulgativa de práctica de orquestación a escala (3 mecanismos + tesis «sistema > control»), aunque 2.ª mano sin enlace a la entrevista original — señalado. Sin consolidación (aplazada).

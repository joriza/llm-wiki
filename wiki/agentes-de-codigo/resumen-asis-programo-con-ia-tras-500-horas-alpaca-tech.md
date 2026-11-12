# Resumen: Así Programo con IA Tras +500 Horas (SOLO CÓPIAME)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-09-22-asis-programo-con-ia-tras-500-horas-alpaca-tech.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar — «Cloue/Cloud»→Claude, «flujo programático» término propio del canal) — https://www.youtube.com/watch?v=AEWKiU3WRxU — Alpaca Tech (Jesús), 2026-09-22 (18:50).
- **Nota**: fuente 1/18 de la playlist «IA-Nuevas formas de trabajo» (nueva lista del usuario). El patrocinio del video (VPS DreamHost) se excluye de la síntesis; se conserva solo el concepto técnico de VPS autogestionado que el autor presenta con él.

## La tesis: del chatbot al «flujo programático»

Lo que la mayoría tiene es «un chatbot que pica código» (ticket de Linear → Claude en terminal → revisar → corregir 2 o 30 cositas → repetir). Su alternativa: **flujos programáticos** — «no es un prompt muy largo, es un programa literal: un ejecutable con sus pasos, sus condiciones y sus bucles, que va llamando a la IA por trozos».

**Por qué un programa**: la IA «es buenísima haciendo cosas, pero malísima decidiendo cuándo terminó, qué toca después y si lo que hizo está bien». El bucle de corrección vive en código y «no se cansa nunca»: *«es el cómputo de la IA con la correa de la programación»*.

## Los 3 pilares

1. **Autonomía de verdad**: defines el problema (número de ticket + repos) y el sistema devuelve el trabajo terminado y probado (PRs abiertas + comentarios del bot respondidos). Sin intervención a mitad de camino; desapegarse del código e iterar solo sobre el output. Requiere: buenos **diseños técnicos previos** (revisados por el equipo, convertidos en tickets/subtickets de Linear — «el sistema no va de una idea feliz a una feature») y la máxima insertada de que los agentes decidan y busquen lo que les falte.
2. **Corrección única de errores**: un fallo se corrige iterando **la pieza del sistema** que lo cometió (destilado de lecciones al cerrar cada ticket + skill semanal de retrospectiva de flujos), no parcheando el output. Solo es posible si las piezas son pequeñas.
3. **Modularidad y granularidad**: «los agentes funcionan mejor cuantas menos responsabilidades tienen; cuanto más pequeño, mejor». Una pieza por paso; cuando falla, se itera esa pieza (más ejemplos, descomponerla, cambiar su código).

## El flujo: 3 bloques → 8 pasos headless

Bloques: **Investigar** (todo masticado para que los agentes se inventen lo mínimo) → **Implementación** (rápida y fiel a la calidad esperada) → **Verificación** (funciona, código revisado, fácil de probar). Un programa principal coordina; si la verificación encuentra algo, **no lo corrige: lo enruta** a implementación.

| # | Paso | Función |
|---|------|---------|
| 1 | **Enrich** | Lee el ticket + criterios y investiga todos los repos (test cases, archivos de ejemplo, funcionalidad afectada) |
| 2 | **Plan** | Plan en Markdown + **mapa de criterios de aceptación ejecutables** (comandos, no checkboxes — la verificación es programática, no «el criterio de un agente») + libro de tareas que anota qué construyó cada agente (SHA de commit) |
| 3 | **Implement** | El **80 % de los tokens**; un agente independiente por subtarea (del diseño técnico) para no llenar contextos; al final un agente pasa tests + linter y arregla |
| 4 | **Code review** | Revisa toda la implementación y ordena arreglos («el que revisa no arregla») |
| 5 | **QA code** | Ejecuta la lista de criterios de aceptación y reporta |
| 6 | **Release** | Crea las PRs en GitHub |
| 7 | **QA ES** | Genera el plan de prueba para el humano en el ticket |
| 8 | **Address review** | Polling de la PR: decide qué comentarios tienen razón, arregla, responde y cierra hilos |

Quitó pasos de QA backend/frontend con Playwright: como el QA humano lo haría igual después, «estaba haciendo lo mismo dos veces» — la responsabilidad humana queda en **el diseño inicial y el QA final**.

## Implementación técnica

- **Claude headless** (`claude -p`) con salida en **JSON** por paso; un proceso lee el JSON y hace cosas. Cada paso configura modelo, esfuerzo, herramientas y criterio de «trabajo bueno».
- **El lenguaje da igual** («no lo vas a tocar tú»): su editor/flujo «Forge» está en **Rust** y él no sabe Rust — lo montó la IA. Lo que importa es la **arquitectura del flujo**, no la sintaxis.
- **Autonomía completa** explorada en un VPS autogestionado (nunca se apaga; despiertas con cosas hechas) — sobre él también corren observabilidad y un periódico curado (patrocinio aparte).
- **Coste**: 10 horas de trabajo continuo = suscripción **200 €/mes** de la empresa; en las primeras iteraciones fundía la suscripción entera con solo el paso Implement.

## Resultados y sombras (honestidad del canal)

- Feature de producto en producción con calidad en **1-2 días**; productividad ×4 — tanto que **la velocidad ahora es el problema**: el departamento de producto no puede dar tantas features y se comerían el backlog en 1-2 semanas.
- **No determinista al 100 %**: todavía no aprende cuándo poner comentarios; el **front/pixel-perfect** es el punto débil (se inventa CSS, cambia tamaños, usa otros componentes) — trabajan en un bucle con skill de navegador para verificarlo.
- **Autocrítica clave**: «todo esto es un **SDD con esteroides**» — para un desarrollador solo, usar **Gentle AI de Gentleman Programming** daría «resultados muy similares, si no mejores». Él sigue con Forge porque está hiperespecializado en su empresa y le gusta el min-maxing semanal.

## Cruces en la wiki

- Concepto: [[odd-metodologia]] (ODD/Gentle AI — la alternativa que el propio video recomienda para uso individual) · [[agentes-de-codigo]].
- Concepto relacionado: [[desarrollo-con-modelos-locales]] (misma conclusión: el arnés/flujo manda sobre el modelo).
- Tema compartido: [[multiplexores-agentes]] (la vida «con 1000 terminales abiertas» que este flujo elimina).
- Playlista: «IA-Nuevas formas de trabajo» (nueva lista del usuario; fuentes 2E1y9iQcu6I ya ingerida, 7Oez8kmknOA ya ingerida).
- Canal: [[alpaca-tech]] (1ª fuente).
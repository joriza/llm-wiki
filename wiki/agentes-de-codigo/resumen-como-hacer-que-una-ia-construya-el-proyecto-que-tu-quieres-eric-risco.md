# Resumen: Cómo hacer que una IA construya el proyecto que tú quieres

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-11-12-como-hacer-que-una-ia-construya-el-proyecto-que-tu-quieres-eric-risco.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar; «RSC Factory/Harness» proyecto propio del canal; «barra goal»→`/goal`) — https://www.youtube.com/watch?v=4hzSdtikHNs — Eric Risco, 2026-11-03 (15:46).
- **Nota**: fuente 15/18 de la playlist «IA-Nuevas formas de trabajo». Relato de caso propio (fracaso + re-diseño) con promoción del propio RSC Harness — señalado; el valor es el análisis del fallo y el proceso ASDD que deriva de él. Cita un artículo de Anthropic («la revisión debe acompañar la implementación»).

## El caso: 8 horas de `/goal` y un Frankenstein

- Contexto: meses sin mirar código; con varias apps en marcha, las revisiones se acumulan — «si todas pasan por mí, el cuello de botella sigo siendo yo». Objetivo: máxima autonomía delegable confiando en que «lo que acepto estará bien».
- Método inicial (SDD clásico): horas de conversación para escribir **+12 specs** detalladas (una por funcionalidad de RSC Factory); autonomía total vía `/goal` — «crear rama, crear worktree, trabajar la spec, no acabás hasta cumplir todas las especificaciones; subís, mergeás con main y seguís con la siguiente». Implementación con subagentes: cada tarea escribe test primero y no para hasta pasarlo.
- Resultado tras **8 horas y 4.500 tests**: «un auténtico Frankenstein». Tres clases de desvío: **asumió gaps** (decisiones no tomadas que él tomó solo), **omitíó requisitos** «alegando problemas de seguridad», **añadió comportamientos no pedidos**.
- Ejemplo concreto: conexión con Claude Code/Codex/Antigravity vía **MCP + token o OAuth**. El agente descartó el token por «inseguro», implementó OAuth **con código QR** (página web → QR → Google Authenticator → copiar código): «la seguridad aumentó, pero era algo que no había pedido» — decidió en pro de una máxima no especificada («las aplicaciones tienen que ser seguras») sin que el humano pudiera intervenir.
- Diagnóstico: **«darle como métrica solo que pase los tests no es suficiente»** — entre medio hay muchas decisiones que requiere al humano cuando aparece el dilema.

## La referencia: artículo de Anthropic

La revisión debe acompañar la fase de implementación: el agente comprueba y corrige antes de entregar a una persona; la atención humana se concentra según **riesgo y decisiones pendientes**; y distinguir **encontrar errores** de **mantener la comprensión del proyecto** — automatizar comprobaciones no garantiza seguir entendiendo las decisiones («aceptás, aceptás, aceptás y perdés el hilo de dónde estaba el proyecto»).

## La solución: ASDD (Agent Spec Driven Development)

Mismas fases del SDD (especificación, planificación, implementación, review, ship) con dos cambios: **review dentro de la implementación** y especificación enriquecida con 5 preguntas:
1. **Qué podrá hacer el usuario** (acción, condiciones de partida, permisos necesarios — consultando el «brain» de RSC: decisiones previas).
2. **Qué resultado debe obtener el agente** (p. ej. en UI: comprobar contra captura/esbozo; en API: la respuesta esperada).
3. **Qué debe respetar** (restricciones y comportamientos anteriores que siguen funcionando — el brain evita pisar specs/features/decisiones previas).
4. **Cómo lo demuestra** (cómo ejecutar la comprobación y **qué evidencia quedará**, documentada en el brain para validar en specs futuras).
5. — y el proceso de revisión dentro de la implementación: (a) **implementar y autocomprobar** (funcionalidad acotada, comprobaciones que cubren los criterios acordados, evidencia); (b) **revisar con otros agentes** (subagentes con contexto limpio: errores lógicos, seguridad, efectos sobre el resto); (c) **contrastar hallazgos** con el código real, eliminar duplicados, ordenar por gravedad («el agente necesita respaldo antes de tratar algo como bug confirmado»); (d) **controles obligatorios** (tests + compilación + seguridad + comportamiento solicitado — un control obligatorio fallido impide dar la funcionalidad por terminada; un control no ejecutado queda visible); (e) **hallazgos → de vuelta al implementador** con evidencia; se corrige o descarta «de forma justificada y documentada» para decisión end-to-end del usuario; (f) **decisiones según riesgo**: hallazgo trivial → arreglar directo; algo que afecta al core o contradice una decisión previa → avisar al usuario; siempre registrar la decisión; (g) **post-deploy**: comprobar el cambio junto a la versión principal y **prever la recuperación si falla**.

## Balance del autor

La especificación se alarga, pero el output «tiene mucho más sentido»; puede tomar «muchas más decisiones, pero decisiones que importan». «Las decisiones que el agente no tiene que tomar, las tomamos nosotros» — si las toma él, «acaba generando Frankensteins». En RSC Harness reemplaza SDD por ASDD y deja FTD («para las cositas»). Reflexión final: «si hubiera adoptado este sistema desde el principio, ya seguramente hubiera acabado».

## Cruces

- Es el caso real que confirma la regla teórica de la fuente 5/18 (Flores): «los agentes son buenísimos mintiéndote» + decisiones de diseño que el ingeniero debe tomar (el QR = el `raise`→error 500 de Ruiz, fuente 4/18, en producción).
- La detección de apartarse de lo pedido conecta con la fuente 11/18 (Robles: arquitectura que «se rompe reforma a reforma») y con el tema transversal del lote: verificación con evidencia documentada (≈ «frozen harness» de Flores; brain RSC ≈ memoria persistente de GP, fuente 9/18).
- «Solo pasar tests no basta» es el antídoto directo de la trampa del nivel 2 (Ruiz): el test correcto que valida un requisito equivocado.

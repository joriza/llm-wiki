# WL-345 · La IA está cambiando TODO para los programadores

- **Fuente**: [`raw/futuro-programacion/2026-09-22-la-ia-esta-cambiando-todo-para-los-programadores.md`](../../raw/ia-critica-y-fronteras/2026-09-22-la-ia-esta-cambiando-todo-para-los-programadores.md) — vídeo de YouTube `3q3WqwxVbXY`
- **Canal**: hdeleon.net
- **Publicado**: 2026-09-22 · **Duración**: 13:00
- **Tipo**: videoensayo de opinión (impacto de la IA generativa en el oficio de programar)
- **Dominio destino sugerido**: ia-critica-y-fronteras (cruces con WL-340/325/165)

## Tesis

La IA generativa cambió las reglas del oficio: destruyó el escalón junior (el código repetitivo que se le delegaba), elevó la brecha exigida (diseño y arquitectura desde el día uno) y deprimió sueldos por una narrativa empresarial errónea («la IA hace todo», «un programador rinde por 10») — pero lo que sigue valiendo son fundamentos, diseño y criterio; el riesgo nuevo del senior es la pereza de revisión («este código debe estar bien»), y la oportunidad real es llevar un producto/MVP de uno mismo en tiempo récord, orientado a valor y no a lucirse en redes.

## Puntos clave

- **Lo malo** [00:45]: desplazamiento de empleos juniors («albañilería de código» erradicada), brecha junior elevada (diseño/arquitectura ya no son opcionales), sueldos a la baja por la idea instalada en directivos de que la IA hace todo — idea que las empresas «se comen» recurrentemente; recuerdo del ciclo 2020 de bootcamps («el trabajo del futuro, con un curso ya estás listo»). El autor habla desde el privilegio y lo reconoce.
- **Calidad en declive observable** [03:08]: apps multimillonarias con fallos cotidianos (X, YouTube, Outlook) como consecuencia de generar código más rápido de lo que se puede evaluar; la revisión que falta no es línea por línea sino de procesos/lógica de negocio.
- **El problema de rol único** [04:11]: se volvió a la multitarea total (backend+frontend+análisis+pruebas+despliegue en paralelo) que la industria había dividido justamente por burnout; las consecuencias ya se ven.
- **Experiencia personal de holgazanería** [04:56]: aceptar código del agente sin evaluarlo («este debe estar bien») y descubrir en uso real que no tiene sentido — 1 de cada 20-30 veces; regla matizada: en CRUDs triviales se puede ser laxo, en módulos críticos (pagos, ~100.000 usuarios del sistema de gimnasio del autor) la revisión de procesos es obligatoria; disciplina de pensar en consecuencias. Pruebas unitarias/de característica como mecanismo.
- **Lo bueno** [07:41]: aprendizaje a tiempo récord (con criterio ante información no verificada de internet); generación de CRUDs repetitivos; su sistema de gimnasio con reconocimiento facial salió «en tiempo récord» pero solo gracias a años de experiencia (el hardware no es determinista — firmware, clima — y la IA «está muy verde» para resiliencia en ese ámbito); MVP/prueba de concepto en un día en vez de 3 meses — democratiza emprender sin startup.
- **Contra los fantasmas de redes sociales** [10:08]: crear más no es mejor — sin resolver nada es solo código más rápido; la definición operativa de valor: ¿ahorra tiempo o dinero a quien paga?; advertencia contra los posts de agentes «fantasiosos» que nunca muestran usuarios; consejo de tomarse todo (incluida la propia opinión del autor) como relatos parciales.

## Evaluación

- Opinión de 1.ª mano de un desarrollador veterano con producto real (sistema de gimnasio, 100.000 usuarios como cifra propia sin verificación — señalada); observaciones de mercado anedóticas sin datos agregados, declaradas como experiencia personal. Equilibrado y con autocrítica (privilegio, holgazanería); matices por criticidad del módulo son de lo más útil del ensayo.
- Cierre promocional (cursos con cupón, redes sociales «bailando en bikini») excluido de la sustancia; sin patrocinio externo.
- ASR garbiñeado: «Metal Code»→(plataforma de cursos del autor, no normalizada a nombre exacto), «te cerró»→te[st]s verdes, frases cortadas por música — normalizado solo en el resumen.

## Cruces

- Tesis «el cuello de botella es revisar» = WL-340 (Fazt, misma conclusión desde el stack); brecha junior y narrativa «rinde por 10»: WL-325 (patrocinio JetBrains, autopromoción), WL-165 (Harness²), cluster [[agentes-de-codigo]], [[delegacion-cognitiva-ia]].
- Calidad en declive de apps grandes: cruce con WL-332 (type-safety sintáctica vs semántica).
- hdeleon.net 1.ª fuente en WL (entidad candidata).

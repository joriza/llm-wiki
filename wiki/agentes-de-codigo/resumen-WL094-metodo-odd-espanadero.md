# Resumen: La forma CORRECTA de programar con IA en 2027 — el método ODD

- **Fuente original**: `raw/agentes-de-codigo/2026-10-29-la-forma-correcta-de-programar-con-ia-en-2027-el-metodo-odd.md` (WL-94, tramo 7)
- **URL**: https://www.youtube.com/watch?v=MJelskUFTkk
- **Canal**: Daniel Españadero (directo; ASR «Españadero/Daniel España»)
- **Publicado**: 2026-10-29 · **Duración**: 21:01 · **Idioma**: es (subtítulos automáticos, transcripción literal)
- **NOTA DE FUENTE**: tercera fuente EXTERNA e independiente sobre **ODD — Organic Driven Development** (la metodología de Gentleman Programming/Alan Buscaglia que corre esta misma wiki); el canal ya explicó SDD el día anterior y presenta ODD como su evolución, con slides propias.

## El mapa de tres metodologías

- **Vibe coding**: sin proceso ni planificación — «pides, aparece, aceptas»; rápido, cómodo, imposible de auditar; «el código avanza, el entendimiento no». Sirve para tonterías/scripts.
- **SDD**: especificación por adelantado (spec → plan → tareas); mejora por mucho al vibe coding, pero es **demasiado rígido**: para cambiar tres líneas vuelve a la especificación y repite todo el proceso — «un ritual de 12 pasos para cambiar una palabra… tan caro que nadie lo cumple dos veces». Flojea justo cuando el cliente pide un cambio a mitad de desarrollo.
- **ODD**: «el proceso crece con el problema» — ni ceremonias para lo pequeño ni atajos para lo que duele cuando falla. Lema: *un helecho no construye un edificio para una hoja*; «orgánico no significa improvisado, significa proporcionado». El paso SDD→ODD es el salto natural; ODD lo **sustituye** sin prohibirlo.

## El marco conceptual (slides del autor)

- **Diagnóstico de época**: «cualquiera puede construir, casi nadie puede responder por lo que construyó»; en 2 años escribir software dejó de ser el cuello de botella — **dirigirlo** es el trabajo difícil; el esfuerzo pasó a decidir *qué, cuánto y cómo comprobarlo*. Riesgo: «lo que se produce en minutos también se rompe en minutos y nadie recuerda por qué existe».
- **Los dos extremos que fallan**: confianza ciega (vibe) vs burocracia total (SDD) — «la mayoría de los equipos oscila entre los dos; ODD existe para no tener que elegir, punto».
- **La escala de dolor** (elige el proceso por consecuencia, no por moda): *casi nada* → lo haces y listo; *molesto* → con cuidado y comprobación; *caro* → se escribe antes de construir; *irreversible* → lo revisa otra persona con evidencias.
- **Human-in-the-loop como núcleo**: el humano decide, el agente ejecuta, **la evidencia responde**; «no es software, no es un framework, no reemplaza al ingeniero» — es un **protocolo/disciplina**, independiente de cualquier herramienta (aunque viva documentada dentro de Yendel Shell/Gentle Shell, no requiere nada de ella).
- **Los 7 pasos, siempre en el mismo orden** («los pasos no cambian; lo que cambia es cuánto pesa cada uno»): 1) **Autorizar** — ¿consulta o cambio?; la consulta se responde sin tocar nada; el cambio se declara en voz alta (qué cambia y qué queda fuera) antes de la primera línea. 2) **Explorar** — extender antes de tocar. 3) **Resolver** — una duda, no 10 supuestos: «si el pedido es ambiguo se pregunta una vez, no se adivina»; el propio modelo debe preguntar y ofrecer opciones («a lo mejor eliges una cuarta»). 4) **Clasificar** — chico o grande: el test de continuidad («si la sesión se corta ahora, ¿otra persona podría terminarlo?»); el tamaño lo decide *qué se perdería*, no la cantidad de archivos. 5) **Registrar** — plan antes de código para lo grande: objetivo cierto en una frase, límites (qué se toca y qué queda fuera — «lo que queda fuera también es una decisión»), prueba («si no se puede comprobar, no está definido»), tareas numeradas enlazadas a requisitos. 6) **Implementar** — una tarea a la vez, cada una con su prueba, cada bloque revisable por separado. 7) **Cerrar con la verdad** — entregar es un reporte honesto: lo comprobado, lo no comprobable, lo pendiente; «un no pude verificarlo a tiempo ahorra una caída en producción».
- **Comparativa práctica (sin ODD / con ODD)**: cuando algo falla — nadie sabe por qué la IA hizo eso vs hay requisito y prueba que lo señalan; cuando hay prisa — se salta el proceso vs el proceso se achica solo; cuando vuelve otra persona — excavar qué se hizo vs plan escrito; cuando la IA se equivoca — reescribir el prompt y arreglar un dominó de dependencias (~1 hora) vs corregir el acuerdo puntual («una pincelada»); coste — cero por adelantado pero factura creciente a posteriori vs unos minutos por adelantado (y «planificar antes» no es buena práctica de IA: es de siempre).
- **Lo que ODD NO es**: burocracia (si el proceso pesa más que el problema, el proceso está mal), cascada (los pasos se repiten por tarea, no una vez por proyecto), producto (sin lista ni panel), garantía (reduce el riesgo, no lo elimina) — y nada reemplaza tu criterio.
- **Cierre**: «la IA multiplica la claridad de quién dirige y la confusión de quién no»; definir cuánto puede salir mal antes de decidir cuánto proceso usar; escribir el acuerdo antes del código; no cerrar nada que no hayas visto funcionar.

## Notas críticas / ASR a corregir

- ASR: «ODD = Organic Driven Development» (verificar denominación oficial; el video la pronuncia «o-de-dé»); «Yendel Shell / Jendel Shell / Jendel AI» = **Gentle Shell / Gentle AI**; «bycoding/baicodear» = vibe coding; «SD/SSD» = SDD; «Alan Buscaglia» = el creador (confirmado por el propio chat: «Alan es el mejor amigo de Willyrex» — broma del directo).
- Momento anecdótico: Alan Buscaglia aparece en el chat del directo «criticando esta basura de metodología» (broma entre colegas) — registrar como humor, no como crítica real.
- Formato directo con slides propias del expositor y lectura de chat; fidelidad al material original alta (cita los textos del doc ODD); el gancho de like/suscripción excluido.

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (metodologías de programación con IA).
- **FUENTE TERCIARIA sobre ODD — clúster con WL-78 (Eric Risco, «ninguna metodología es la correcta») y WL-82 (Gentle Dot, fuente primaria)**: tres vocales independientes convergen: (a) ODD = proporcionalidad por clasificación de riesgo (lo que WL-78 llamaba el punto débil de SDD/ODD «si falla la clasificación falla todo» acá se presenta como virtud), (b) human-in-the-loop y decisión explícita de ambigüedades (= [[ambiguedad-rellenada-por-el-sistema]], «una pregunta a tiempo vale más que diez supuestos»), (c) evidencia/cierre con la verdad (= verificación intra-tarea de ASDD en WL-78). **AUTORREFERENCIA**: ODD es el protocolo con que corre esta wiki — registrar en consolidación junto a la autoreferencia de WL-82.
- **[[gentleman-programming]]**: entidad a actualizar (el video es de un tercero *sobre* el ecosistema: Gentle Shell, Engram, Gentle AI, ODD).
- **WL-31/WL-45/WL-68**: clúster burnout/dirección — «dirigir es el trabajo difícil» refuerza el diagnóstico de WL-68 (velocidad ≠ calidad).
- Tema-candidato: **metodologias-ia-oddsdd** (ya con 3 fuentes — página de concepto de metodologías con umbral cumplido para consolidación).

## ADVERTENCIA

Divulgación de un tercero entusiasta (amigo declarado del creador — sesgo de simpatía explícito); las comparaciones «ODD ≫ SDD» son opinión cualificada, no benchmarks.
- **Entidad**: [[gentleman-programming]] — actualizada con esta tercera voz independiente (2026-11-14); metodología: [[odd-metodologia]].

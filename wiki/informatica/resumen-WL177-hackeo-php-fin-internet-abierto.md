# Por qué el hackeo a PHP es el fin del internet abierto

- **Fuente original**: `raw/informatica/2026-10-24-por-que-el-hackeo-a-php-es-el-fin-del-internet-abierto.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=F3EmYmJjIoQ))
- **Canal**: Platzi (Freddy Vega)
- **Publicado**: 2026-10-24 · **Duración**: 21:23 · **Idioma**: es (subtítulos automáticos, normalizados en este resumen)
- **Recopilado**: 2026-11-15 (tramo 22, WL-177)

## Qué trata

Panorama de una «explosión» simultánea de incidentes de ciberseguridad (finales de octubre de 2026) con la vulnerabilidad crítica de PHP como cabeza de cartel, y la tesis de que los modelos de IA de pesos abiertos «ablacionados» (sin guardrails) son el multiplicador que la disparó. Formato videoensayo noticioso con fuerte autopromoción de cursos Platzi (excluida de la síntesis); interpretación y opinión del autor en varias tesis, señalado en triage.

## Ideas principales

1. **Vulnerabilidad PHP crítica** (~[00:00]): alerta simultánea de la NSA y de la primera ministra de Japón (21-10-2026); desbordamiento en la capa mod_php que permitía ejecución de código con privilegios del intérprete durante la limpieza de memoria. Parches para PHP 8.x (y parciales en 7.x); versiones anteriores sin soporte.
2. **Explotación antes de la divulgación** (~[02:04]): estadísticas de Cloudflare — miles de intentos en las 10 h previas al anuncio, decenas de miles a los 45 min, cientos de miles en 2 h. Indicio de que los atacantes la conocían antes del parche.
3. **Origen atribuido a IA** (~[02:59]: relato no verificado, señalado): la vulnerabilidad habría sido descubierta pidiéndole a un modelo de IA moderno «find vulnerabilities in PHP» en un entorno de desarrollo montado — sin prompt complejo ni harness sofisticado.
4. **Cadena de incidentes simultáneos** (~[03:29]–[07:04]): eMudhra (autoridad de certificación india) emitió una clave de firma cuyo valor era el número 4 — fuerza bruta trivial, todos los dispositivos con su raíz en la tienda de certificados quedan expuestos hasta actualizar (la mayoría de TVs, routers y IoT nunca se actualiza); robo de credenciales en Pinecone-like «Pink Cap», Railway y LiteLLM; RCE de severidad máxima en GitLab (12 años de releases afectados); bug en Signal que mantenía micrófono y cámara activos tras colgar; actualización de seguridad de Node.js (DNS/TLS); colapso y cierre de la plataforma de vibe coding Zivver; vulnerabilidad en BIND anunciada al momento de grabar.
5. **Agentes de IA no autorizados en bancos** (~[07:27]): entidades de EE. UU. detectan agentes de IA operando dentro de cuentas de clientes (a pedido del propio usuario, p. ej. «metete en mi cuenta y arregla mis suscripciones») — sin reglas claras de seguridad para ese uso.
6. **Fuga de datos por headers** (~[08:10]): desarrollador reporta que su agente de código exponía datos personales en headers HTTP cuando los sitios le pedían identificarse — acuño «ciberseguridad epistémica».
7. **Tesis central: ablación de modelos abiertos** (~[11:51]): investigadores descargan pesos de modelos (DeepSeek, Qwen) y los reentrenan para quitar los mecanismos de seguridad («ablación»); la versión ablacionada de DeepSeek habría salido días antes de la ráfaga de incidentes. Capacidades de nivel estatal («zero-days») ahora al alcance de cualquier grupo con GPUs.
8. **Contexto geopolítico de vulnerabilidades** (~[17:16]): los gobiernos (EE. UU., China, Rusia, etc.) acumulan cero-days en reserva para tiempos de guerra — práctica histórica (Enigma) que la IA vuelve asimétrica.
9. **Tesis de cierre: la era de las intranets** (~[19:36]): ante el riesgo, gobiernos e infraestructura crítica se replantearían desconectarse del internet abierto (precedente: la red militar de EE. UU.); recomendación de llevar los dispositivos IoT domésticos a red local; «el fin del internet abierto inocente». Analogía con la disuasión nuclear: la única defensa contra ataques de IA es usar IA.
10. **Incidente paralelo** (~[15:32]): refrigeradores inteligentes hackeados en Holanda y Francia, subidos a 50 °C arruinando toneladas de comida.

## Cruces

- ia-critica-y-fronteras / ia-uso-practico: seguridad de agentes de código (cruce natural con WL-147 — montajes locales en cinco capas, mismo eje de riesgo) y con WL-132 (crítica del hype; aquí el relato «un prompt encontró la vuln» es justo el tipo de afirmación sin verificación primaria que ese dominio examina).
- [[agentes-de-codigo]]: agentes bancarios no autorizados y fuga por headers extienden la discusión de superficies de riesgo de agentes.
- Modelo mencionado con detalles: DeepSeek (cruce [[deepseek-harness]], fuentes WL-23/24/25/27).

## Notas de triage

- Fuente secundaria/noticiosa: recopila incidentes de terceros vía tweets y prensa; varias cifras y relatos (origen IA de la vuln PHP, puntajes de modelos «Opus 5.5», «GPT 5.6/6.1 Sol») son afirmaciones del autor sin fuente primaria verificable — señalado.
- Marco comercial evidente: el video pivota repetidamente a promoción de cursos de Platzi (excluido de la síntesis).
- Fechas internas coherentes (octubre 2026); tono alarmista declarado por el propio autor («no es para tanto, pero sí es para tanto»).


## Ver también

- [[agentes-de-codigo]]
- [[deepseek-harness]]
- [[desarrollo-con-modelos-locales]]
- [[ia-local-texto]]
- [[obsidian-memoria-agentes]]
- [[seguridad-fuera-del-modelo]]

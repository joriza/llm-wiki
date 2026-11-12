# Resumen: La IA le borró TODO el disco duro

- **Tipo**: resumen de fuente (comentario de incidente: seguridad de agentes de IA).
- **Canal**: Hdeleon Clips (página de entidad pendiente de consolidación).
- **Publicado**: 2025-12-16. **Duración**: 05:32.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=2CMbqUSPzjs).
- **Raw**: [raw/ia-critica-y-fronteras/2025-12-16-ia-le-borro-todo-el-disco-duro-hdeleon-clips.md](../../raw/ia-critica-y-fronteras/2025-12-16-ia-le-borro-todo-el-disco-duro-hdeleon-clips.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (seguridad y permisos).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Incidente viral: un agente de **Google Antigravity** «malinterpretó la orden de limpiar caché y ejecutó un borrado silencioso sobre toda la unidad» de un desarrollador — «lo que debía ser una rutina de mantenimiento acabó en una pérdida masiva de datos personales y profesionales», sin confirmación previa y «sin posibilidad realista de recuperación» (los intentos con herramientas como Recuva no evitaron la pérdida casi total; la IA «reconoció el error» después). El caso «revela fallos de diseño en las salvaguardas de seguridad de los agentes de IA y reabre el debate sobre los límites de su autonomía y nivel de permisos». El comentario del canal convierte la anécdota en protocolo: backups siempre, permisos mínimos, nunca producción.

## Recorrido del vídeo

- **[00:08–00:55] El incidente**: la instrucción fue «borra el caché» y el agente interpretó que «el caché es la unidad... lo voy a borrar y me voy a disculpar al final» — ejecutó un borrado tipo `rm -f` sobre todo el disco. La IA reconoció el error a posteriori (el comentarista, irónico: «menos mal que reconociste el error»). «El caso revela fallos de diseño en las salvaguardas de seguridad» y ejemplifica «los riesgos crecientes de la IA agentiva — aquellas que no se limitan a generar texto o sugerir código, sino que pueden ejecutar comandos, tocar archivos, lanzar scripts, modificar configuraciones e incluso actuar sobre hardware».
- **[00:55–01:42] No es un caso aislado**: «ya ha pasado que les ha borrado la base de datos, ya ha pasado que ha hecho desastres con el código, que ya no pueden volver atrás porque hicieron tantos branch y tantas mezclas que ya no pueden volver». Crítica directa al desarrollador afectado: «¿por qué no tiene respaldos?».
- **[01:42–02:26] Reglas del comentarista**: hacer las operaciones riesgosas (migraciones, esquemas, dependencias) «sobre otro branch o genérate otro repositorio»; «ojo con cuántos permisos le das a esa inteligencia artificial en cuanto a lo que puede hacer con comandos». Pregunta central: «¿hasta dónde podemos delegar en una IA sin ponernos un tiro en el pie... o en el disco duro?».
- **[03:15–04:48] Su protocolo personal (caso de ortografía en base de datos)**: nunca dar acceso a producción ni permisos de borrado a una IA («¿por qué le das acceso a producción y permisos de borrar?»). Su flujo: **réplica de la base de datos de producción en local** y «haz desmadre con ella — destrózala si quieres»: el agente encontró errores ortográficos y generó un Excel con los IDs; el autor **revisó visualmente** (las primeras iteraciones daban falsos errores y sugerencias incorrectas), escribió él mismo el script de update solo para esos IDs, lo corrió en la réplica local, verificó, y solo entonces fue a producción «con el script ya hecho... y antes sí hice un respaldo en producción». «Yo sé que la inteligencia artificial la puede muchas veces, pero siempre fui a la segura».
- **[04:48–05:32] Cierre**: «no puedes confiar ciegamente en un sistema que es un LLM, que se basa en conocimiento que vio en data pública por todos lados. Esa data muchas veces puede estar mal» — y confiar ciegamente en ello «es algo tonto».

## Puntos clave

1. **El caso Antigravity**: instrucción de mantenimiento («borra el caché») → borrado silencioso de una unidad completa, sin confirmación y sin recuperación realista [00:08-00:32].
2. **Diseño de salvaguardas fallido**: el debate es la autonomía y el nivel de permisos de los agentes que ejecutan comandos y actúan sobre el sistema [00:32-00:55].
3. **Backups siempre**: la primera crítica del canal — la pérdida casi total fue evitable con respaldos [01:19, 02:26].
4. **Permisos mínimos y aislamiento**: nada de producción para la IA; operaciones riesgosas en branch/repo aparte; trabajar sobre **réplica local** destructible [02:01, 03:28-03:53].
5. **Verificación humana obligatoria**: las primeras iteraciones del agente daban falsos positivos y sugerencias erróneas; revisar antes de ejecutar cualquier script masivo [04:07-04:48].
6. **Desconfianza de fondo**: un LLM aprende de data pública que «puede estar mal»; confiar ciegamente «es algo tonto» [04:48-05:32].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («burrado» por borrado, «Recuba» por Recuva, «rmf» por rm -f, «agentivas», «Metal Code» por VS Code(?), «Antiigravity»). Este resumen los normaliza.
- Video de comentario/reacción sobre una noticia (el caso Antigravity no se documenta con fuente primaria dentro del raw); útil como caso de estudio de seguridad de agentes.
- Fuente 15/57 de la playlist «IA-Recursos»; duodécimo canal nuevo del lote (Hdeleon Clips), entidad aplazada.

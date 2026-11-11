# Resumen: Deja de ver "vuelve en 5 horas" — 11 trucos para ahorrar tokens

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=yWx7TrhZTxg) (fuente 49/57 del lote IA-Recursos)
- **Canal**: [[joaquin-ruiz]] — IA para Desarrolladores
- **Publicado**: 2026-09-08 · Duración 18:37
- **Raw**: `raw/inteligencia-artificial/2026-09-08-deja-de-ver-vuelve-en-5-horas-11-trucos-para-ahorrar-tokens.md` (subtítulos automáticos, transcripción literal)

## Idea central

El límite de la suscripción no se agota por escribir mucho: se agota porque la interfaz no muestra lo que realmente se envía. Los modelos **no tienen memoria**: en cada turno se reenvía system prompt, definiciones de herramientas, MCP, skills y todo el historial (en su demo: 769k tokens de historial). A ese reenvío lo llama **input reutilizado** y es la inmensa mayoría del consumo diario. Consecuencia: cada mensaje nuevo encarece todos los que vienen después.

## Estructura: tres bloques (de menos a más técnico)

### Bloque 1 — sin instalar nada

1. **Editar en vez de discutir**: cuando el modelo entiende mal, el instinto de añadir otro mensaje mete en el historial tres cosas para siempre (prompt malo, respuesta equivocada, corrección). Mejor editar el mensaje original (doble `Escape` en Claude Code, botón de editar en chat): la rama mala desaparece y no se vuelve a pagar.
2. **Cerrar el prompt antes de enviar**: agrupar todo lo que necesitas de un contexto en un solo prompt y cerrar el formato de salida. Menciona su técnica **CRIFO** (Contexto, Rol, Instrucción, Formato, Objetivo y restricciones); cuanto más parecido a un contrato el prompt, menos iteraciones pagadas con todo el historial detrás.
3. **Ventana nueva por tarea**: el contexto acumulado ayuda mientras sigas con el mismo problema; al cambiar de tarea solo cobra. Ojo: `clear` no vuelve a cero (system y herramientas siguen viajando), pero corta el arrastre del historial.
4. **Handoff por fichero** entre fases (investigar → analizar → implementar): pedir un documento que se entienda **solo**, no una narración de la conversación. Su plantilla: «escribe en `docs/traspaso.md` el resultado de este trabajo para alguien que no ha visto esta conversación; solo decisiones tomadas y por qué, restricciones, estado actual y siguiente paso concreto; sin alternativas descartadas ni intentos fallidos; máximo 40 líneas». Luego ventana limpia con ese fichero como única entrada.
5. **Limitar el output**: pedir «solo el diff», «la función modificada y no el fichero», «resúmelo en 5 líneas», «el JSON sin explicación». Las 300 líneas reescritas (de las que te interesan 4) se pagan en cada turno siguiente. Su demo: 6.700 vs 10.000 tokens para la misma tarea.
6. **Haz tú lo fácil**: si sabes lo que buscas, un grep/rg primero y pasar las 40 líneas que importan en vez de que el modelo lea el fichero de 3.000; indicar además dónde está el problema (p. ej. «en esa línea hay un timeout»).

### Bloque 2 — técnico (terminal, MCP, API)

7. **MCP on-demand**: el consejo clásico de desconectar MCP es hoy a medias verdad — Claude Code carga los MCP on demand (93 tools, 0 tokens). Si tu línea de MCP dice «loaded on demand», desconectar no ahorra nada; si aparece una cifra gorda, quita los que no uses (tres casos donde no se activa, p. ej. servidores por HTTP en lugar de stdio).
8. **Skills: sí pesan siempre**: al revés que los MCP, el nombre y descripción de cada skill se inyectan en todos los turnos (en su demo: 18 skills = 2.000 tokens); solo el cuerpo se lee bajo demanda. Acción concreta: borrar las skills que no uses.
9. **Modelo justo para cada tarea**: no hace falta artillería pesada para formatear un JSON o renombrar variables. Presenta **SpecJudge** —presentada como herramienta open source «que yo he desarrollado»—, que lee los artefactos del proyecto y recomienda modelo por encaje calidad-precio, de forma local, con veredictos que citan un fragmento literal del spec. En PyPI (`pip install specjudge`) y aprobada como extensión del catálogo de Spec Kit de GitHub.
10. **Prompt caching (API)**: no es un botón del chat; se implementa en el código que monta la petición. Con la caché automática basta un campo a nivel superior y el sistema coloca el punto de corte en el último bloque cacheable, moviéndolo al crecer la conversación. Leer de caché cuesta ~10% del precio de entrada; escribir, un 25% más: si reutilizas el prefijo aunque sea un par de veces, sale a cuenta.
11. **Compactación con control**: Claude Code compacta solo al acercarse al límite, pero cuando le toca, no cuando conviene (te pilla en mitad de algo). Compactar tú en puntos de corte naturales e indicar qué conservar: «/compact conserva las decisiones de arquitectura y los nombres de los ficheros tocados; olvida los intentos fallidos». En API existe la compactación en servidor.

### Bloque 3 — capa local/proxy (avanzado)

Como todo lo anterior actúa dentro de la llamada (la petición ya está formada), el único escalón siguiente es una **capa local** entre el entorno y la API: (a) resolver sin llamada si la respuesta ya está en caché local, (b) recortar lo que sale quedando solo los fragmentos útiles del contexto, (c) límites duros que bloqueen o corten peticiones que pasen de X tokens. Anuncia posible vídeo propio sobre el proxy.

## Top 5 del propio autor (si hay que quedarse con poco)

1. Edita en vez de discutir.
2. Ventana nueva en cuanto cambies de tarea.
3. Compacta de vez en cuando (tú, con instrucciones).
4. Desconecta MCP y skills que no vayas a usar (verificando el on-demand).
5. Comprueba si el modelo elegido es el adecuado para esa tarea.

## Cruces y observaciones

- [[SpecJudge]] ya documentada en la fuente 44/57; aquí el propio autor la presenta como desarrollo propio del canal y la integra como paso práctico de ahorro de tokens.
- El principio «los modelos no tienen memoria / input reutilizado» es la base técnica del consejo de handoff por fichero, que coincide con la práctica de ficheros de traspaso que aparece en otras fuentes del lote ([[agentes-de-codigo]]).
- Autopromoción recurrente del canal: libro «El motor de la inteligencia artificial» [03:10-03:45], libro «Del vibe coding al Spec driven development» [05:32-06:08], SpecJudge [12:14-15:18]; cierre con like/suscribirse.

## Notas sobre la fuente

Transcripción de subtítulos automáticos (yt-dlp), literal y con errores de reconocimiento; los nombres propios (CRIFO, SpecJudge, Spec Kit) se normalizan en este resumen. Los llamados a la acción (like/suscribirse) están transcritos en el raw y se excluyen de la síntesis.

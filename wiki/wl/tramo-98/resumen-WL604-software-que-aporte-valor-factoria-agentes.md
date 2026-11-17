# WL-604 — Cómo crear software que de verdad aporte valor

- **Fuente original**: `raw/wl/tramo-98/2026-11-02-como-crear-software-que-de-verdad-aporte-valor.md` ([Vídeo](https://www.youtube.com/watch?v=WIriMsfscYw))
- **Canal**: Factoria de Agentes (School of Agents)
- **Publicado**: 2026-11-02 · **Duración**: 10:44
- **Dominio**: metodología de desarrollo con IA (candidato a agentes-de-codigo en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Guía «12 ideas» (aquí ~10) para construir un primer MVP con IA sin ser ingeniero; tesis inicial: «lo difícil ya no es escribir el código, es construir algo que funcione, sea seguro y alguien quiera usar».

1. **El dolor antes del código**: ¿qué dolor resuelvo y cuánto molesta? + ¿por qué me pagarían a mí? (ventaja: más rápido/barato/fácil/nicho). Frase-test: «ayudo a X a resolver Y mejor que Z porque…» — si no se puede completar, no es momento de programar. Truco: hablar con 5 personas con el problema antes de escribir una línea.
2. **Modelos frontera**: Anthropic/Claude primero, Codex de OpenAI segundo; alternativas abiertas más baratas: «Química 3» de Moonshot (ASR: Kimi 3), DeepSeek v4, GLM de Z.ai, QwenCode de Alibaba. El método importa más que el modelo (cambian cada pocos meses).
3. **Diseño en imágenes antes de pedir código**: prototipos visuales (generador de imágenes / Cloud Design de Anthropic para prototipos) → mostrar a usuarios → pasar a la IA como referencia («es más barato cambiar una imagen que reescribir una aplicación»).
4. **Buenas costumbres: skills**: Superpowers de Jesse Vincent (ASR «Jessie Vincent») — brainstorm, plan, tests primero, depurar, revisar. Consejo: no instalarlas a ciegas, **leerlas** (aprendes cómo trabaja un buen equipo de software).
5. **Iterar en vueltas cortas**: el código perfecto a la primera no existe — el modelo no está en tu cabeza, tú no sabes lo que quieres hasta verlo funcionar, y el entorno real (datos, navegadores, casos raros) nadie lo previó. «Iterar no es fracasar, es el método».
6. **ODD, desarrollo guiado por resultados** (nombra explícitamente la metodología): definir resultado/problema/criterio de éxito y dejar que la IA diseñe la solución (conoce más patrones de arquitectura que la mayoría); si se quieren especificaciones, que las escriba la IA y el humano las revise: «tu trabajo no es dibujar el plano, es decidir si el plano resuelve tu problema». Nota: coincidencia de nombre con la metodología ODD de esta wiki (Outcome-Driven Development) — mismo espíritu, sin evidencia de conexión directa.
7. **Desconfiar del «ya está»**: tests automáticos por funcionalidad, ejecutados delante de uno; **evidencias** (capturas, salida de tests, video del flujo: «si dice que el registro funciona, que enseñe a un usuario registrándose»); herramientas de calidad como **guardaraíles** (linter, formateador, chequeo de tipos, escáneres de seguridad/secretos) configurados por la IA y ejecutándose solos antes de cada cambio.
8. **CI/CD como cadena de montaje**: GitHub Actions sin coste; «nadie, ni tú ni la IA, pueda saltarse los controles»; versiones numeradas con notas de cambios → saber en qué versión apareció un fallo y volver a la anterior en minutos. Publicar chico y a menudo: «una versión enorme cada 3 meses es una apuesta».
9. **Fábrica de software** (nivel avanzado): convertir aprendizajes por proyecto en plantillas + agentes con roles (planifica/programa/revisa/prueba) + misma cadena de montaje: no construir una app sino muchas, cada una mejor porque «la fábrica aprende de todas».
10. **Menos pero mejor**: con IA añadir features es tan fácil que es tentador meterlo todo — cada función es más código, más fallos, más confusión; mirar qué se usa de verdad y quitar lo que no ayuda. Invariantes no negociables: Git desde el día 1 y nunca claves dentro del código.

## Señales de triage

- **Checklist de calidad completo y correcto** (tests, evidencias, guardrails, CI/CD, versionado) coherente con la práctica profesional y con la disciplina de esta wiki (RDD, evidencia observable, frontera committed).
- Contenido educativo sin datos dudosos; nombres verificables (Superpowers/Jesse Vincent, Kimi/GLM/Qwen — garbiñeos del ASR corregidos aquí, raw intacto).
- Cierre con CTA (like/seguir en School of Agents) — autopromoción leve, sin funnel de venta en el propio video.
- Sin patrocinios.

## Cruces

- Consolidación aplazada: núcleo para [[agentes-de-codigo]] y [[odd-metodologia]] (ODD guiado por resultados ↔ disciplina de esta wiki; guardrails ↔ WL-603 del propio tramo; tests/evidencias ↔ RDD); «menos pero mejor» ↔ WL-602 (atributos de calidad).

## Veredicto de triage

Excelente checklist didáctico de desarrollo asistido por IA (dolor → diseño → iteración → evidencias → CI/CD → fábrica); singular: nombra «ODD, desarrollo guiado por resultados» como metodología. Sin consolidación (aplazada).

# Resumen: Las pruebas técnicas de programación son… (entrevistas de código muertas)

- **Fuente original**: `raw/wl/tramo-7/2026-11-03-las-pruebas-tecnicas-de-programacion-son.md` (WL-96, tramo 7)
- **URL**: https://www.youtube.com/watch?v=Cy_Sh7vy-Sw
- **Canal**: midudev (Miguel Ángel Durán)
- **Publicado**: 2026-11-03 · **Duración**: 14:09 · **Idioma**: es (subtítulos automáticos, transcripción literal)
- Nota de formato: video de opinión/reacción — midudev comenta un post de **Félix, manager de Anthropic** («las entrevistas de código están muertas, al menos para mi equipo… ya no proporciona señal; las eliminé este mes») y un artículo asociado con consejos para juniors.

## El post de Anthropic (lo que comenta)

- Por qué eliminó las pruebas de código de su proceso: (1) Claude ya resuelve los ejercicios mejor que cualquier persona; (2) ser bueno programando no garantiza generar impacto; (3) las pruebas dejaron de ser indicador útil de candidatos.
- **Oportunidad para juniors**: los recién llegados cuestionan lo que los veteranos dan por imposible, no cargan con años de decisiones previas, detectan problemas normalizados; antes les faltaba influencia/recursos — con IA pueden **demostrar ideas construyendo prototipos sin aprobaciones**.
- **Ejemplo real**: dos ingenieros nuevos construyeron en un fin de semana un prototipo de interfaz gráfica para Claude; ~8 días después se publicó la primera versión — «el tipo de iniciativa que ahora queremos en los candidatos».
- **Qué busca ahora Anthropic**: buen criterio para decidir, empatía para entender usuarios, pensamiento fundamentado para justificar soluciones; el manager admite no saber aún cuál es la mejor manera de evaluar eso.
- Conclusión: «la IA no elimina la necesidad de buenos ingenieros, cambia lo que significa ser buen ingeniero»; «los años de experiencia ya no son la mejor medida del talento — importa lo que construyes y el impacto que consigues».

## La opinión de midudev (valor propio)

- **«Muertas hace 10 años»**: la prueba a casa de 40 horas gratis sin feedback («has trabajado gratis»), el LeetCode con timer (su experiencia en Meta: llegó a la última entrevista, «se le quitaron las ganas de vivir») — LeetCode se hizo rico porque las entrevistas eran memorizables (árboles, pilas, hash tables, LRU cache, bubble sort): «puedes ser muy bueno pasando entrevistas y muy mal programador» — la correlación nunca fue 1 a 1.
- **Matices a Anthropic**: «la experiencia no garantiza ventaja» — de acuerdo, pero «la experiencia entrena el criterio»; sí coincide en la ventaja junior: anécdota personal en Adecco/Venta — despliegues a producción de 1 hora que «nadie creía reducibles»; su «sueño de 5 minutos» los dejó en 10 (y lección: anunciar el objetivo optimista — si hubiera dicho 20, se habrían quedado en 20).
- **Los 5 consejos, comentados**: impacto de negocio > backlog («si vas a una inmobiliaria, entiende la inmobiliaria» — con IA el código ya no te define); prototipo en un fin de semana > documentos («las demos hacen más wow»); una sola buena idea sin funcionalidades de más; **advertencia**: «no hay nada peor que un tonto motivado» — cuestionar decisiones está bien pero primero «entérate de la copla», respeta el trabajo previo, comunica bien y elige batallas («no te busques enemigos nada más empezar»).
- **La clave que resume todo**: «buen criterio + empatía + pensamiento fundamentado los da el **conocimiento** — sigue aprendiendo».
- Contra la experiencia-número: «12 años de experiencia = el mismo año repetido 12 veces»; gente «que vive en un loop»; su defensa personal (20 años real: startups, consultoras, front-end lead en Adevinta) ante el hate de youtuber-influencer; consejo anti-encasillamiento: con IA puedes expandirte — aprende back-end, diseño, ciberseguridad («te limitas tú en tu cabeza»).
- **Qué evaluaría en una entrevista real**: conversación de 15 min descarta a mucha gente; 1-2 h máximo hablando sobre problemas reales o sobre un repositorio («¿y esto qué, cómo lo ves, qué harías?») detecta más que cualquier LeetCode — pero exige tiempo del entrevistador, y muchas empresas prefieren «que lleguen 50 pruebas y la que me dé la gana».
- **El consejo final de oro**: demuestra con proyectos — «si no haces nada, no te viene a buscar la buena ventura»; el ejemplo del chico que hizo un proyecto de rol para su guild.

## Notas críticas / ASR a corregir

- ASR: «LeadCode/LeedCode» = LeetCode; «Adecco y Venta» = verificar nombre de la empresa (¿Adecco y Vinted? — «Venta» probablemente Vinted); «Félix» = nombre del manager según el video (verificar identidad real en el post de Anthropic); «Claudia» no aparece — bien.
- Opinión contra testimonio: los hechos del post Anthropic (prototipo→publicación en 8 días, criterios de contratación) son claims del emisor; el resto es experiencia personal de midudev, presentada como tal.
- Sin patrocinio; tono directo con algo de lenguaje coloquial.

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (hiring técnico post-IA).
- **WL-45 (cómo superar una entrevista técnica, Maxi Programa)**: la contracara directa del clúster — WL-45 era la guía de sobrevivir a las pruebas; WL-96 las declara (10 años) muertas → cruce bidireccional obligatorio en consolidación (misma página o contraste).
- **WL-52/WL-68 (burnout, proyecto Gentle)**: «la experiencia como el mismo año 12 veces» y «vive en un loop» conectan con el tema del acomodamiento senior.
- **WL-94 (ODD)**: mismo patrón de juicio humano sobre ejecución IA — «importa lo que construyes y el impacto», el prototipo-del-fin-de-semana como evidencia (≈ «cerrar con la verdad»).
- **WL-31 (IA destruyó los salones)**: otra institución desplazada por la IA (exámenes ↔ entrevistas de código) — familia del tema tecnología-educativa-promesa-vs-institucion.
- Temas-candidatos: **hiring-post-ia** (WL-45 + WL-96, umbral ≥2 — página probable); **prototipo-como-currículum**.

## ADVERTENCIA

Opinión calificada con sesgo declarado (creador de contenido ex-contratador); claims de Anthropic sin enlace al post original — citar el post (Félix) como fuente primaria en consolidación.
- **Página de concepto**: [[hiring-post-ia]] y [[futuro-del-trabajo]] — la contracara del clúster hiring (creadas 2026-11-14).

# Límites de los LLM (grandes modelos de lenguaje)

- **Tipo**: página de concepto.
- **Dominio**: `general/`.
- **Actualizado**: 2026-11-10.
- **Fuentes**: Gustavo Entrala (entrevista a Gary Marcus), 2026-11-07.
- **Raw**: [raw/general/2026-11-07-gary-marcus-fracaso-industria-ia-gustavo-entrala.md](../../raw/general/2026-11-07-gary-marcus-fracaso-industria-ia-gustavo-entrala.md).
- **Ver también**: [[burbuja-de-la-ia]] · [[ia-y-sociedad]] · [[gary-marcus]].
- **Nota**: las tesis de esta página son la posición crítica de Gary Marcus, expuesta como opinion experta en entrevista; se atribuyen a él y no se presentan como consenso establecido.

## La tesis central

«No creo que los LLM no tengan su sitio. Creo que seguirán durante bastante tiempo, pero no creo que se pueda construir IA solo con los LLM» [17:15]. Marcus los llama «autocompletado con esteroides»: un sistema que no trata de hechos, sino de lo que estadísticamente quizás intentas escribir [26:52]. Son «cajas negras que intentan calcular respuestas estadísticamente» [27:51], y su salida refleja lo **verosímil**, no lo **real** [24:29-24:44].

## Por qué alucinan

- Las redes neuronales populares se exponen a mucho texto y «construyen un modelo estadístico de la relación entre esos fragmentos de texto… conjuntos de textos que suenan parecidos» [24:29]. Eso explica los errores de hechos: el caso que usó en [[gary-marcus]] de una gallina llamada Henrietta que nunca existió, y el de Harry Shearer descrito como «actor de voz británico» aunque nació en Los Ángeles y la corrección está en Wikipedia, IMDb y Rotten Tomatoes [24:56-26:01].
- La explicación técnica: los datos se agrupan en «clústeres» de conocimiento — comparte rasgos con actores británicos que también hicieron cine y doblaje — y el modelo predice por esa vía [26:29-26:40].
- No es nuevo: Marcus señaló el fenómeno en 2001 en su libro «La mente algebraica», donde las llamó «sobregeneralizaciones» [27:04]. «Llevo un cuarto de siglo oyendo "bueno, con más datos el problema desaparecerá". No ha desaparecido. Es inherente al funcionamiento de esos sistemas» [27:14-27:29].
- El modelo base «comete todos esos errores y luego intentas ocultarlos. Le pones todos esos parches, pero nadie ha encontrado una forma realmente eficaz de ponerlos» [27:40].

## La reconciliación de facto con la IA simbólica

- **Artículo clave**: «El aprendizaje profundo está chocando contra un muro» [17:15]. Lo que dijo, según Marcus, no es que los LLM no sirvan, sino que «tendréis que complementarlos con otras cosas, y eso es justo lo que ha pasado» [17:39].
- **La historia**: una rama de la investigación apostó por redes neuronales que «aprenderían por sí mismas» (con Geoffrey Hinton como el más «imperialista», que llegó a decir al G7 que no se invirtiera en IA simbólica porque «está muerta») y otra por la **IA simbólica**, que «es, en realidad, programación informática» — funciones con variables, condicionales, bucles — con raíces en Frege y Russell y en la IA de los años 50 [19:46-20:43].
- **La evidencia**: Claude Code, cuyo código se filtró y pudo examinarse, es «claramente un sistema neurosimbólico»: unas 500.000 líneas de código simbólico y unas 50 herramientas simbólicas junto a una gran red neuronal [21:13-22:18]. «Ahora todos lo hacen, pero nadie quiere admitirlo» — por ego (inversión hecha en redes neuronales) y por dinero («es más fácil captar dinero con una historia sencilla» de escalar) [22:18-23:03].
- **El ejemplo de las matemáticas**: los resultados recientes no salen de un LLM que genera una demostración y basta: el modelo genera muchas demostraciones candidatas y «las pasan a un sistema distinto que no es IA generativa… un sistema de IA clásica» que comprueba con símbolos si el teorema es correcto; solo se conservan las verificadas [18:55-19:32].
- **El contraste del GPS**: un sistema de navegación es puramente simbólico (bases de datos con hechos verificables: «si dice que son 4 km, podrías salir con una cinta métrica»), mientras que el LLM no ofrece esa correspondencia con el mundo [23:30-24:15].

## Fiabilidad y uso prudente

- «No puedes fiarte» de los resúmenes de IA: aciertan más de lo que fallan y aciertan con lo que tienen muchos datos, pero «estos sistemas no tienen una comprensión profunda» y no aciertan el 100 % ni se acercan [28:25-29:17].
- Regla: «confía, pero verifica. Si la respuesta importa de verdad, debes comprobarla» [28:49-29:02]. Marcus por eso prefiere buscadores clásicos (usa DuckDuckGo) que dan enlaces a las fuentes y permiten ver si algo viene de una fuente fiable o de alguien que vende algo [29:17-29:43].
- Ejemplo de contaminación de la web: unas 50-100 webs interconectadas de estafa recomendando gominolas de CBD supuestamente avaladas por una actriz conocida [29:55-30:25]. «La calidad de internet ha bajado… la web que solía ser la principal fuente de verdad se ha convertido en un vertedero» [31:17-31:27]; el término técnico es **colapso del modelo** [31:46].
- Consecuencia para el buscador dominante: «el verdadero producto de Google es la credibilidad» [32:25]; en el trimestre en que se grabó la entrevista dejó de tener flujo de caja positivo por primera vez en veintitantos años [32:38].

## Críticas recibidas y contraste

Los críticos de esta posición le atribuyen haber dicho «que no se podían usar los LLM para nada»; Marcus responde que su artículo «nunca dijo nada que se le pareciera» y que la historia se retuerce «cuando pasó exactamente lo que dije» [17:29-17:50]. Como contrapunto, él mismo reconoce que hoy otros hacen ese trabajo de desmontar el hype: cuando sale un modelo «hay gente que se burla de todos los modelos nuevos» y usuarios que cuentan experiencias del tipo «fue genial 5 días y luego me borró todos los archivos» [10:17-10:41].

## Véase también

- [[ia-y-lenguaje]] — cómo se mide la huella de los LLM en el lenguaje de las personas (página creada con la fuente siguiente de esta wiki).
- [[ia-y-sociedad]] — las consecuencias sociales, democráticas y económicas que Marcus deriva de estos límites.

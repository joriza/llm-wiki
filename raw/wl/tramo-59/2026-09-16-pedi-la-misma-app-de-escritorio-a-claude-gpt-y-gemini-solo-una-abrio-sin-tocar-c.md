# Pedí la misma app de escritorio a Claude, GPT y Gemini: solo una abrió sin tocar código

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=KTp_fzlTKKM)
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-09-15
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 05:21

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Un mismo encargo repartido entre tres modelos distintos. El resultado casi me hace cancelar el video. Dos aplicaciones se negaron a arrancar. Les pedí a Cloud, a GPT y a Gemini que construyeran la misma aplicación de escritorio, inventario, cuatro pantallas, base de datos SQ Lite y un ejecutable listo para instalar en Windows. Las tres entregaron código completo en menos de 6 minutos.

[00:19] Dos de esas apps no llegaron a mostrar la primera pantalla. Y no fue por un error de lógica de esos que se arreglan cambiando una línea, fue por algo que ningún tutorial de Python te enseña. Lo obvio sería declarar ganadora a la que sí abrió, pero en cuanto le pedí la segunda pantalla, con datos reales, el ranking se dio completamente vuelta. Te muestro las tres apps corriendo, los errores exactos, letra por letra y cuál de las tres uso hoy cuando necesito escritorio de verdad. Antes de ir a los

[00:42] resultados, las reglas, porque si las reglas cojean, el resultado no vale nada. Mismo prompt, palabra por palabra para los tres modelos. misma PC, un Windows limpio, recién instalado, sin librerías previas de Python. Cero edición manual en la primera ronda. Lo que la IA entregó es lo que se corrió, error incluido. Este es el prompt exacto, sin recortes. Con esto en mano, arranca la primera ronda. Abre o no abre, instalé las dependencias de cada app, exactamente como decían las

[01:04] instrucciones que la IA entregó. Corrí el instalador y ahí empezó a romperse la promesa. La primera app apenas se abre el ejecutable y revienta con esto en pantalla. El motivo es tan simple que da rabia. El código busca la base de datos con una ruta relativa pensando en la carpeta del proyecto. Pero un Potex empaquetado no vive en esa carpeta. Vive donde el usuario lo copió, en descargas, en el escritorio, donde sea. Windows no perdona esa suposición. La segunda app ni siquiera llega a compilar el

[01:28] ejecutable. El propio proceso de empaquetado se detiene con esto. Pidió una librería gráfica que no viene incluida por defecto en todas las instalaciones de Python en Windows. Y el modelo nunca lo advirtió en las instrucciones. Solo la tercera app abre a la primera, cuatro pantallas, base de datos funcionando sin errores visibles.

[01:44] Si el video terminara aquí, el veredicto sería obvio. Gana la que abrió, las otras dos se descartan. Pero esa respuesta es demasiado cómoda. Un tutorial de 5 minutos también abre y no sirve para nada real. La pregunta que de verdad importa no es si abre, es si sobrevive cuando le metes trabajo de verdad. Y ahí es donde la historia da un giro que no esperaba. Le pedí a las tres I con el mismo prompt de continuación que agregaran la importación de productos desde un Excel. Nada exótico.

[02:08] Un archivo real con columnas fuera de orden, celdas vacías y precios escritos como texto en vez de número. El Excel sucio que cualquier cliente real te va a mandar. Sorpresa. La app que ganó la ronda uno, la que abrió sin problemas, se cae al primer clic en importar. El código nunca contempló que un precio pudiera venir con símbolo de moneda o con coma de miles. Funciona perfecto con datos de laboratorio y se rompe con el primer archivo real que le pasas y todavía no llegamos a la parte que de

[02:32] verdad cambia el marcador. La segunda app es la sorpresa, es la que ni siquiera había logrado compilar en la ronda uno, pero una vez resuelta esa dependencia gráfica a mano, maneja el Excel sucio sin quejarse. Limpia el símbolo de moneda, ignora las filas vacías y avisa con un mensaje claro cuáles filas no pudo leer. Aquí está el giro. Laap que perdió la primera ronda por un detalle de empaquetado. Tenía debajo el manejo de datos más sólido de las tres y la que ganó la primera ronda

[02:57] escondía la parte más frágil detrás de la pantalla más bonita. El prompt final y las tres apps completas están en Patreon. Con las dos apps ya funcionando puertas adentro quedaba la pregunta que de verdad separa un proyecto de práctica de algo que le puedes entregar a alguien. Sobrevive fuera de tu computadora. Empaqueté las tres con el mismo comando, ajustado solo a lo que cada una pedía y las corría en una segunda PC con Windows recién instalado, sin Python, sin ninguna librería previa.

[03:20] La AP que arregló la ruta relativa, ahora sí abre en la PC limpia, pero pesa casi 200 MB y tarda unos 8 segundos en arrancar porque el modelo empaquetó dependencias completas que la app ni siquiera usa. La segunda app, la de la ruta corregida a mano y el manejo de Excel Prolijo, arranca en menos de 2 segundos. Pesa una fracción de eso porque desde el prompt original ya venía pidiendo una estructura de proyecto más limpia. La tercera había ganado las dos rondas anteriores casi sin esfuerzo,

[03:44] pero en la PC limpia dispara una advertencia de Windows Defender. Es el tipo de aviso que un cliente sin conocimientos técnicos cierra sin pensarlo dos veces. La app nunca llega a abrir. Tres apps, mismo prompt, tres resultados de empaquetado completamente distintos. Ninguno de los tres modelos mencionó ni una sola vez que esto podía pasar. Después de las tres rondas, esto es lo que realmente separa a estos modelos y no tiene nada que ver con cuál escribe mejor código en abstracto. ¿Cuál

[04:08] uso yo entonces? Para una app de escritorio que un cliente real va instalar y usar sin ayuda, uso la que resolvió sola el manejo de datos sucios y arrancó liviana en la PC limpia. El resto se puede arreglar en minutos. Para arreglar un bug puntual en código que ya existe, prefiero al modelo que reventó en la ronda uno. Una vez que sabes exactamente qué falla, explica el porqué del error mejor que los otros dos juntos. Y para explicarle el proyecto a alguien que no programa, la tercera es

[04:31] insuperable. Eso sí, ya no confío en que lo que explica sea lo que de verdad va a correr en la máquina del cliente. Ese es el prompt que agrego siempre ahora al final de cualquier pedido de app de escritorio. Dice así: Assume que se va a empaquetar a un ejecutable y correr en una PC limpia sin Python. Maneja rutas absolutas y valida los datos de entrada como si vinieran sucios. Esa sola línea es la que hizo que la segunda ronda se diera vuelta. Así que la próxima vez que le pidas una app de escritorio a

[04:55] cualquier IA, no le preguntes cuál escribe mejor código. Pregúntale qué hace con una carpeta que cambia, con un Excel sucio y con un Windows que nunca instaló Python. Ahí se nota la diferencia real. Si ya viste una prueba parecida, pero con librerías de Python en vez de conías, hay una hermana de este video. Construí el mismo punto de venta en Teekinter, en FLED y en PQT frente a un cliente real y solo uno sobrevivió. está justo aquí y te va a cambiar cuál de estas tres IAS eliges la

[05:19] próxima vez que le pidas una app de escritorio.

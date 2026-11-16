# Compilar llama.cpp [Comparativa] ⚡ ¿Vale la PENA frente al precompilado?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=R94y_vpg_UM)
- **Canal**: Nichonauta
- **Publicado**: 2026-09-27
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:53

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El día de hoy vamos a ver cómo con mismos modelos de lenguaje dentro de un agente podemos hacer cosas, no únicamente en cuanto a desarrollo de software, sino dado que directamente tiene acceso a nuestros archivos y carpetas, así como escribir comandos del sistema, lo podemos hacer que nos instale cosas, configure cosas, qué sé yo. Para ello, lo que haremos será lo siguiente. Estamos en la carpeta de mi llama CPP, el cual ya vimos en el vídeo anterior, y vamos a decirle que quiero

[00:27] que clone el repositorio de llama CPP oficial y que lo compile para acuda, específicamente para mi RTX 3060 de 12 GB. Comenzaremos con esta es la carpeta de mi llama CPP. Lista todos los archivos y carpetas para que entiendas cómo estructuro y organizo todo. Clona el repositorio oficial de llamp y compílalo para mí. RTX 3060 de 12 GB.

[00:54] Hay que tener en cuenta que una cosa es pedirle algo a una IA y otra cosa es que lo haga bien. Con lo cual, de todos modos, no solo hay que darle pasos medianamente bien explicados, sino también pues revisar qué es lo que va haciendo, ¿no? Aquí voy a presionar intro para ver qué tal intenta hacer las cosas. Sin embargo, muy seguramente en más de un comando, va a requerir permisos de superusuario, cosa que aquí no le estamos dando porque hasta la misma aplicación de Codex está siendo

[01:19] ejecutada de forma normal, no como superusuario. Así que seguramente en algún momento nos pedirá que nosotros esquivamos cierto comando, pero pues no porque Linux esté mal o que Codex esté mal, sino que pues simplemente lo tenemos cargado de una forma que no le damos todos los permisos. Por aquí, si damos clic vemos cómo está intentando obtener la información sobre el repositorio oficial de llama CPP. Está revisando qué herramientas tenemos para nosotros mismos compilar. Instaló

[01:45] aparentemente ciertas herramientas de compilación. Después clonó el repositorio oficial de llama CPP. Aquí nos dice, "Confirmé que el remoto oficial es ggml-org. Ya cloné su rama principal en source, llama CPP." La GPU y el controlador están presentes, pero faltan CME y NVCC.

[02:07] Así que voy a instalar las herramientas de compilación disponibles en Cachi OS antes de configurar el back en CUDA para la arquitectura amper de esa GPU. ¿Qué se supone que tiene de ventaja, por ejemplo, nosotros mismos clonar un repositorio y compilarlo? Pues que teóricamente lo estaríamos compilando de mejor forma, bajo los ajustes que necesitemos y bajo el hardware en donde lo vamos a ejecutar. Sin embargo, que aparentemente sea una forma más optimizada, no significa que necesariamente en el uso real lo notemos

[02:38] día con día. Seguramente vamos a notar un funcionamiento bastante similar, a excepción de que la compilación oficial sea horrible, pero aquí no es el caso. Dentro de llamp, la verdad es que funciona bien los archivos precompilados. Al final parece ser que ni siquiera va a requerir permisos de superusuario porque pues al ver que se le pidió la contraseña de administrador, lo que hizo directamente fue una carpeta local para tener todo portátil. Aquí nos dice ya que va a compilar llama CPP para

[03:07] SM-86 que corresponde a la RTX 3060. Mientras tanto, si nosotros revisamos entro a la carpeta de llama CPP, por aquí tenemos dos nuevas carpetas que ha hecho directamente Codex, en una en la que clonó todo el repositorio, todo llama CPP y en la otra pues las distintas herramientas que va a utilizar para la compilación. Por eso se llama tool chain. Ya nos dice la configuración quedó correcta y la compilación ya está generando tanto el backend CPU como kernel Scuda SM86. También descargó y

[03:40] verificó los assets del servidor. Hay bastantes kernel cuda, por lo que el build completo tarda más que una compilación solo de CPU. Vamos a ver si esto ya lo está haciendo directamente en la carpeta biner y no de momento solo tengo el precompilado oficial de llama CPP y el precompilado oficial de Yama CPP, la rama de Prism ML para ejecutar bonsai 2.

[04:04] Esperemos y el modelo, luego de haber leído todo lo que tenemos de archivos y carpetas sí lo meta aquí, pues sí lo meta aquí, pues porque ese era el objetivo, ¿no? Sino para qué lo ponía a que revisar archivos y carpetas. Solo por revisar, quiero ver exactamente qué está haciendo el sistema y vemos que en cuanto a uso de CPU está a un 67% lo que nos indica que claramente está trabajando. Lo hago así porque de momento no puedo dar clic por acá para ver los comandos que está en ejecución.

[04:30] Esto porque sencillamente lo que está haciendo es ejecutando ya ciertos comandos y está esperando a que termine de ejecutarse. Pero sí, tal como estamos viendo, aquí está haciendo todo lo referente a la compilación. De hecho, el último comando, el que está activo en este momento, es exactamente este de por aquí. Lo vamos a copiar, lo abro en un editor de texto y vemos exactamente el comando que está en ejecución. Parece ser que ya terminó una parte del proceso, así que voy a esperar un

[04:57] poquito más para que esto termine. Aquí ya terminó y ya lo metí a la carpeta correspondiente dado que no lo había hecho. Entonces, dentro de mi carpeta bin ya tenemos el Yama CPP 100% compilado por nosotros. Vamos a hacer una prueba del precompilado contra el compilado por nosotros para ver si algo ganamos luego de tanto proceso adicional. Esto en llama CPP en otros programas puede variar. Y algo que me di cuenta precisamente en el video previo fue que los ajustes del Qen 3.8 flash no

[05:30] fueron exactamente los mismos contra el video que estaba comparando los tokens por segundo. Sin embargo, tampoco es que haya una diferencia real, ni a mejor ni a peor, pero de igual forma, pues en esta ocasión ya preparé correctamente el archivo correspondiente. Para ello, por aquí lo vamos a poder ver. Y ahora sí tiene exactamente los mismos parámetros de ejecución y de hecho en este momento está en ejecución y vemos por aquí unos 9.2 tokens por segundo, es decir, a pesar de haber ejecutado con otros

[06:03] ajustes, la velocidad es equivalente es aproximadamente la misma. Esto es entonces lo que nos genera la versión precompilada, no nuestra versión. Así que ahora vamos a ver nuestra versión qué tal funciona. Le voy a dar en detener y lo único que vamos a tener que hacer será modificar el archivo correspondiente para cambiar la ruta de la carpeta exacta donde está llama server que vamos a ejecutar. Simplemente pego la ruta correspondiente, presiono control o control X y procedemos

[06:36] nuevamente a ejecutar. Por aquí si subimos deberíamos de estar viendo que estamos ejecutando el que compilamos, pero no, de hecho no se muestra. Pero bueno, lo acabamos de modificar, aquí lo vimos. Eh, muy bien, voy a bajar y vamos a probar entonces regenerar la respuesta para ver si mejora la generación de tokens por segundo o no, compilando nosotros o descargando la versión ya precompilada. Aquí no estamos hablando de optimizaciones adicionales de otras ramas de llama CPP y todo eso. Estamos

[07:05] hablando de la rama oficial precompilado o compilado por nosotros. Eso es todo. Al inicio me emocioné porque cuando se comenzó a generar la respuesta decía como 14 tokens por segundo, pero luego rápidamente está bajando al ya a lo real. Seguramente fue un error de cálculo o algo así. Mientras tanto, revisemos nuestra GPU y pues vemos ahí qué tal está funcionando, que en este caso con este modelo tan enorme, pues una parte del modelo está en CPU y RAM, básicamente todo, todos los expertos. Si

[07:35] revisamos en los logs, de hecho aquí se alcanza a ver un poco lo que mencioné, que al inicio me decía creo que 14 tokens. Aquí no dice lo mismo, pero me había mostrado eso, pero pues ya después tenemos la velocidad de siempre. Vamos a esperar a unos 10000 tokens para ver más o menos qué velocidad nos dice por aquí.

[07:51] Ahí llevamos unos 1000 tokens y vamos a 9.58 tokens por segundo. 1250 tokens, 9.54 tokens por segundo, casi 100 tokens, 9.51 tokens por segundo. Y si revisamos en los logs de llama CPP, pues vemos prácticamente lo mismo, tal como estamos viendo. Entonces, luego de estos dos videos, pues una vez más podemos concluir que si bien existen diferencias a favor o en contra de hacerlo de una forma u otra, pues mi GPU sigue siendo la misma. con lo cual, a excepción de que algo esté muy desoptimizado, pues me

[08:30] va a seguir funcionando casi igual, habiendo sí diferencias, pero no tales diferencias como para verme obligado, por así decirlo, a cambiar mi forma de trabajar, a reinstalar todo o qué sé yo, simplemente por un 5%, si somos optimistas, un 5% de velocidad adicional. Si quieres seguir viendo este tipo de videos, simplemente da like y suscríbete.

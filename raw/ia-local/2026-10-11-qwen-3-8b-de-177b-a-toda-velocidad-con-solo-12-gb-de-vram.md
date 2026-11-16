# Qwen 3.8B de 177B a TODA VELOCIDAD con solo 12 GB de VRAM

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=Iy7kst7JbVs)
- **Canal**: Cognix
- **Publicado**: 2026-10-11
- **Recopilado**: 2026-11-15
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 20:58

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Por fin tenemos un modelo casi de última generación, corre en una sola GPU y es lo bastante rápido como para superar a mi modelo de siempre. Miren esto. Bien. Ey, ¿podés pedirme pasta de dientes y un cepillo de dientes? Perfecto. Una pasta de dientes y un cepillo. Busco en Instamart. Encontré la pasta. Agrego Colgate Total. Ahora reviso el carrito.

[00:23] La pasta está adentro. Ahora agrego el cepillo Oral-B de las sugerencias. La página de pago está abierta. Elijo pago en efectivo al recibir, como siempre. Pago en efectivo seleccionado. Haciendo el pedido ahora. Eso fue Qwen 3,8 Flash, corriendo sobre Strata con una sola GPU, 12 GB de VRAM y 64 GB de memoria del sistema. Escribía a unos 40 tokens por segundo y leía prompts a hasta 900 tokens por segundo. Es una velocidad descomunal para un modelo de 125 mil millones de parámetros en una GPU común.

[00:58] Pero fíjense, el mes pasado corrí exactamente este mismo modelo en esta misma placa con llama.cpp y leía prompts a unos 120 tokens por segundo. Entonces, ¿qué es Strata? ¿Cómo puede leer prompts casi ocho veces más rápido en el mismo hardware? ¿Y cómo puedo usarlo junto con llama.cpp detrás de un único endpoint? Y lo que de verdad me interesa es por fin lo bastante bueno como para reemplazar, para muchos de nosotros, al MoE de 35B. Averigüémoslo.

[01:29] Primero, ¿qué es Strata? Strata es un motor de inferencia, igual que llama.cpp, pero con un enfoque opuesto. llama.cpp soporta unas 150 arquitecturas de modelos en casi cualquier backend. Strata soporta exactamente una. Esta, Qwen 3,8 Flash, más sus variantes podadas para código y sus versiones ajustadas.

[01:52] Tiene apenas dos semanas, licencia MIT, lo escribió casi todo un solo desarrollador y ya tiene unas 9000 estrellas. Y como ejecuta una sola arquitectura, nada tiene que ser genérico. El plan de memoria, la planificación, los kernels, todo está hecho a la medida exacta de las formas de este modelo.

[02:11] Para los agentes, esto rinde en los 900, no en los 40. La mayoría de los gráficos de velocidad muestran la decodificación, o sea, qué tan rápido el modelo escribe su respuesta. Pero un agente pasa la mayor parte del tiempo en otra cosa.

[02:26] Tomemos el pedido de Instacart. Para completarlo, el agente tuvo que recurrir al modelo 26 veces. Cada vez, el modelo primero tenía que procesar todo lo que había cambiado, el nuevo estado de la página, los resultados de las herramientas, mi último mensaje.

[02:42] Después, decodificaba una llamada a una herramienta de un solo paso, como "hace clic en este botón". En todo el pedido, son casi 34000 tokens de prompt de entrada y unos 1700 de salida. 20 tokens leídos por cada token escrito y el 62% del tiempo de trabajo del modelo se fue en el prefil. Eso, eso sí, solo ocurre si el caché de prefijos hace su trabajo. El contexto creció hasta 47000 tokens, pero cada paso solo tuvo que precargar la parte nueva. Sin él, el modelo reprocesaría todo el

[03:17] historial 26 veces. Esta es entonces la conclusión y vale para cualquier configuración local. Si elegís un modelo o un motor para agentes, no lo juzgues por la velocidad de decodificación, sino por la velocidad de prefil. El prefil es lo que tu agente realmente está esperando. Y ahí es donde llama.cpp me decepcionó. A 120 tokens por segundo de prefil, esos mismos 34000 tokens llevan casi 5 minutos. Strata los resolvió en 73 segundos. Es la misma placa y uno ya hizo el pedido mientras

[03:51] el otro todavía está leyendo. Entonces, ¿cómo logra un motor de dos semanas precargar casi ocho veces más rápido que llama.cpp en la misma placa? Y lo curioso es esto. En esta GPU, la multiplicación de matrices de expertos, la tarea que más cómputo exige de todo el modelo, sigue siendo código de llama.cpp.

[04:11] Entonces, si los cálculos de los expertos son los mismos, ¿de dónde sale la velocidad? Imaginen la GPU como una cocina pequeña. La mesada es tu VRAM, 12 GB, muy chica. La despensa es la RAM del sistema, donde tiene que estar la mayor parte del modelo, porque un modelo de 125B no entra en una placa de 12 GB. El modelo está formado en su mayoría por expertos, 512 por capa, y cada token se enruta a 10 de ellos. Y el pasillo entre la despensa y la cocina es tu conexión PCIe. En el perfil, cada token del

[04:47] prompt pasa por cada capa y cada capa necesita muchos expertos distintos. Entonces, la pregunta de fondo es, ¿cuántas veces cruzan el pasillo esos pesos de expertos? Por defecto, llama.cpp procesa el prompt en micro lotes de 512 tokens. Como los expertos están en la RAM, hay dos opciones. O los calcula en la CPU, que es lento, o vuelve a copiar a la GPU los tensores de expertos que están del lado de la CPU en cada micro lote. De cualquier manera, un prompt largo significa muchos viajes por

[05:19] el pasillo. Así que el primer truco de Strata es un bloque mucho más grande. Normalmente, la mayor parte del VRAM libre es un caché de expertos que guarda los más populares. Pero durante el perfil, Strata le pide prestado casi todo ese caché, y en esta placa procesa el prompt en bloques de 6144 tokens. Así, cada experto que no está residente cruza el PCIe una vez cada 6000 tokens en vez de una vez cada 500.

[05:48] Los números del propio Strata muestran la curva. Pasar de bloques de 4000 a 8000 tokens subió el rendimiento de 1790 a 1970 tokens por segundo. Cuando el prompt termina, el caché se vuelve a llenar. El segundo truco es el runner.

[06:04] Antes de que arranque un bloque, Strata arma la lista completa de expertos no residentes de cada capa en orden. Después, un hilo dedicado los copia por DMA directamente desde la RAM fijada a un anillo de 384 espacios en la GPU.

[06:19] Así, la capa N + 1 ya se está cargando mientras la capa N todavía calcula y la GPU nunca espera una copia. Hay además un atajo práctico. Ni siquiera espera la decisión del router. A partir de unos 1000 tokens, casi todos los expertos terminan enrutados igual. Entonces, simplemente los transmite a todos. Y acá vuelve a aparecer el código de llama.cpp.

[06:43] La multiplicación de matrices de expertos, o sea, el cocinero, es el propio kernel MMQ de llama.cpp, tomado directamente del upstream. Strata solo le entrega un trabajo mejor organizado. Fusiona las proyecciones gate y op en un solo producto y lanza los expertos en grupos de 16, con cada lanzamiento ajustado a ese tamaño de grupo. Así, la GPU pasa menos tiempo en lanzamientos pequeños y más tiempo haciendo la matemática de verdad. Vamos ahora con el último gran punto, la atención.

[07:14] Este modelo usa atención dispersa, donde un indexador elige unas 2000 posiciones para cada consulta. El llama.cpp estándar todavía construye la máscara completa, con texto por tokens, y ejecuta encima una flash attention densa. Strata no construye esa máscara en absoluto. Su propio kernel elige los bloques que necesita y lee solo esas filas del caché KB. Y ese es el patrón para todo lo que no no los expertos. El MMQ es el único kernel grande que Estrata toma prestado. La atención, el

[07:47] indexador, el escaneo GDM, las hiperconexiones, todos son kernels propios de Estrata. Y algunos de ellos son más rápidos que los de llama.cpp estándar. Sí, el cocinero de los expertos es el mismo. Lo que cambió Estrata es la logística que lo rodea. ¿Cuántas veces cruzan los pesos ese camino y cuán pocas veces queda la GPU ociosa? Más kernels propios para casi todo lo demás. Así es como la misma placa logra un perfil casi ocho veces más rápido. Pero el perfil es solo la mitad del trabajo. Después del

[08:19] prompt, el modelo todavía tiene que decodificar su respuesta token por token. ¿Cómo llega entonces Estrata a 40 tokens por segundo ahí? Un aviso rápido antes de pasar a la decodificación. Yo pruebo los grandes modelos nuevos en hardware que realmente se puede comprar. Si esto te sirve, suscribite al canal. De verdad ayuda. Bien, eso fue el perfil. La decodificación es un problema totalmente distinto. El modelo escribe un token a la vez y cada token se enruta a 10 expertos en cada capa. O sea, que no hay

[08:51] un lote grande detrás del cual esconderse. Cada token es una pasada nueva y la respuesta de Estrata empieza por el caché. Los pesos densos ocupan unos 3 GB y medio y el resto del BRAM se convierte en caché de expertos individuales. Unos 2860 lugares en esta placa. Eso es menos del 12% de los 24000 expertos. Empieza con un perfil de enrutamiento y va intercambiando cada pocas rondas lo que tu conversación realmente necesita.

[09:21] En esta placa, ese 12% cubre alrededor de dos tercios de todas las consultas a expertos. Pero con los fallos es donde se pone ingenioso. Llama. CPP coloca tensores de expertos enteros, fijos, en la CPU o en la GPU al cargar.

[09:37] Cada vez que el grafo cambia de backend, hay una copia y una sincronización y la GPU se queda ociosa, sin cola de trabajo. Estrata, en cambio, divide cada capa en tres vías. La GPU arranca enseguida con sus aciertos de caché.

[09:52] Cerca de una cuarta parte de los fallos se recarga por PCIe. La CPU calcula el resto directamente desde la RAM fijada. Y las tres corren al mismo tiempo dentro de la misma capa. Los traspasos se hacen mediante banderas en memoria fijada, dentro de un único grafo CUDA, sin sincronizaciones del driver en el medio.

[10:11] Eso se ve en la utilización. Con llama.cpp, la GPU estaba ocupada solo entre un tercio y la mitad del tiempo. Con Estrata, pasaba del 90%. Para ser justos, parte de eso son kernels de espera activa que consultan esas banderas. O sea, que no todo es trabajo real. Después, estima por adelantado.

[10:31] Este modelo viene con una cabeza MTP, un pequeño módulo de predicción de múltiples tokens. Estrata la mantiene completa en RAM y redacta hasta tres tokens por paso. Y el modelo completo los verifica en una sola pasada. La verificación es exacta, así que la salida es la misma que sin especulación.

[10:49] En esta placa llega a algo más de dos tokens por pasada. El llama.cpp estándar no ofrece MTP para esta arquitectura. Todo junto da los 40. Nuestra compilación optimizada de llama.cpp decodifica unos 26 tokens por segundo en esta placa. Estrata llega a unos 40 con el mismo archivo de modelo. Bien, así se consigue la velocidad. Pero Estrata solo corre este modelo y yo uso muchos otros todos los días. Entonces, ¿cómo me quedo con llama.cpp para todo lo demás y accedo a ambos desde un único endpoint?

[11:24] ¿Cómo lo hago correr junto a llama? CPP detrás de un solo endpoint. Según cuánta memoria del sistema tengas, hay dos opciones. La primera es la variante podada para código. Es básicamente el mismo modelo, al que le quitaron expertos de cada capa para hacerlo más chico. Y los expertos que conserva son los que son buenos programando. Así que es lo mejor para programar. La segunda es el modelo completo. Para eso se necesitan 64 GB de RAM, porque Stratta carga los expertos y los deja fijos en

[11:55] la RAM. Yo uso la cuantización GSQR y voy a dejar el enlace en la descripción. Y acá hay un detalle simpático. Este modelo usa una tabla de enegramas y unos 28 GB del archivo son solo eso, una simple tabla de consulta. Esos datos se transmiten desde el SSD a demanda y no hace falta cargarlos en la RAM en absoluto. La instalación, sinceramente, es la parte fácil.

[12:21] En Linux se ejecuta setup. Sí, y en Windows hay un archivo por lotes para iniciarlo. Revisa la placa de video y la RAM, recomienda un modelo y lo descarga. Yo ya tenía el Goof en el disco, así que apunté directamente a esa carpeta. Para esta versión todavía no había un motor precompilado para Linux, así que instaló el CUDA Toolkit y compiló uno.

[12:43] También descarga una cabeza MTP aparte de unos 5 GB, pero una advertencia para el primer arranque. Carga decenas de GB en la RAM y reserva una parte para la GPU, con lo que toda la máquina puede congelarse uno o dos minutos. No lo cancelen. Déjenlo terminar. También subí el contexto a 128 K, lo que no tiene un costo medible, porque el caché de expertos simplemente se adapta al RAM que queda después del caché KB.

[13:11] Bien, ahora la parte que realmente me interesa. Stratta ofrece un servidor compatible con OpenAI, pero solo para este único modelo. Todos mis otros modelos están como presets en el router de llama.cpp, así que puse llama swap delante de ambos. Llama swap es un pequeño proxy que corre en un puerto y según el nombre del modelo, levanta el backend que pide la solicitud.

[13:34] Honestamente, es la primera vez que uso Llama Swap. El router de llama.cpp ya hacía lo que yo necesitaba, así que nunca le vi necesidad. Pero ahora que lo configuré, es una herramienta realmente excelente y probablemente de ahora en adelante lo ponga delante de cada endpoint de IA que corra. El único inconveniente que encontré es la barra de progreso. Mi interfaz muestra el progreso al cargar el modelo y al procesar el prompt, pero Llama Swap no lo reenvía. Puede insertar un mensaje de

[14:04] carga, pero solo como texto dentro de la respuesta misma, así que por ahora mi interfaz no puede mostrar ningún progreso durante un cambio. En la configuración hay dos tipos de entradas. Una es el router de llama.cpp y cada preset dentro de él está listado por nombre. Así mis clientes siguen viendo cada modelo por separado.

[14:24] La otra es Strata una en ambas GPUs y otra en una sola GPU y todas van a un grupo configurado en Swap y exclusivo. Así, solo una de ellas ocupa las GPUs a la vez. Incluso mi modelo de imágenes está en el mismo grupo. Desde el lado del cliente entonces, nada cambia. Pedís el 35B y Llama Swap llama al router. Pedís Qwen 3,8 flash y detiene el router y arranca Strata. El cambio del router a Strata en una GPU tarda unos 34 segundos.

[14:57] La vuelta tarda unos 15 segundos y si nadie usa Strata durante 10 minutos, se apaga y libera la RAM fijada. Esa es entonces la configuración, pero esto es un motor de dos semanas que ocupa 40 GB de tu RAM. ¿Dónde está la trampa? ¿Dónde está entonces la trampa? La primera es evidente. Strata corre un modelo y atiende una solicitud a la vez, no hay batching. Así que si queréis atender a varias personas al mismo tiempo o correr una tanda de agentes en paralelo, no es el motor indicado. Después está la RAM.

[15:29] El IQ3 XXS ocupa unos 40 GB y la memoria fija queda bloqueada. Nada más en la máquina puede usarla mientras Estrata está activo y por eso mi configuración lo apaga tras 10 minutos de inactividad. Y si usás Windows, el fijado multi GPU está limitado a 8 GB. Y en WSL ocupa cerca de 1 GB, Linux es realmente la plataforma donde conviene correrlo.

[15:55] Ahora, el problema sutil está en la salida. El mismo experto da números ligeramente distintos según lo calcule la GPU o la CPU porque redondean de forma diferente. Y como el caché mueve los expertos todo el tiempo entre una y otra, ni siquiera una salida codiciosa es reproducible byte por byte por defecto. Se puede forzar con un par de interruptores, pero cuesta algo de velocidad. ¿Qué tan importante es esto?

[16:20] El propio paper de Estrata lo mide frente a llama.cpp. La diferencia promedio en la distribución de salida es menor que la diferencia de llama.cpp consigo mismo entre correr en CPU y en GPU. Y cuando un token efectivamente cambia, es un resultado casi empatado. Yo lo llamaría ruido.

[16:39] Y hay un interruptor que conviene conocer antes de salir a perseguir velocidad. En los ajustes hay algo llamado experimental speed projection. Viene apagado por defecto y a pesar del nombre, no es una función de velocidad.

[16:52] Es un vector de control para eliminar rechazos. Si lo activan, el token principal cambia en una de cada 10 posiciones y la perplejidad en código sube un 15%. Así que mejor déjenlo apagado. Para terminar, este proyecto tiene solo dos semanas.

[17:08] Un desarrollador escribió la mayor parte y la mayoría de los números publicados salen de una sola PC. Para ser justos, la documentación lo menciona y marca sus estimaciones. Aún así, hay que esperar que entre versiones se rompan cosas.

[17:23] Estos trucos, entonces, no son magia y la mayoría no está atada a un solo modelo. ¿Puede llama.cpp ponerse al día? ¿Qué pasa si llevamos a llama? cpp las mismas optimizaciones que usa strata? ¿Podemos alcanzar la misma velocidad? Y más importante todavía, ¿aceleraría también a cualquier otro modelo que llama.cpp pueda correr? Para averiguarlo, lo probé yo mismo y algunas personas de la comunidad de Discord están intentando lo mismo. Después de leer el código de strata, pasé dos días

[17:54] llevando sus ideas de prefill a mi propio fork de llama.cpp. Adopté el caché de expertos para bloques más grandes y transmito expertos por adelantado en un segundo stream de CUDA. Agregué atención dispersa solo para las celdas seleccionadas, además de un kernel multitoken para las capas GDN. Y la pasada del prompt MTP ahora escribe únicamente su caché KB. Con un prompt de 17,000 tokens en una placa, eso llevó mi fork de unos 120 a unos 620 tokens por segundo. Strata alcanza unos 900 en la

[18:27] misma prueba. Pero lo que entendí es otra cosa. Es mucho más fácil escribir un kernel hiperoptimizado para un solo modelo que construir una herramienta general para muchos modelos. Y gran parte del código de strata está generado por IA con una persona guiándolo. Cerca de dos tercios de los commits fueron coescritos por un agente de programación con IA.

[18:50] Eso significa que escribir kernels para un nuevo LLM va a ser muy rápido en un futuro cercano. En mi opinión, vamos a tener entonces dos tipos de motores y necesitamos los dos. Uno ejecuta una sola arquitectura tan rápido que ningún otro motor puede igualarlo.

[19:07] El otro es un motor general que ejecuta la mayoría de los modelos y acepta perder algo de velocidad a cambio. Con el tiempo, esos kernels hiperoptimizados se van incorporando a los motores generales hasta que el motor de un solo modelo deja de hacer falta. Pero entonces aparece un modelo nuevo. Y lo primero que deberíamos hacer es construir otro motor hiperoptimizado para él, integrarlo de a poco en el motor general y repetir. Lo que me devuelve a la pregunta que realmente me

[19:36] interesa. Este modelo, en este motor, ¿es lo bastante bueno como al MoE de 35B? ¿Puede entonces reemplazar al MoE de 35B? Para mí, ya lo hizo. El de 35B era mi herramienta diaria porque era rápido, no porque fuera inteligente. Flash juega en otra liga, cerca de Claude Opus 4,8. Y con Estrata, la parte que un agente realmente espera ya es lo bastante rápida. Todo ese pedido de Instacart se completó en menos de 2 minutos con una sola placa. Sigue escribiendo más lento que el de 35B. Pero como vimos, en los

[20:12] agentes, la pérdida de tiempo no está ahí. Para muchos de nosotros, sin embargo, la respuesta honesta depende de la RAM. Con 64GB, entra el modelo completo y yo cambiaría. Con 32 conseguís la versión para código. Si tu agente, sobre todo, escribe código, vale la pena probarlo. Y con llama.cpp delante, ni siquiera tenés que decidir. Quedate con el de 35B y todo lo demás en llama.cpp. Y pedí Flash por nombre cuando la tarea necesite el cerebro más grande. Eso es todo por esta vez. Si querés probarlo, los enlaces a

[20:44] Estrata, a la cuantización GSQRKO y a mi configuración de llama.cpp están en la descripción. Y si lo corrés en tu propia placa, escribí tus valores de perfil en los comentarios. De verdad quiero ver hasta dónde llega esto.

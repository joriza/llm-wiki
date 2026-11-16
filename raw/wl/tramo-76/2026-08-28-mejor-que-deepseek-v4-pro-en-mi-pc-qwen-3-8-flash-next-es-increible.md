# Mejor que DeepSeek V4 Pro en mi PC 🚀 Qwen 3.8 Flash Next es INCREÍBLE

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=RirKlGTe9fE)
- **Canal**: Nichonauta
- **Publicado**: 2026-08-27
- **Recopilado**: 2026-11-16
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 09:59

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] Cuenta 3.8 Flash Next, es el primer modelo que tenemos de la colección de modelos de Cuenta 4. Es una previsualización a dicha arquitectura y la verdad es que a pesar de que únicamente es una previsualización, los resultados en benchmark son bastante sorprendentes. Este modelo tiene un tamaño de 125 billons en cuanto al modelo, es un mezcla de expertos con únicamente 6 billons activos y 51 billons los utiliza para enegramas con el objetivo de predecir los siguientes tokens rápidamente. Además de eso, tiene

[00:33] otros 4 billons que es un MTP para hacer speculative decoding a partir de dicho modelo borrador. Cuenta con 262,144 tokens de ventana de contexto, expandibles hasta 1 millón y tiene visión de imágenes, no es únicamente de texto. Yo lo he descargado solo para probar en Q2 KXL en conjunto con el MM Prof para la visión y en total esto está requiriendo aproximadamente 74.2 GB.

[01:00] Afortunadamente en este hardware cabe aún en Q3 o en Q4, sin embargo, no lo quise descargar tan pesado porque no sabía si iba a funcionar bien. En este momento, tal como estamos viendo, no lo estoy cargando en mi GPU, únicamente lo estamos cargando en RAM y el modelo cargado en conjunto con lo demás que tengo abierto y mi sistema operativo está consumiendo 83 GB de RAM. Estos son los ajustes que en este momento tengo aplicados y a pesar de ser versión de llama.cpp para CUDA, no está funcionando

[01:29] en mi GPU sencillamente porque aún no copio CUDA dentro de este llama.cpp, que por cierto, es nueva versión y ya es compatible con esta arquitectura de modelo. Así que comencemos a probar y para ello me voy a dirigir entonces a la interfaz web de mismo llama.cpp para comenzar a hacer alguna consulta. Si aquí ponemos, por ejemplo, ¿por qué el cielo es azul? Simplemente lo primero que queremos notar es qué tan rápido o lento está funcionando. Y sin ningún ajuste especial, simplemente cargado por

[01:56] primera ocasión, está funcionando aproximadamente a 5 tokens por segundo en un Ryzen 5 5600G con DDR4 3200 MHz CL16 dual channel. La verdad es que para hacer la primera prueba no está mal del todo, sin embargo, comúnmente también se hace lento por ser Q2. A lo mejor hasta en Q3 o Q4 funciona aún más rápido a pesar de requerir más memoria, sencillamente porque dicha precisión tiene mejores kernels para funcionar correctamente con GPU o con CPU.

[02:26] Pero bueno, tal como decimos en este momento únicamente está cargado en RAM, así que lo voy a cerrar y dentro de la carpeta de este llama.cpp voy a copiar las librerías de CUDA. Ya las tenemos por aquí y simplemente con eso, sin aún cambiar ningún ajuste, voy a darle de nuevo doble clic al punto bat y vemos de hecho que sí, que ya está utilizando la GPU NVIDIA. Aún no termina de cargarse completo y a pesar de ello ya está usando GPU. Listo, ya terminó de cargar y entonces vemos que GPU con los ajustes

[02:56] actuales me consumió únicamente 6.3 GB y RAM estamos requiriendo en este momento 79 GB. Recordemos, no todo lo que está en RAM es del modelo, el sistema operativo y todo lo que tengo abierto pues también ocupa. Vamos pues a intentar regenerar la respuesta y ver si algo de velocidad ganamos con estos nuevos ajustes y sí, estamos viendo que ya estamos a más de lo doble de tokens por segundo en un modelo bastante bastante grande. De hecho, según nos comentan en la documentación oficial de

[03:26] dicho modelo, lo anuncian como de 180 billions de parámetros, que una parte son los enegramas, otra parte es MTP, otra parte es la visión, pero pues de igual forma son 180 billions de parámetros. Aún no sé si la versión que descargué cuenta con MTP, así que por no saberlo pues vamos a probar y si no lo encontramos intentamos descargarlo de otro lado. Entonces, acabo de agregar aquí en nuestro punto bat estas dos líneas para activar Speculative Decoding a partir de MTP y puse un valor de dos

[03:56] para predecir los siguientes tokens. Si es que el modelo dentro ya incluye el MTP, va a funcionar y si no, pues se va a cerrar. Intento ejecutar, de momento parece que va bien, a ver qué tal cuando llegue a la parte del MTP y efectivamente este modelo, de donde yo lo descargué del repositorio de Unsloth, no incluye MTP dentro del mismo modelo.

[04:18] Sin embargo, lo he descargado el MTP por separado en GGUF, en esta ocasión en Q4KM, así que lo meto en la misma carpeta donde tenemos el modelo y la visión y simplemente en nuestros parámetros de ejecución lo tenemos que integrar de esta forma. Vuelvo a intentar iniciarlo y vamos a ver ahora qué sucede. Y pues al menos en este momento, descargándolo de ese otro repositorio, no está funcionando. Esto aparentemente es porque a pesar de que la arquitectura del modelo de lenguaje

[04:45] ya está soportada dentro de llama.cpp, lo que aún no está soportado es este tipo de MTP, así que tendríamos que probar una versión específica de llama.cpp más experimental. Pues bueno, no pasa nada, mientras tanto sigamos así y ahora vamos a empezar a intentar mover capas a la CPU. Si bien ya teníamos todas las capas en CPU, pues necesitamos ese comando pero para ver cuántas vamos a dejar en CPU y cuántas podemos pasar a GPU. Presiono intro porque lo primero que necesitamos saber pues es cuántas

[05:15] capas tiene el modelo para a partir de ahí ir decidiendo qué valor más o menos poner. Aparentemente son 47, a cerrar esto. Y entonces, ¿qué tal si por aquí ponemos 43? 43 en CPU y RAM, las otras cuatro en GPU. Por aquí ya vemos que con esas poquitas capas de diferencia esto aumenta muchísimo. Esperemos que quepa también la KV caché, si no. Y sí, sí cupo, nos quedó algo así como 1.2 GB de VRAM libres. Le doy entonces en regenerar y vamos a ver ahora qué tal la generación de tokens por segundo y en

[05:49] esta ocasión estamos a 13 tokens por segundo con este modelo en Q2 que tal como comento no necesariamente es la precisión que mayor velocidad da, pero bastante interesante porque el modelo es bastante nuevo, apenas empieza a ser compatible con llama CPP y en este equipo estamos corriendo un modelo de 180 billions de parámetros aún sin el acelerador de MTP ni de Ngram y dado que tenemos aún bastante RAM pues pudiéramos cargarlo en Q3 o Q4. Es decir, como comúnmente se cargan los modelos de

[06:18] lenguaje. Si revisamos aquí en benchmark en este momento aparentemente ese cuenta es punto ocho flash next está con mayor puntuación que el deepseek V4, no el flash, el pro y no la versión original, sino el nuevo checkpoint. Es decir, en mi PC puedo cargar algo superior a deepseek V4 pro 0813 con esfuerzo de razonamiento máximo. Si bien claramente esto es cuando el modelo no está cuan- -tizado. Sabemos que cuantizado cuatro bits prácticamente no pierde calidad, con lo cual seguiríamos estando por

[06:51] encima o por lo menos muy similar a ese deepseek V4 pro completamente gratis en mi computadora. Con pura RAM que aparentemente es cara de momento, sí, más cara que antes, pero más barato que estar utilizando a diario deepseek V4 pro o que comprar una GPU en la que quepa deepseek V4 pro. Esto según benchmark externos, pero también la gente de Alibaba Qwen nos dio algunas comparativas bastante interesantes. Y este modelo es bastante superior al Qwen 3.8 27B que apenas hace unos días nos

[07:21] tenía tan sorprendidos. Recordemos además que en este momento lo estoy cargando con todo y MM Pro para visión de imágenes y vídeo, con lo cual quitando esa parte me funcionará más rápido porque puedo pasar más expertos a GPU. Y esto en conjunto con unos días que el Ngram y el MTP de este modelo sea compatible, a lo mejor llegamos a unos 30 tokens por segundo aún con el modelo en Q4. De momento es pura especulación, pero todo apunta a eso. Y si revisamos otras pruebas que han hecho otras

[07:50] personas, por aquí tenemos algunos ejemplos de pruebas que han estado haciendo con este modelo. Aquí, por ejemplo, en IQ1S logró superar el benchmark, la prueba del pelícano, dibujar esto a partir de puro código. Por acá tenemos una demo 3D, la cual nos muestra lo siguiente, vemos aquí como una especie de lugar por en el que va moviéndose toda la animación. Recordemos todo esto creado únicamente con código, y la verdad es que está bastante sorprendente lo que un modelo de pesos abiertos tan pequeñito y

[08:20] rápido puede hacer, teniendo en cuenta que en este momento es solo una previsualización a lo que va a llegar con Qwen 4. Bastante interesante, la verdad. Okay, todo bastante bien, pero ¿y qué tal el GLM 5.3 Flash? También acaba de salir. Pues dicho modelo lo tenemos en tercera posición de todos los modelos actuales de pesos abiertos, comparado contra la cuarta posición de Qwen 3.8 Flash, estando un poco por encima y teniendo nativamente más ventana de contexto, aunque el Qwen, de

[08:49] igual forma, se puede multiplicar por cuatro su contexto, haciendo una modificación al GGUF. Sin embargo, GLM 5.3 Flash, su mejora es muy mínima comparado con el aumento de peso del modelo, teniendo en cuenta además que aquí no tenemos MPT ni N-Gram. Y si nos vamos a los archivos cuantizados, pues este a 4 bits no cabe, por ejemplo, en 128 GB de RAM. Así que por un puntito de diferencia, pues me conviene más el Qwen 3.8 Flash Next, que en UDQ4 KXL pesa 111 GB. Y si no, en Q3 90 GB, GPU de 12 +

[09:25] 128 GB de RAM cabe perfectamente. Así que está bastante interesante, porque según benchmark, en este momento, tanto los benchmark de Qwen como de gente externa, como de Artificial Analysis, nos indican que con este modelo tenemos algo superior a Deep Sick V4 Pro completamente ilimitado, privado y siendo muchísimo más eficiente. Ya está funcional, sin embargo, será interesante probar ya cuando N Gram y el MTP de este modelo funcione correctamente, porque eso debería de acelerar bastante la

[09:54] velocidad. Si quieres seguir viendo este tipo de vídeos, simplemente da like y suscríbete.

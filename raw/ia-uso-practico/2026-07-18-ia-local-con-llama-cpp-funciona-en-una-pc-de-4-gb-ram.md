# IA Local con llama.cpp 🧪 ¿Funciona en una PC de 4 GB RAM?

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=UW_QkuIko2w)
- **Canal**: Nichonauta
- **Publicado**: 2026-07-18
- **Recopilado**: 2026-11-11
- **Idioma**: es (subtítulos automáticos es (auto), transcripción literal)
- **Duración**: 08:04

> Transcripción a partir de los subtítulos automáticos del vídeo, sin normalizar; puede contener errores de reconocimiento. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] En este vídeo vamos a ver qué tal funciona un modelo de lenguaje en una PC de bajos recursos, específicamente una mini lab que ni siquiera ventilador tiene, tiene solo 4 GB de RAM, tiene Windows 10 y pues buena parte se la lleva Windows 10. La mini lab es tan pequeña que simplemente expandiendo mi mano casi la cubro por completo cuando está cerrada. Dado que si grabo la pantalla directamente desde esa misma PC, va a consumir muchos recursos y no quiero además estar haciendo mucho

[00:30] invento con capturadoras externas, pues lo que voy a hacer es conectarme por escritorio remoto VNC. Aquí ya estamos conectados y como podemos ver esta pobre PC tiene solo 4 GB de RAM, de los cuales una parte es para su GPU integrada y pues además de que Windows se lleva casi la mitad. Vemos que de por sí al habernos conectado por escritorio remoto ahora sí hay más uso del CPU demasiado extremo comparado con lo que había antes, porque es un CPU bastante sencillito. Dentro de llama CPP el

[01:03] modelo que vamos a intentar ejecutar es gema 4 E2B QAT UDE QDO UDE QDO KXL con todo y MTP en Q4. Los parámetros de ejecución son los que tenemos por aquí. Tengo la versión de llama CPP Vulcan aunque sinceramente pues la GPU integrada de poco va a servir, simplemente se va a usar CPU y procesador con estos ajustes. Ya tenemos vídeo de llama CPP explicando todo esto.

[01:32] Perfecto, le voy a dar doble clic al punto bat para que comience a cargarse el modelo y pues aquí vemos cómo empieza a subir el uso de la RAM. Vamos a llegar casi al 100% con lo cual estuviese mejor si tuviéramos algún sistema Linux por ejemplo, para no consumir tanta memoria.

[01:50] Perfecto, ahí ya está lista para funcionar, sin embargo si abres el navegador me voy a quedar sin nada, ¿cierto? Desgraciadamente dado que Windows ocupa una buena parte y Chrome también ocupa mucha memoria, pues no va a ser lo mejor. Podemos probar desde línea de comandos, si no otra cosa que podemos hacer es modificar en el punto bat para que nos responda por toda la red. De esta forma, puedo abrir el navegador en mi PC principal conectado al llama server que nos lanza esta misma

[02:20] PC. Con esto listo, vamos a guardar, volvemos a abrir y una vez que se abra, nos aparece el cortafuegos, le doy en permitir acceso para poder acceder desde mi otra PC y aquí que ya está listo, pues simplemente voy a acceder a su IP.

[02:35] Aquí ya estamos conectados al llama server que tenemos en esa otra PC y pues una vez que yo haga aquí alguna consulta, nos debería de aparecer aquí en la ventanita de CMD en el escritorio remoto. Entonces, vamos a preguntarle algo, como por ejemplo, ¿qué es un verbo? Simplemente con eso, presiono enter y vemos que comienza el procesamiento. Ya de por sí se tarda bastante en procesar los escasos tokens que hay de entrada, procesando 0.41 tokens por segundo. La RAM no está haciendo demasiado problema, pero pues

[03:09] de todos modos es muy lenta en cuanto ancho de banda y además el procesamiento del CPU. Por acá ya estoy empezando a ver que está generando respuesta y pues sí, genera respuesta, pero la verdad es que lo está haciendo muy lento, a pesar de ser gema 4 e 2 b solo con 4000 tokens de ventana de contexto, con kvcache a 4 bits, MTP a 4 bits, su kvcache a 4 bits y el modelo en q2. Pues la verdad es que no es el modelo que mejor funcione, ¿verdad? Principalmente porque de por sí Windows consume mucha memoria. Si

[03:44] Windows nos dejara más memoria libre, pues mejor aún, por lo menos para no saturar la memoria, aunque de igual forma la velocidad de procesamiento pues sería muy similar. Ahora, no todo está perdido, ¿por qué? Porque hay modelos más pequeños. ¿Qué es lo que vamos a hacer entonces a continuación? Por ejemplo, descarguemos el modelo quant 3.5 0.8b con todo y MTP en una versión U de Q2 KXL. Este modelo de escasos 455 MB cuenta con cadena de razonamiento, uso de herramientas, 262,000 tokens de

[04:19] ventana además de que le podemos añadir visión. Dado que estamos descargando la versión MTP, de por sí ya tiene incluido dicho archivo, con lo cual deberíamos de poder acelerar la generación de tokens. Perfecto, voy a cerrar entonces el llama server que teníamos con gema. Y ahora lo que voy a hacer es transferir el archivo que acabamos de descargar. Ya lo tengo seleccionado y lo vamos a enviar directamente a nuestra carpeta de llama.cpp. Le doy en aceptar y pues comenzamos a pasarlo. Vemos que ni

[04:48] siquiera la velocidad de transferencia sea muy rápida, a pesar de ser desde la misma red, porque de por sí el mismo Wi-Fi que integra pues no es el mejor. La ventaja pues es que es una PC muy barata, muy sencillita y que por ejemplo también no solo tiene Wi-Fi, sino que también cuenta con la posibilidad de conectar una tarjeta SIM para tener datos, por ejemplo. Vemos que simplemente por estar compartiendo un archivo el CPU sube bastante. Ya va más de la mitad y por aquí ya estoy

[05:18] preparando el archivo de ejecución. Lo voy a dejar prácticamente igual. Lo que nos interesa ver es la velocidad de generación de tokens. Por cierto, los modelos small LM, por ejemplo, tienen uno con versión 0.135b. Sin embargo, no son tan versátiles, no están para distintos idiomas, no tienen visión, no son razonadores, no pueden usar herramientas ni tienen tanta ventana de contexto. Vamos a guardar este archivo y ahora que ya terminó la transferencia de dicho archivo, pues vamos a intentar ejecutar. Doy doble

[05:48] clic al punto bat y vemos cómo comienza la carga del modelo. Afortunadamente, parece ser que sí vamos a tener más memoria libre comparado con el anterior. Sin embargo, hasta la carga completa del mismo está tardando. Y aquí lo tenemos.

[06:02] Perfecto, en este caso saturamos aún menos la memoria, además de que de por sí es de menos billions de parámetros. Vamos a acceder nuevamente a llama server, aquí tenemos quant 3.5 0.8 B y vamos a hacer el una consulta. ¿Por qué el cielo es azul? Presiono enter y esperemos la respuesta. Pues al igual que en el caso anterior, el procesamiento del prompt, por más pequeño que sea, está siendo demasiado lento. Por aquí vemos cómo va todo en el administrador de tareas y pues realmente

[06:33] el problema principal no es la falta de memoria, sino que la memoria es muy lenta, al igual que el procesador. Porque por más pequeño que sea el modelo y que sí quepa, la verdad es que es prácticamente inutilizable los modelos de lenguaje por aquí. Y si a esto le sumamos el sistema Windows, pues aún peor. 0.24 tokens por segundo. Creo que estamos peor que en el caso anterior, siendo que este modelo es más pequeño. Y aquí empezamos a ver la generación de tokens. Lleva únicamente esta palabra

[07:03] escrita y pues avanza tan lento que ni siquiera nos da estadísticas de los tokens por segundo. Llevo buen rato esperando aquí y pues no, nos estamos dando cuenta que okay, la capacidad de memoria es importante, sin embargo, también falta procesamiento. No basta con tener mucha RAM si su velocidad es muy lenta, al igual que del procesador.

[07:25] Es por esto que una GPU viene de lujo, ¿por qué? Porque aunque no tengan demasiada, demasiada memoria, comparada con la RAM normal de nuestro sistema, lo que sí tienen es que dicha memoria es muy, muy rápida, al igual que su GPU, su unidad de procesamiento. De lo contrario, pues esto es lentísimo, pero bueno, teniendo en cuenta las capacidades del PC, aunque entre a chat GPT no me va a funcionar bien. No porque se esté ejecutando el modelo en mi PC, sino porque de por sí con Windows y

[07:53] Chrome basta y sobra para que dicho PC no pueda más. ¿Qué otras pruebas extrañas te gustaría ver con esta PC? Si quieres seguir viendo este tipo de vídeos, simplemente dale like y suscríbete.

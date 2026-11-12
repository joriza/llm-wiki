# FLUX KONTEXT EN LOCAL Y GRATIS!!!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=qPtUhkAmZOc)
- **Canal**: Academia SD
- **Publicado**: 2025-06-27
- **Recopilado**: 2026-11-10
- **Idioma**: español (subtítulos manuales es, transcripción literal)
- **Duración**: 09:01

> Transcripción a partir de los subtítulos originales del vídeo, sin normalizar. Las marcas de tiempo indican el inicio aproximado de cada bloque.

---

[00:00] El increíble modelo Flux Kontext ahora está disponible para poder usarlo en local. Totalmente gratis. Un modelo increíble con capacidades increíbles. Capaz de cambiar estilos, mantener la consistencia del personaje, restaurar imágenes, dar color a imágenes antiguas, editar cualquier imagen y mucho, mucho más.

[00:22] Ahora sí, la revolución del modelo más innovador y potente en local. Flux.1 Kontext. Hola y bienvenidos a un nuevo vídeo. Los checkpoints de Flux Kontext requieren mucha memoria gráfica. Para reducir el consumo de VRAM utilizaremos los checkpoints del tipo GGUF.

[00:45] Descargaremos el checkpoint Q2 para usarlo en GPUs con sólo 6 GB de VRAM. Usaremos Q8 si tenéis 14 o más. El checkpoint Q6 funciona con 12 GB de VRAM. Deberéis probar que checkpoints se ajustan mejor a la cantidad de memoria gráfica de vuestra GPU.

[01:06] Y una vez descargados los checkpoints lo moveréis a la carpeta Models\Diffusion_Models, como podéis ver en pantalla. Descargaremos los dos text encoders, el modelo Clip_L y el modelo T5 en la versión FP8 Scaled. Una vez descargados los moveremos a la carpeta Models\Text_Encoders.

[01:30] Descargaremos también el modelo VAE llamado AE.Safetensors y lo copiaremos dentro de la carpeta Models\VAE. Por último descargaremos el LoRA Hyper flux LoRA con el que podremos generar imágenes utilizando muchos menos pasos.

[01:49] Este modelo lo moveremos a la carpeta Models\LoRAs. Lo siguiente que debéis hacer es actualizar a la última versión la herramienta ComfyUI. En la versión portable podemos actualizarlo entrando en la carpeta Update y haciendo doble clic sobre la opción Update ComfyUI.

[02:10] Si esto no os funciona deberéis entonces hacer doble clic sobre Update ComfyUI and Python Dependencies. Arrancaremos ComfyUI haciendo doble clic sobre Run NVIDIA GPU. Para usarlo con Kontext es bastante mejor que la versión Fast FP16.

[02:31] Entrando en el Manager podemos confirmar si estamos actualizados a la última versión. Descargamos también el fichero que contiene el workflow y lo arrastramos dentro de la zona de trabajo de ComfyUI. Cerramos la ventana que nos muestran los nodos faltantes, nos vamos al Manager y pulsamos sobre el botón Install Missing Custom Nodes.

[02:58] Y pulsamos sobre el botón Install de cada uno de los nodos faltantes. Y repetimos el procedimiento como ya hemos hecho muchas veces tal y como se ve en pantalla. Pulsamos sobre el botón Restart y esperamos a que se terminen de instalar todos los componentes hasta que nos pida la confirmación para refrescar nuestro navegador.

[03:24] Si no aparecen nodos en color rojo ya estaremos listos para trabajar en local con Flux 1 Kontext. Seleccionaremos el checkpoint más apropiado para nuestra memoria gráfica. El Q6 suele funcionar bien con 12GB de VRAM y el Q2 será por lo tanto el checkpoint que menos consuma.

[03:44] Seleccionamos el VAE, seleccionamos el modelo Clip-L y el modelo T5 y seleccionamos también el LoRA Hyper flux. Necesitaremos también seleccionar una imagen como referencia e introducir un prompt. Debemos seleccionar la resolución de salida y lo haremos en este nodo.

[04:14] Podemos utilizar cualquier resolución ya sea la de la imagen o cualquier otra medida siempre que tengamos suficiente memoria gráfica. Tampoco será necesario introducir una resolución que sea proporcional a la imagen original.

[04:30] Para probar que todo esté bien pulsamos sobre el botón RUN y esperamos. Y quiero aprovechar para dar las gracias a todos los miembros de este canal. Si queréis apoyarme también os podéis hacer miembros. En este nodo podemos ver el resultado y en el nodo colindante podemos ver una comparativa.

[04:54] Los métodos de aceleración LoRA y Teacache pueden afectar ligeramente a la calidad de la imagen final. Además estos dos nodos aumentan el consumo de memoria gráfica así que si tenéis 6 o 8GB de VRAM será mejor que lo desactivéis.

[05:11] Lo podemos hacer pulsando sobre ellos con botón derecho del ratón y seleccionando la opción Bypass. Si en el flujo de trabajo no usáis el LoRA de aceleración debéis ajustar el número de pasos a un mínimo de 20. Y cuando usemos el LoRA ajustaremos el número de pasos entre 8 y 12. Yo personalmente os recomiendo 12.

[05:36] La configuración que consume menos memoria gráfica será la siguiente. Desactivamos el LoRA y el nodo TeaCache. Seleccionamos el checkpoint Q2 y usaremos una resolución baja. Para este ejemplo voy a usar 512x512. Al no usar el LoRA Hyper flux ajustaremos el número de pasos a 20.

[06:06] Y podéis ver que el consumo de memoria gráfica es poco más de 6GB. En realidad es un poco más bajo ya que yo tengo abiertos los programas de captura, edición, etc. Pero la clave para que Flux Kontext funcione perfectamente está en saber escribir los prompts adecuados.

[06:24] Debemos usar prompts simples y directos como por ejemplo: Cambia el color del vestido a verde. Y este es el resultado. Pero Flux Kontext no es solamente capaz de editar imágenes. También puede mantener la consistencia del personaje colocándolo en otro lugar, realizando otra opción, cambiando el estilo y un largo etc.

[06:49] Os dejo un enlace a una página web donde viene mucha información sobre cómo utilizar bien los prompts. En la página web de Black Forest Lab también tenéis muchos ejemplos. Podemos utilizar dos imágenes de referencia activando el segundo nodo pulsando sobre este interruptor.

[07:05] De esta forma podemos cargar dos imágenes. Pero será necesario conectar este nodo al conector LATENT del nodo KSampler. Cuando utilicemos dos imágenes la resolución de la imagen final la introduciremos en este nodo. El primer tamaño asignado será ignorado.

[07:24] Cuando volvamos a utilizar una sola imagen recordad que debéis unir el conector LATENT del nodo VAE ENCODE al conector LATENT del nodo KSampler. Debemos introducir un prompt muy específico indicando el elemento de la primera imagen, cómo interactúa con el elemento de la segunda imagen, en qué lugar está, qué acciones están realizando, en qué estilo queremos la imagen, etc.

[07:51] Este método de prompt es bastante complejo y es posible que no os salga a la primera. Y aquí podéis ver el resultado. En definitiva, Flux Kontext es un modelo increíble con impresionantes características que consigue consistencias superiores al procesador de ControlNet IP-Adapter.

[08:10] Capaz de cambiar textos y carteles, mantener coherencia espacial, restaurar imágenes antiguas y casi todo lo que se te ocurra. Sin duda estamos de enhorabuena. Y eso es todo en este vídeo. Gracias por haberlo visto. Dale like si te ha gustado, suscríbete que todavía es gratis, comparte, comenta, pero sobre todo, sé feliz.

[08:35] Nos vemos muy pronto, bye bye.

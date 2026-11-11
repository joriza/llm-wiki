# Resumen: Tu API NO debe enviar archivos — el error que satura tu servidor

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-10-03-tu-api-no-debe-enviar-archivos-el-error-que-satura-tu-servidor.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=i-22HBTvnoA — TheDebugDuck, 2026-10-03 (17:28).
- **Nota**: fuente 17/20 del lote informatica-teoria; primer video del canal TheDebugDuck en la wiki. Consolidación (2026-11-11): [[urls-firmadas]] (página de concepto a partir de esta fuente y de la anatomía de la URL de Cognix).

## El problema: la API como intermediaria de cada byte

Escenario típico: el frontend pide un archivo a la API; la API lo busca en el almacenamiento de objetos (S3, Azure Blob, MinIO) y se lo devuelve al navegador. Simple, pero al crecer la aplicación, con cientos o miles de descargas simultáneas, la API empieza a consumir memoria, conexiones, CPU y ancho de banda. Lo curioso: la lógica de negocio funciona perfecta y las consultas a la base toman 20 ms — pero el servidor sufre, porque **la aplicación se volvió la intermediaria de cada byte** que sale del sistema. Con un archivo de 50 MB hay dos conexiones con la aplicación en el medio (da igual el stack: Node, Python, PHP, Go, .NET, Java); el servidor mantiene la operación abierta mientras viajan los bytes, y con 500 o 5.000 descargas simultáneas dedica recursos a mover archivos en vez de a lo que realmente necesita el backend. Además se paga doble salida de tráfico (del storage a la app y de la app a internet). Síntoma en producción: base de datos tranquila, CPU no al 100 %, pero el endpoint de descargas con latencias enormes — «estás empujando demasiados bytes por el lugar equivocado».

## Los arreglos rápidos que no sirven

- **Bucket público**: funciona técnicamente, pero el acceso deja de depender de la aplicación — la verificación de permisos ya no importa; la URL puede terminar en un email, un log o un ticket. Un nombre de archivo difícil de adivinar no hace privado un recurso público: solo lo hace más difícil de encontrar.
- **Entregar credenciales del storage al frontend**: peor aún — «las credenciales que llegan al navegador dejan de ser secretas».

## La solución: signed URLs

El backend sigue **decidiendo** si el usuario tiene permiso, pero en vez de descargar el archivo genera un **permiso temporal** para ese archivo (p. ej. *GET documents/2026/invoice-abc.pdf válido 5 minutos*), que se convierte en una **signed URL**. El navegador recibe esa URL y descarga directamente del storage. La API ya no transporta los megabytes: solo tomó la decisión. La URL puede ser enorme y llena de parámetros; lo que importa es lo que representa: **un permiso limitado en tiempo y alcance** — no es una contraseña, no es acceso permanente al bucket, y el navegador nunca conoce las credenciales reales. Es la diferencia que separa dos cosas que muchas aplicaciones mezclan: **quién puede acceder al archivo y quién transporta los bytes**.

Flujo: el usuario se autentica como siempre (sesión, JWT, OAuth), pide la descarga; el backend verifica que el documento pertenezca a ese usuario/empresa y cumpla las reglas de negocio; si todo está bien genera la signed URL de corta duración y responde algo como `{url, expiresAt}`. El concepto es igual en S3, Azure Blob, Google Cloud Storage o storage propio.

## También en sentido inverso: la subida

Subir un PDF de 200 MB vía la API significa que el archivo ocupa memoria, disco temporal y un hilo del servidor durante toda la subida. Alternativa: el backend genera un **permiso de escritura temporal** (un solo path, tamaño máximo, minutos de validez); el cliente sube directo al storage; luego avisa «listo» y comienza el procesamiento (verificar tamaño, *magic bytes*, antivirus, formato, metadata, mover a ubicación final). «Una cosa es autorizar una subida y otra muy distinta tener que transportar 200 MB cada vez».

## El patrón en cualquier tecnología

El mismo código inofensivo se ve en todos los stacks: streaming desde S3 en Express, FastAPI/Django en Python, enviar el archivo desde el controller en PHP, copiar el stream al ResponseWriter en Go, InputStreamResource en un controller Spring. Compila, pasa los tests con un archivo chico, y nadie cuestiona la solución. La pregunta siempre es la misma: **¿realmente necesito que mi aplicación transporte este archivo?** Si no, el endpoint devuelve un JSON con URL de descarga y expiración — cambio pequeño pero arquitectónicamente importante: la API deja de actuar como file server y vuelve a ser el componente que decide si la operación está permitida.

## Seguridad de las signed URLs

- Una signed URL **sigue siendo un permiso**: si dura 7 días, es un permiso válido por 7 días; si alguien la copia y la comparte mientras está activa, funciona para otra persona. La firma no sabe quién usa el link: solo verifica que la URL no fue alterada y no expiró. Por eso el **tiempo importa** (5 minutos para descarga única; una hora puede ser razonable en otros escenarios; no hay número mágico — depende de cuánto tarda la descarga, lo sensible del documento y si el usuario puede pedir un link nuevo).
- **Qué firmás también importa**: permitir leer un archivo no es lo mismo que leer un directorio entero o permitir subir cualquier cosa. Política lo más específica posible: **un objeto, una operación, una ventana de tiempo, y nada más**.
- **Cuidado con los logs**: loguear la URL completa en cada request puede guardar en tus propios sistemas un permiso temporal de acceso al archivo — exactamente lo contrario de lo buscado.

## Cuándo SÍ pasar archivos por el backend

Si hay que procesar el contenido (magic bytes, antivirus, convertir imagen, generar PDF, marca de agua, reporte dinámico con datos que no están en storage), tiene sentido que un componente lea el archivo — pero aun así se pueden separar responsabilidades: un endpoint **autoriza**, el storage **recibe**, y un **worker** procesa después con límites claros de tamaño y tiempo, reintentando sin bloquear a los usuarios. «Cada pieza hace una sola cosa».

## El costo oculto y los tres casos de cierre

El problema no se nota: con 100 usuarios y archivos de 2 MB todo funciona; llega la campaña, la nómina o el cierre fiscal, y aparecen timeouts, conexiones ocupadas, tráfico de salida disparado y cola de requests con la base tranquila. Y empieza la escalada equivocada: «subamos réplicas» (10 servidores haciendo el mismo trabajo innecesario y pagando 10 veces el mismo tráfico), subir timeout, subir memoria — infraestructura cada vez más grande para algo que se arregla **cambiando el flujo de descarga**.

Tres casos finales: (1) descargar una factura ya existente → verificar permisos y generar URL temporal de 5 minutos para ese archivo; (2) subir un archivo grande → permiso de escritura temporal, subida directa al storage y worker que procesa después; (3) reporte que aún no existe → generarlo en un proceso aparte, guardarlo en storage y entregar la signed URL cuando esté listo, con el usuario viendo un estado «procesando» y la API sin bloquearse. La tesis final: **no hacer que tu API transporte datos si no necesita hacerlo** — autorizar en el backend, firmar un permiso corto y específico, y dejar que el storage haga el trabajo pesado; el concepto no depende del lenguaje ni del proveedor.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen.
- Cruce temático con el mismo lote: tipos de API ([[resumen-every-type-of-api-simply-explained-in-9-minutes-codist]], Codist — REST como contrato request/response) y documentación de API ([[resumen-como-escribir-documentacion-util-y-cuando-no-hacerlo-torti-code]], Torti Code — la referencia describe qué recibe y devuelve cada operación).
- Autopromoción ligera de cierre (suscribirse/compartir) excluida. Sin patrocinios externos.

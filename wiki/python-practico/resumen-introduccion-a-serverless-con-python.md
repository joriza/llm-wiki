# Resumen: Introducción a Serverless con Python

- **Tipo**: resumen de fuente.
- **Dominio**: `python-practico/`.
- **Fuente original**: `raw/python-practico/2021-02-24-introduccion-a-serverless-con-python.md` (charla en español; transcripción literal por subtítulos automáticos, garbiñeos de ASR normalizados solo aquí: «ser verles/ser verla/serviles»→serverless, «efe 2»→EC2, «aws zelanda»→AWS Lambda, «azure función/igual función»→Azure Functions, «a ws 33 sn es el dínamo»→AWS (S3/SNS/DynamoDB), «país son»→Python, «no de js»→Node.js, «bouquet/banquete/elba que ticket»→bucket, «lnd/landas/lanzas»→lambda, «jam»→IAM, «gran barril»→(analogía pets vs cattle), «optin/vélez núcleo»→OpenFaaS/Kubeless, «apache open guys»→Apache OpenWhisk, «cloud formation»→CloudFormation) — https://www.youtube.com/watch?v=1bLWSsocsxI — Paradigma Digital (Román González), 2021-02-24 (40:55).

## De on-premise a cloud: mascotas vs ganado

Trayecto clásico: servidores **on-premise** (poca flexibilidad y escalabilidad, costes de mantenimiento, cuellos de botella; y el mito de que son más seguros — la mayoría de ciberataques van contra servidores propios) → modelos cloud: **IaaS** (EC2 de AWS), **PaaS** (Google App Engine) y **SaaS** (Dropbox, Gmail). La pirámide: la base da más control y escalabilidad con menos abstracción; arriba, máxima abstracción sin control [02:31-05:48]. La analogía «mascotas vs ganado»: los servidores tradicionales se cuidan individualmente (nombres, dramas cuando se enferman); en cloud son reemplazables e idénticos, y se escala horizontalmente añadiendo más [05:48-07:21].

## Qué es serverless (FaaS)

«Sin servidor» es marketing: ningún servidor desaparece. El nombre honesto es **Function as a Service**: ejecución basada en **eventos**, en **contenedores efímeros y sin estado** creados al dispararse el evento; el estado se delega en servicios gestionados. Se sitúa entre PaaS y SaaS en la pirámide: solo se gestiona la función [07:21-08:22]. **Ventajas**: se paga por uso, cero mantenimiento de servidores, escalado fácil y alta disponibilidad, y productividad (el desarrollador solo hace la funcionalidad — que por ser función debe ser acotada) [08:22-08:50]. **Inconvenientes**: **lock-in** por proveedor (dificultad de migrar, entornos y librerías limitados), **cold start** (levantar el contenedor al recibir el evento), testeo end-to-end más difícil y **tiempo máximo de ejecución** acotado (AWS llegó a 900 s; las funciones deberían durar lo mínimo igualmente) [08:50-10:24].

## Casos de uso y servicios

Casos: APIs y proxies de APIs de terceros, procesamiento de datos por eventos (fichero subido a un bucket dispara la función), chatbots e interfaces de voz, y tareas programadas (el cron de siempre convertido en funciones) [10:24-11:47]. Servicios: **AWS Lambda**, **Azure Functions**, **Google Cloud Functions** — el canal no ve grandes diferencias; elegir por plataforma donde ya trabajes y por límites concretos (p. ej. el tiempo máximo de AWS). Alternativas open source (OpenFaaS, Kubeless, Apache OpenWhisk) mencionadas sin experiencia del ponente [11:47-13:34].

## Serverless Framework

Herramienta open source para desarrollar y desplegar funciones en varios clouds, **agnóstica de proveedor** (mitiga el lock-in), multi-lenguaje (Python, Java, Node.js, PHP), con infraestructura como código, plugins (JavaScript), y documentación destacada como muy buena. Instalación vía npm (requiere Node.js) y asistente `serverless` interactivo [13:34-16:50]. Pieza central: el archivo **`serverless.yml`** — servicio, variables, proveedor (región, runtime, memoria), **funciones** con su evento disparador (HTTP, schedule, S3, SNS) configurable por función, plugins (necesarios aparte para Azure/GCP) y **recursos** de infraestructura (p. ej. tabla DynamoDB declarada como código) [16:50-19:05]. Comandos: empaquetar (`serverless package` → .zip útil incluso si el despliegue va por otra vía), desplegar, invocar (local o remoto), info y **remove** (borra todos los componentes creados). Lo más engorroso según el ponente: **credenciales** — AWS/GCP con CLIs relativamente directo; Azure con sesiones que caducan y login continuo [19:05-20:49].

## Demo en tres proveedores

- **GCP**: template `google-python`; despliegue verbose (crea paquete en Cloud Storage y la función), invocación desde consola, URL pública solo si se dan permisos (peligro para producción), y borrado limpio con `remove` [20:49-28:13].
- **Azure**: proyecto equivalente con dos funciones HTTP con parámetro; bloqueado en la demo por credenciales/variables de entorno caducadas — ilustra el punto anterior [29:30-31:40].
- **AWS** (ejemplo más completo): función **schedule** (cada 10 min) que descarga datos con `requests` y los guarda en **S3**; el framework crea bucket, políticas, plantilla **CloudFormation**, roles IAM, la lambda y el evento CloudWatch — ahí se ve la «magia»: conviene conocer los servicios de cada proveedor para saber qué está creando [31:40-35:52]. Q&A: invocación local para desarrollo sin gastar recursos; capa gratuita amplia pero facturación rápida en cargas altas (lambdas por segundo); el framework puede cubrir solo parte del ciclo (p. ej. empaquetar) dejando el despliegue a Terraform u otra vía [36:34-40:55].

## Dónde encaja en la wiki

Complementa la visión de automatización programada de [[automatizacion-con-python]] (las tareas con Schedule en un VPS tienen aquí su variante serverless con schedule events) y la exposición de scripts como APIs de [[fastapi]] (variante sin servidor gestionado). El caso del bucket S3 con fichero entrante es el patrón reactivo que contrasta con el pipeline ETL local de [[automatizacion-con-python]].

---

**Ver también**: [[automatizacion-con-python]] · [[fastapi]] · [[mapa-del-ecosistema-python]].

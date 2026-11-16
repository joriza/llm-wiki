# WL-334 — Serverless: cuándo te conviene y cuándo sale más caro

- **Fuente original**: `raw/general/2026-09-23-serverless-cuando-te-conviene-y-cuando-sale-mas-caro.md` ([vídeo](https://www.youtube.com/watch?v=KkG4fSMRmXE))
- **Canal**: Torti Code
- **Publicado**: 2026-09-22 · **Duración**: 12:49 · **Ingesta**: 2026-11-16 (tramo 51)
- **Tipo**: divulgación técnica educativa (1.ª fuente del tema por el canal)
- **Dominios destino propuestos (consolidación aplazada)**: general (arquitectura cloud/informática) o informatica-teoria

## Idea central

Explicación de serverless (FaaS) con una analogía sostenida de principio a fin — la **cocina oculta** (dark kitchen) que cobra por plato — cubriendo el ciclo completo: qué es, arranque en frío, escalado, concurrencia, apagado, cobro y cuándo conviene.

## Puntos clave

1. **El nombre engaña**: «sin servidores» significa sin servidores que administres tú; el proveedor (AWS Lambda, Google Cloud Run/Functions, Azure Functions) comparte servidores entre muchos clientes y tú entregas una función + memoria necesaria.
2. **Anatomía de una función**: dos partes — código de *inicio* (p. ej. crear el cliente de BD; corre una vez por entorno, «la llave colgada en el gancho») y código que *atiende cada petición*. Demostrado con el emulador oficial de Lambda en JS/Python/Go: tres peticiones seguidas imprimen el inicio una sola vez. Mover la conexión a la parte de abajo desperdicia el arranque caliente.
3. **Arranque en frío**: si no hay entorno libre, la plataforma crea uno (descarga código, arranca entorno, ejecuta inicio) — en AWS, <100 ms a >1 s, en <1 % de las ejecuciones, más común en funciones de poco tráfico. Tras terminar, el entorno queda *congelado* (reutilizable, «caliente»); AWS no publica cuánto espera, y recicla entornos cada pocas horas aunque reciban peticiones.
4. **Escalado y concurrencia**: cada entorno atiende una petición a la vez (regla de Lambda; Cloud Run admite varias por entorno — «plancha ancha»); lo que cuenta es la concurrencia (cuántas coinciden, no cuántas llegan por segundo: 5.000 req/s de 20 ms ≈ 100 entornos). Tope inicial de 1.000 ejecuciones simultáneas por cuenta/región; el excedente se rechaza.
5. **Escala a cero y cobro**: sin trabajo, la plataforma apaga los entornos; en Lambda se paga por petición y por tiempo de ejecución (ms × memoria), incluido el inicio en frío; la BD y demás servicios externos se cobran aparte.
6. **Tres límites**: (a) lo que deja en memoria/archivos temporales no está garantizado ni compartido entre entornos — «atajo, nunca almacenamiento» (el contador va en la BD); (b) tiempo máximo por ejecución — 15 min en Lambda; un video de 2 h se divide o va a otro servicio; (c) evitar el arranque en frío cuesta — concurrencia aprovisionada (AWS) / mínimo de instancias (Cloud Run).
7. **Cuándo conviene / no**: sí — tráfico que sube y baja con ratos en cero, tareas de segundos/minutos (acortador, formulario, webhook, procesar imagen al subirse). No — tráfico alto y constante (pagar por plato sale más caro que la cocina alquilada), procesos que exceden el límite, y latencia de primera respuesta crítica (exige entornos siempre listos, pagados).
8. **Honestidad del formato**: la analogía se desmonta al final («en el sistema real abrir una estación tarda milisegundos»; «un pedido por estación es regla de Lambda, no de todas») — el video se cierra con preguntas de autoevaluación y gancho a un video de caché.

## Notas de fuente

- Sin patrocinios visibles. Cifras de AWS presentadas como tales (rango de cold start, tope de concurrencia) — atribución razonable, aunque sin enlace a documentación en la transcripción.
- ASR garbiñeado normalizado solo aquí: «AW SS/AW SS Lambda» → **AWS**; «Cloud RAM Functions» → **Cloud Run**; «webuk» → **webhook**; «Torty/Torticode» → Torti Code.

## Cruces

- Cluster informática/backend: [[resumen-WL252-transacciones-sql-desde-cero-torti-code]] (mismo canal, 2.ª fuente — entidad Torti Code candidata), [[bases-de-datos]], [[tocode]] (formación backend en español).
- historia-informatica tangencial — evolución del modelo de despliegue (servidor propio → serverless).
- Cruce conceptual con la caché (video hermano anunciado al cierre).

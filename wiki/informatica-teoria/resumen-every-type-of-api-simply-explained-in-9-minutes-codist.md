# Resumen: Every Type of API Simply Explained in 9 Minutes!

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2025-09-27-every-type-of-api-simply-explained-in-9-minutes.md` (inglés, subtítulos automáticos, literal) — https://www.youtube.com/watch?v=pBASqUbZgkY — Codist, 2025-09-27 (09:53).
- **Nota**: fuente 2/10 del lote informatica-teoria (worker 1). Sin enlaces cruzados todavía (consolidación aplazada).

## REST: el mozo entre tu app y el servidor

Una **REST API** funciona como el mozo de un restaurante: le decís qué querés, va a la cocina y te lo trae — exactamente eso entre tu app y el servidor. REST (*representational state transfer*) es simplemente una forma directa de que las aplicaciones se hablen por internet, reutilizando los métodos HTTP de siempre: **GET** para leer («mostrame todos los usuarios»), **POST** para crear, **PUT** para actualizar y **DELETE** para eliminar. Pedir `api.miapp.com/users/1` devuelve el perfil en JSON limpio. Dos propiedades clave: es **stateless** (cada petición es independiente; el servidor no recuerda las anteriores, así que puede atender millones de usuarios sin confundirse) y **independiente de plataforma** (la app de iPhone, la de Android, la web y hasta la heladera inteligente hablan con la misma API). Pero REST no es suficientemente formal para transferencias bancarias y sistemas empresariales — ahí entra SOAP.

## SOAP: el contrato formal

**SOAP** (*simple object access protocol*) es una de las formas más viejas y formales de comunicación entre sistemas: si REST es una llamada informal, SOAP es un **contrato de negocio**. Cada mensaje sigue reglas estrictas y viaja envuelto en XML con estructura fija — un *envelope* que envuelve todo, un *header* con metadatos y un *body* con la petición o respuesta. Su fortaleza: es **independiente del protocolo** (funciona sobre HTTP/HTTPS pero también sobre SMTP, TCP u otros) y trae estándares incorporados de manejo de errores, seguridad y soporte de transacciones. Por eso bancos, proveedores de salud y sistemas de gobierno siguen confiando en él: cuando transferís dinero entre bancos, hay buenas chances de que una API SOAP asegure por detrás que la transacción sea segura y correcta. No es tan liviano ni flexible como REST, pero para entrega garantizada y confiabilidad enterprise es la elección.

## gRPC: el coche de Fórmula 1

Detrás de gRPC está la idea de **RPC** (*remote procedure call*): en vez de mandar datos crudos por la red, tu app llama directamente una función en otra máquina como si fuera local — escribís `get_user(123)` y por detrás el pedido viaja, se ejecuta en el servidor y vuelve el resultado. Los RPC tempranos (XML-RPC, JSON-RPC) eran lentos, pesados en texto y no escalaban para las apps masivas en tiempo real. **gRPC** es la versión moderna de Google: usa **protocol buffers (protobuf)**, que comprime los datos en formato binario compacto y rapidísimo de procesar (comozippear los archivos en vez de mandar una carta a mano), y aprovecha **HTTP/2** para hacer múltiples peticiones simultáneas sobre una sola conexión. Soporta cuatro patrones: request/response simple, *server streaming*, *client streaming* y *streaming bidireccional*. Las ganancias suelen ser de **7 a 10 veces más rápido que REST**; por eso Netflix, Uber y las plataformas de trading de alta frecuencia lo usan como arma secreta.

## GraphQL: pedí exactamente lo que necesitás

**GraphQL** (*graph query language*), creado por Facebook, ataca el problema central de REST: a veces recibís **demasiados datos** (*overfetching* — pedías nombre y email y te llega el perfil completo con direcciones, preferencias e historial de compras, desperdiciando ancho de banda) y a veces **insuficientes** (*underfetching* — hay que hacer varias llamadas para juntar todo). GraphQL lo invierte: escribís una única consulta pidiendo exactamente lo que querés («dame solo username y email, salteá el resto») — un endpoint, una petición, los datos justos. Su función estrella: las **suscripciones en tiempo real** (la app escucha actualizaciones vivas automáticamente), más autodocumentación con un playground incorporado para probar queries al instante. Toda la API de GitHub está construida sobre GraphQL; Shopify y Pinterest lo usan en producción. Ideal cuando los usuarios están en móviles y el frontend necesita flexibilidad para pedir exactamente lo que necesita.

## Webhooks: la API invertida

Con las APIs tradicionales, tu app es alguien que va una y otra vez a revisar el buzón: caminar hasta él, abrirlo, ver que está vacío, volver. Eso es *polling*. Los **webhooks** invierten el modelo: en vez de que vos preguntes, **la API te llama a vos** — como el cartero que toca el timbre justo cuando llega una carta. Funciona así: configurás una **URL de callback** en tu aplicación, y cuando ocurre un evento (un pago nuevo, un push de código, un envío de formulario), el servicio manda un POST con los detalles directamente a esa URL. Sin polling ni peticiones desperdiciadas, solo actualizaciones en tiempo real. Por eso se llaman **«reverse APIs»**: los datos vienen persiguiendo a tu app. GitHub dispara webhooks con cada push, Shopify cuando se hace un pedido, y los bots de Slack y Discord dependen de ellos para comandos y reacciones en vivo.

## WebSockets: la línea telefónica permanente

Los **WebSockets** son como abrir una línea de teléfono permanente entre tu app y el servidor: establecida la conexión, ambos lados pueden hablar en cualquier momento, al instante, sin esperar a que el cliente pregunte. Empieza con un **handshake**: el navegador manda una petición HTTP especial pidiendo «mejoremos esto a una conexión websocket», el servidor acepta, y desde ahí el canal queda abierto. Comunicación bidireccional persistente, perfecta para tiempo real: precio de acciones, mensaje de chat o evento de juego, entregados en el momento en que ocurren — y el servidor puede empujar datos sin que el cliente inicie nada (a diferencia del HTTP normal). Además es flexible: texto plano, JSON estructurado o binario (imágenes, vídeos).

## WebRTC: de navegador a navegador, sin servidor

**WebRTC** (*web real-time communication*) no es una sola API sino un framework completo que habilita comunicación **peer-to-peer directa** entre navegadores o apps móviles — la magia es que los datos no tienen que pasar por un servidor central. Por eso alimenta videollamadas, compartir pantalla, juegos online y transferencias instantáneas de archivos, todo dentro del navegador sin software extra. En tu última llamada de Zoom o Google Meet, el audio y el vídeo iban directo de tu dispositivo al del otro — sin un servidor en el medio almacenando o procesando la conversación. Por detrás, WebRTC resuelve los detalles sucios de redes: **NAT traversal** (para que los dispositivos se hablen entre redes distintas), negociación automática de los mejores formatos de audio y vídeo, y **streaming con bit rate adaptativo** (ajusta la calidad según tu velocidad de conexión). Resultado: sin cuellos de botella de servidor, comunicación más rápida y experiencias en tiempo real más fluidas.

## Notas sobre la fuente

- Raw en inglés (subtítulos automáticos); resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen. «api.mmyapp.com» = api.myapp.com; «XML, RPC» = XML-RPC; «birectional» = bidirectional; «higherformance» = high-performance.
- Sin patrocinios ni autopromoción identificables.

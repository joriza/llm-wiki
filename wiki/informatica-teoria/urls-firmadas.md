# Signed URLs (URLs firmadas)

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria/`.
- **Actualizado**: 2026-11-11 (consolidación del lote informatica-teoria).
- **Fuentes**: [[resumen-tu-api-no-debe-enviar-archivos-thedebugduck]] (desarrollo principal) · [[resumen-url-vs-uri-cognix]] (anatomía de la URL: scheme, authority, path, query, fragment).

## El problema: la API como intermediaria de cada byte

Flujo típico: el frontend pide un archivo, la API lo busca en el almacenamiento de objetos (S3, Azure Blob, MinIO) y lo devuelve. Funciona, pero con cientos o miles de descargas simultáneas la aplicación se vuelve la **intermediaria de cada byte**: memoria, conexiones, CPU y doble salida de tráfico (storage → API → internet). Síntoma de producción: base de datos tranquila y CPU sin saturar, pero el endpoint de descargas con latencias enormes.

Arreglos descartados: el **bucket público** (el acceso deja de depender de la app; una URL difícil de adivinar no hace privado un recurso) y **entregar credenciales del storage al frontend** («las credenciales que llegan al navegador dejan de ser secretas»).

## La solución: separar quién decide de quién transporta

El backend sigue **decidiendo** si el usuario tiene permiso, pero en vez de descargar el archivo genera un **permiso temporal y acotado** — por ejemplo `GET documents/2026/invoice-abc.pdf, válido 5 minutos` — convertido en una **signed URL**. El navegador descarga **directo del storage**; la API solo tomó la decisión. La URL puede ser enorme y llena de **parámetros de query** (ver anatomía abajo); lo que importa es lo que representa: un permiso limitado en tiempo y alcance — no es una contraseña ni acceso permanente, y el navegador nunca ve las credenciales reales.

Flujo: el usuario se autentica como siempre (sesión, JWT, OAuth) → el backend verifica pertenencia y reglas de negocio → genera la signed URL de corta duración → responde `{url, expiresAt}`. El concepto es idéntico en S3, Azure Blob, Google Cloud Storage o storage propio. También funciona **en sentido inverso para subidas**: permiso de **escritura** temporal (un path, tamaño máximo, minutos de validez), el cliente sube directo, y luego un **worker** procesa (magic bytes, antivirus, metadata) sin bloquear a nadie.

## Anatomía de la URL (por qué la firma cabe en la query)

Una URI completa tiene **scheme** (protocolo), **authority** (servidor), **path** (recurso), **query** (parámetros tras el `?`) y **fragment** (sección tras el `#`) ([[resumen-url-vs-uri-cognix]]). La firma de una signed URL vive justamente en los **query params** (identidad del objeto, expiración, firma); toda la cadena, al indicar cómo localizar el recurso vía HTTPS, es una URL. La referencia relativa — un path corto que el navegador completa con la página actual — es el caso en que una URI no incluye ubicación de red completa.

## Seguridad: la URL firmada sigue siendo un permiso

- **El tiempo importa**: si dura 7 días, es un permiso válido 7 días; si alguien la copia y la comparte mientras está activa, funciona para otro. La firma verifica que la URL no fue alterada y no expiró — **no sabe quién la usa**. No hay número mágico: depende de cuánto tarda la descarga, lo sensible del documento y si se puede pedir uno nuevo (5 minutos para una descarga única es razonable).
- **Qué se firma importa**: política lo más específica posible — **un objeto, una operación, una ventana de tiempo, y nada más** (leer un archivo ≠ leer un directorio o subir cualquier cosa).
- **Cuidado con los logs**: loguear la URL completa guarda en tus propios sistemas un permiso temporal de acceso al archivo.

## Cuándo sí pasar por el backend y el patrón anti-escalada

Si hay que procesar el contenido (antivirus, conversión, marca de agua, reporte con datos que no están en storage), un componente debe leer el archivo — pero separando responsabilidades: un endpoint **autoriza**, el storage **recibe**, un worker **procesa** con límites. El costo oculto empuja la escalada equivocada (más réplicas, más timeout, más memoria = 10 servidores pagando 10 veces el mismo tráfico); lo que se arregla es **el flujo de descarga**. Tesis: **no hacer que la API transporte datos si no los necesita** — autorizar en el backend, firmar corto y específico, dejar que el storage haga el trabajo pesado.

## Véase también

- [[resumen-como-escribir-documentacion-util-y-cuando-no-hacerlo-torti-code]] — la referencia de API documenta qué recibe y devuelve cada operación (incluidos los endpoints que devuelven `{url, expiresAt}`).

# Resumen: Qué es DNS y cómo funciona — laboratorio con Wireshark y dig

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-08-20-que-es-dns-y-como-funciona-laboratorio-con-wireshark-y-dig.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=5KazKLtnf-I — Pedro Lino Cáceres, 2026-08-20 (09:59).
- **Nota**: fuente 11/20 del lote informatica-teoria. Sin enlaces cruzados todavía (consolidación aplazada).

## El problema: las computadoras hablan en IP, los humanos en nombres

Se escribe youtube.com en el navegador y la página carga en menos de un segundo — pero el navegador no conoce la dirección IP de youtube.com, y las computadoras se comunican por direcciones IP, no por nombres de dominio. Esa resolución es el trabajo del protocolo DNS: el video explica qué es, cómo funciona y lo demuestra con una captura en Wireshark y la utilidad dig.

## Qué es DNS

**DNS** (*Domain Name System*) es un **protocolo de capa de aplicación** encargado de convertir nombres de dominio en direcciones IP. La analogía: al llamar a una persona casi nadie recuerda su número de teléfono; se busca el nombre en la **agenda** y la agenda devuelve el número. DNS hace lo mismo: recibe el nombre de dominio — fácil de recordar para los seres humanos — y devuelve la IP, el «número de teléfono» que las computadoras necesitan para comunicarse.

## El resolver y la caché

El navegador primero valida si tiene la respuesta **en caché**. Si no la tiene, le pregunta a su **servidor DNS** mediante una **consulta recursiva**: «preguntá a quien tengas que preguntar; todo lo que espero es que me des la respuesta» — la IP de youtube.com. Ese servidor DNS, también conocido como **resolver** o *recursive resolver*, es quien hace las indagaciones necesarias, devuelve la IP y **guarda la información en caché**, para responder directamente la próxima vez sin repetir todo el proceso de consulta.

## Transporte: puerto 53, UDP con excepciones

DNS trabaja en el **puerto 53** y usa principalmente **UDP** como protocolo de transporte. Hay casos donde necesita **TCP**: las **transferencias de zona** (*zone transfers*) y los mensajes generalmente mayores a **512 bytes** o no aptos para UDP.

## Un sistema distribuido y jerárquico

No existe un único servidor que conozca todos los nombres e IPs del mundo: DNS es un **sistema (o base de datos) distribuido** globalmente y además **jerárquico**: raíz (*root*) → dominios de nivel superior (*top-level domains*) → servidores autoritativos. La raíz se compone de **13 servidores lógicos** (*root servers*) identificados de la **A a la M**, administrados por **12 organizaciones**. Punto clave: gracias a la tecnología **Anycast**, cada root server lógico tiene **una sola IP**, pero está distribuido en distintas instancias físicas — el root server **M** puede tener cualquier cantidad de servidores físicos respondiendo a esa misma IP.

## La resolución recursiva paso a paso

1. La PC pregunta a su servidor DNS por la IP de youtube.com (consulta recursiva).
2. Sin caché, la primera movimiento del resolver es ir, jerárquicamente, al **root server**: no conoce la IP de youtube.com, pero sabe quién administra el dominio **.com** — los *generic top-level domains* — y devuelve uno consultable: «son los que saben todo lo que empieza con .com».
3. El resolver consulta ese **gTLD**: tampoco conoce la IP, pero sabe quiénes son los **servidores autoritativos de youtube.com** y devuelve sus IPs.
4. El resolver consulta al **autoritativo** — la autoridad de esa zona — que sí conoce las IPs de youtube.com y devuelve la IP: **142.251.218.46**.
5. El resolver notifica a la PC: esa es la IP para comunicarse con youtube.com. Así funciona DNS, explicado de forma simple.

## Laboratorio 1: la consulta vista en Wireshark

Topología en **GNS3**: un router Cisco con acceso a internet. Primero se valida la configuración: `show interface brief exclude unassigned` (IP configurada: **10.136**) y `show hosts` (DNS configurado: **10.2**). Se inicia la captura en Wireshark filtrada por DNS y se ejecuta `ping youtube.com` con dos paquetes.

- En la **consulta** se ve: transporte **UDP puerto 53**, mensaje tipo *query* con la marca *recursion desired*, y la pregunta — el nombre a resolver: youtube.com, registro tipo **A**.
- En la **respuesta** (desde 10.2): el **transaction ID** que identifica que corresponde a la misma consulta, la marca de *response*, el aviso de que el servidor puede hacer consultas recursivas y la respuesta a nivel de *answer*: youtube.com, registro A, IP **142.251.218.46**, con su **Time to Live**. Con `show hosts` se comprueba que el nombre quedó guardado en caché (la entrada anterior ya había expirado).

Luego se cambia el servidor DNS: `no ip name-server` (quita el **192.168.10.2**) y `ip name-server 8.8.8.8`. El ping a youtube.com resuelve ahora a una dirección **217.8**; `show hosts` muestra la nueva entrada en caché, y en la captura se ve la consulta y la respuesta dirigidas a **8.8.8.8**, con la IP y el TTL en la respuesta. En este caso el TTL es de **5 minutos** — la entrada permanece más tiempo en caché.

## Laboratorio 2: la utilidad dig

- `dig @8.8.8.8 youtube.com A`: devuelve la dirección **IPv4** (registro A).
- La misma consulta desde el DNS de **Cloudflare (1.1.1.1)** devuelve otra IP: no tiene por qué ser la misma — de hecho no lo es — porque youtube.com tiene **muchas direcciones IP**.
- Registro **AAAA** (*Quad A*): devuelve la dirección **IPv6**.
- Registro **NS**: muestra los servidores autoritativos de youtube.com.
- `dig +trace youtube.com`: reproduce prácticamente toda la ruta que sigue una consulta DNS — primero aparecen los **13 root servers**; desde la raíz se recibe quiénes son los servidores de dominio de nivel superior genéricos; desde el gTLD **K** se reciben los autoritativos; y el que responde es **ns3.google.com**, que entrega la IP de youtube.com. Verificación final: al hacer `ping ns3.google.com`, la respuesta viene de **216.239.36.10**, uno de los autoritativos.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen.
- La metadata del raw registra el idioma «en (subtítulos automáticos (yt-dlp, auto))».
- Sin patrocinios ni autopromoción identificables en la transcripción.

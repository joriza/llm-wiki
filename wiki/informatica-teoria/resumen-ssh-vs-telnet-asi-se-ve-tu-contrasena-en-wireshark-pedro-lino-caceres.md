# Resumen: SSH vs Telnet — así se ve tu contraseña en Wireshark (y cómo protegerla)

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-07-27-ssh-vs-telnet-asi-se-ve-tu-contrasena-en-wireshark-y-como-protegerla.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=NqMFuDbk-Lg — Pedro Lino Cáceres, 2026-07-27 (10:41).
- **Nota**: fuente 10/10 del lote informatica-teoria (worker 1). Sin enlaces cruzados todavía (consolidación aplazada).

## El problema del acceso remoto en texto plano

Imaginá que tenés que configurar un router ubicado en otra ciudad o país y no podés ir físicamente al sitio: eso es el **acceso remoto** — algo que en redes se hace desde hace mucho con un protocolo llamado **Telnet**. El problema de Telnet es que **toda la información viaja en texto plano**: los usuarios, la contraseña y los comandos que ejecutás. Si un atacante intercepta ese tráfico, tiene acceso a todo. Ahí entra **SSH** para protegerla: la información pasa a viajar **encriptada**.

## Qué es SSH

**SSH** (*Secure Shell*) es un **protocolo de capa de aplicación** que ayuda a administrar dispositivos remotamente — pueden ser servidores, routers o switches. Aclaración previa: la **shell** es una interfaz de línea de comandos del sistema operativo — esa terminal negra que a veces se ve en Linux, el CMD de Windows, PowerShell, o la interfaz CLI de un router Cisco. SSH funciona con **modelo cliente-servidor**: necesitás un cliente (en Windows puede ser **PuTTY**; en Linux o Mac ya viene dentro del sistema operativo) que se conecta a un **servidor** — un router con el servicio SSH activo, un servidor Linux o Windows, o un switch Cisco. SSH usa **TCP** como protocolo de transporte y el **puerto 22** por defecto. Para qué sirve: ejecutar comandos y administrar el dispositivo a distancia — configurar un router o switch Cisco desde tu casa o tu estación de trabajo, sin ir físicamente al data center.

## Cómo garantiza la seguridad

SSH parte de la premisa de que el canal **es inseguro** — esa red por la que viaja la comunicación desde tu laptop al dispositivo. Antes de enviar información, **establece una conexión segura**: comparte y acuerda los parámetros criptográficos que usará para luego encriptar toda la información. Una vez establecida esa comunicación segura, todo viaja encriptado — si un atacante intercepta el tráfico, lo que probablemente ve es **gibberish** (ilegible). La analogía del canal: **Telnet es como enviar una carta en un sobre transparente** — cualquiera que intercepte la comunicación lee todo lo que dice la carta; **SSH la manda en un sobre sellado y escrita en un idioma que solo vos y el destinatario entienden** — quien la intercepte no entiende nada.

## Autenticación: credenciales vs. claves SSH

**Por credenciales** (usuario y contraseña): lo normal — `ssh pedro@<ip_del_dispositivo>` te pide la contraseña para entrar y configurar. Pero hay otra forma, mucho más segura y **de hecho la recomendada: las claves SSH**. Se generan una **clave pública y una privada**; la pública se configura en el destino (en un router Cisco se le carga; en un servidor se le envía), y **la privada nunca se comparte** — la guardás vos. Cuando el dispositivo va a autenticar, se genera una especie de **desafío (challenge)** — pensalo como una firma: puede corroborar que fue firmada con tu clave privada, garantizando que quien se autentica sos vos. La ventaja: **no compartís usuario y contraseña**, evitando ataques de fuerza bruta o cualquier cosa que pueda comprometer tus credenciales.

## Los tres casos de uso

(1) **Administración remota** de dispositivos (el que venimos viendo). (2) **Transferencia segura de archivos**, con protocolos como **SCP** y **SFTP**. (3) **SSH tunneling** (también llamado *port forwarding*): enviar otro tráfico por un canal seguro — por ejemplo, conectarse a una base de datos que está detrás de una red privada.

## La demostración en Wireshark: ver la contraseña de Telnet

El laboratorio: topología simple con dos routers (**R1** y **R2**) y una máquina virtual Ubuntu para las pruebas SSH. **Caso Telnet**: se inicia una captura de Wireshark filtrando por el protocolo Telnet; desde R1 (10.10.1) se conecta a R2 (10.10.2), se ingresa el usuario **Cisco** y su contraseña, y se ejecuta `show ip interface brief`. Al hacer **follow TCP stream** en Wireshark, ahí está todo: el usuario, **la contraseña visible**, el comando ejecutado y hasta la salida del comando. Ese es el problema de Telnet — cualquiera en el camino ve lo mismo que vos.

**Caso SSH con credenciales**: la misma prueba pero conectando por SSH (`ssh -l Cisco 10.10.2`). En la captura se ve todo el proceso SSH — la negociación para asegurar el canal, el intercambio de parámetros criptográficos — y luego la información encriptada. Al hacer follow TCP stream esta vez: **ilegible, puro gibberish**. Quien intercepte la comunicación no accede a nada de lo enviado — información esencialmente confidencial. **Esa es la razón por la que se debe usar SSH y no Telnet en la red.**

## El fingerprint y la conexión sin contraseña

Desde el servidor Ubuntu se conecta por SSH al router 2 (192.168.10.133). Primera conexión: SSH pide **verificar el fingerprint** porque no reconoce el dispositivo — solo pasa la primera vez; si sabés que te conectás a ese router, aceptás y lo agrega «permanentemente». Las siguientes conexiones ya no preguntan el fingerprint, solo la contraseña. **Ventaja adicional sobre Telnet**: si alguien suplantara esa IP con un fingerprint distinto, **SSH te alertaría**. Y la parte final: con el usuario **Pedro** (que tiene la clave pública cargada en el router), la conexión al mismo IP es **automática — sin usar credenciales**: entró directo y ejecutó `show ip interface brief`. Las claves SSH son el método de autenticación recomendado: generar el par clave pública/privada es un procedimiento simple; al servidor se le envía la pública.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen.
- Autopromoción: anuncio de un video futuro paso a paso sobre configuración de claves SSH en Cisco — excluida de la síntesis.
- Sin patrocinios externos identificables.

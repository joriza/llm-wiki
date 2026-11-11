# Resumen: DHCP Explicado — por qué tu IP no es tuya (DORA, Lease y Wireshark)

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-08-02-dhcp-explicado-por-que-tu-ip-no-es-tuya-dora-lease-y-wireshark.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=KmyzWUk_LdA — Pedro Lino Cáceres, 2026-08-02 (09:45).
- **Nota**: fuente 13/20 del lote informatica-teoria; continúa la serie de protocolos del mismo canal (SSH vs Telnet 10/20, DNS 11/20, ARP 12/20). Sin enlaces cruzados todavía (consolidación aplazada).

## El problema que resuelve DHCP

Escenario de apertura: como administrador de red de una empresa se abre una sucursal nueva con más de 100 dispositivos. Configurar IP, gateway y DNS uno por uno, manualmente, es lento y propenso a errores: puede haber IPs duplicadas (que causan problemas) o un gateway mal configurado que deje media empresa sin internet. Ese es exactamente el problema que viene a resolver **DHCP**: asignar direcciones IP **dinámicamente**.

## Qué es DHCP

**DHCP** (*Dynamic Host Configuration Protocol*) es un protocolo de red que trabaja en la **capa de aplicación** y cuya función es asignar automáticamente una dirección IP junto con parámetros (gateway, DNS, nombre de dominio) desde un **pool** (conjunto) de direcciones disponibles.

La analogía del hotel: al llegar te asignan una habitación disponible del pool por un tiempo determinado; al terminar el check-out devuelves la habitación y queda disponible para otro huésped. Con DHCP es igual: el servidor asigna una IP a un dispositivo por un período, y cuando el dispositivo ya no la necesita la devuelve para que otro la use.

## Modelo cliente-servidor y puertos

- DHCP funciona con modelo **cliente-servidor**: del lado izquierdo los dispositivos que piden IP, del derecho el servidor.
- Transporte: **UDP**, con un puerto por rol: **68** para el cliente y **67** para el servidor (verificado luego en la captura de Wireshark).

## El proceso DORA (4 mensajes)

Cliente y servidor intercambian cuatro mensajes, cuyas iniciales forman **DORA**:

1. **Discover** — lo envía el cliente en **broadcast**: «¿hay algún servidor que pueda darme una IP?».
2. **Offer** — responde el servidor: «acá está esta IP con estos parámetros». Puede enviarse como **unicast o broadcast** según un flag (ver laboratorio); es una confusión frecuente creer que siempre es una u otra — el RFC permite ambas formas.
3. **Request** — el cliente confirma: «me gusta esa IP». Se envía **de nuevo en broadcast** para que, si hay varios servidores DHCP en la red, cada uno sepa a quién se le aceptó la oferta.
4. **Acknowledge (ACK)** — el servidor confirma: «listo, estos son tus parámetros», y registra la asignación en su pool.

## Lease time

El **lease** es el tiempo durante el cual el servidor asigna la IP (como la estadía del huésped en el hotel). Si el dispositivo sigue conectado a mitad del plazo, generalmente pide renovar («todavía necesito la IP»); cuando ya no la necesita, o se desconecta y el tiempo vence, la IP vuelve al pool. Así se evita quedarse sin direcciones.

## Laboratorio: servidor DHCP en router Cisco + captura en Wireshark

Topología: a la izquierda, un router (R1) y una PC que tomarán IP por DHCP; a la derecha, un router configurado como servidor DHCP.

**Configuración del servidor** (router Cisco):
- Interfaz Gigabit con la primera IP utilizable (**10.10.10.1/24**, transcrito «10.1/24» en el ASR) y `no shutdown`.
- `ip dhcp excluded-address` para **excluir las primeras 9 IPs**: el pool debe empezar a asignar desde la 10 en adelante.
- `ip dhcp pool LAN`: red **10.10.100.0/24** a asignar (transcripción con valores garbiñados), *default-router* (gateway) 10.10.10.1, DNS **1.1.1.1**, *domain-name* del canal (pedrolinoaceres.com) y **lease de 0 días 4 horas**.
- Validación: `show ip interface brief` y `show run section dhcp`.

**Captura 1 — R1 como cliente DHCP** (`ip address dhcp` en su interfaz, luego `no shutdown`): aparecen los cuatro mensajes DORA. El **Discover** es broadcast a nivel de capa 2 y capa 3; puertos UDP 68 → 67. El **flag de broadcast** viene en **1**: el servidor debe responder el Offer como **broadcast**, no como unicast — y así ocurre en la respuesta. En el Offer se ven todos los valores: la IP ofrecida (que respeta la exclusión de las primeras 9), máscara, DNS 1.1.1.1, dominio y lease de 4 horas.

**Captura 2 — PC1 como cliente**: mismo intercambio DORA, pero el **flag de broadcast está en unicast**: el Offer se envía dirigido a la IP que se está asignando (10.10.10.11 según el ASR, transcrito «10.10.11»). Es decir: la PC sí puede recibir un mensaje unicast aunque todavía no tenga su IP. El Request vuelve como broadcast porque puede haber más de un servidor en la red y el cliente debe indicar de qué servidor acepta la IP.

**Verificación final**: R1 queda con su IP (10.10.x.x), y `show ip route` muestra la ruta por el gateway 10.10.10.1 (transcrito «10 101»).

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen. El ASR pierde puntos y dígitos de IPs en varios pasajes (p. ej. «10.1/24», «10.10.11», «inocaceres.com»); los valores legibles se citaron tal cual.
- Sin patrocinios ni autopromoción identificables (el cierre del video es breve y despedida).

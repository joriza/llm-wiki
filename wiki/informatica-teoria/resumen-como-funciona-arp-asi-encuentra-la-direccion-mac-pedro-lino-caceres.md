# Resumen: Cómo funciona ARP — así encuentra la dirección MAC

- **Tipo**: resumen de fuente.
- **Dominio**: `informatica-teoria/`.
- **Fuente original**: `raw/informatica-teoria/2026-08-25-como-funciona-arp-asi-encuentra-la-direccion-mac.md` (video en español; transcripción literal en inglés por subtítulos automáticos traducidos) — https://www.youtube.com/watch?v=-_iOilVB3gg — Pedro Lino Cáceres, 2026-08-25 (09:09).
- **Nota**: fuente 12/20 del lote informatica-teoria; continúa la serie de protocolos del mismo canal (SSH vs Telnet 10/20, DNS 11/20). Consolidación (2026-11-11): [[pedro-lino-caceres]].

## El problema: se tiene la IP, falta la MAC

La analogía de apertura: una repartidora llega a una oficina con comida para José, pero no sabe quién es; pregunta en voz alta — todos la escuchan — y solo José levanta la mano: «soy yo». En una red pasa algo muy similar: la computadora puede conocer la **dirección IP** del dispositivo con el que quiere comunicarse, pero necesita descubrir algo más: la **dirección física o MAC**. Ese es exactamente el problema que resuelve **ARP**. El video explica qué es, cómo funciona y lo captura en Wireshark para ver el header y sus campos.

## Qué es ARP

**ARP** (*Address Resolution Protocol*) es un protocolo que corre **directamente sobre Ethernet** y cuya función principal es **mapear dinámicamente** la dirección IP (dirección lógica) a la dirección física (MAC) del dispositivo: para comunicarse con otro dispositivo de la red se necesitan, además de la IP, la MAC.

## El flujo: request en broadcast, reply dirigido

Ejemplo: PC1 quiere comunicarse con PC3 (IP **10.0.0.3**) pero no tiene su MAC.

1. PC1 revisa primero su **caché ARP**; si no tiene el dato, envía un mensaje **ARP request**, que es un mensaje de **broadcast**: sale con dirección MAC de destino de broadcast hacia el switch, que lo reenvía **por todos los puertos** (llega a PC2 y a PC3).
2. El mensaje equivale a decir: «¿quién tiene la IP 10.0.0.3? Por favor, díganme su MAC».
3. PC2 recibe el mensaje, ve que no es para él y **lo descarta**; PC3, al ver que el mensaje sí va dirigido a él, responde con un **ARP reply**, dirigido específicamente a PC1 (vía el switch).
4. PC1 toma nota en su **tabla ARP**: la dirección lógica 10.0.0.3 se mapea a la MAC de PC3 (simplificada como «CC» en el ejemplo; una MAC real tiene **48 bits** y la asigna el fabricante). Desde ahí, todo tráfico futuro a esa IP ya sabe qué MAC usar.

## Alcance: IPv4; IPv6 usa Neighbor Discovery

- ARP trabaja con **IPv4**. En IPv6 el equivalente es el **Neighbor Discovery Protocol**, que — a diferencia de IPv4 — **no usa broadcast sino multicast**, porque IPv6 no trabaja con broadcast.
- En el frame de Ethernet, el **EtherType** que identifica tráfico ARP es **0806** (el de IPv4 es 0x0800).

## Laboratorio, parte 1: el header de ARP campo por campo

Topología: el router **R2** tiene su giga0/0 en la red **10.10.10.0/24**, con PC1 (.1) y PC2 (.2) conectadas a un switch; el gateway de las PCs es la giga0/0 de R2, la **.254**. A la derecha hay otra red distinta — la transcripción la registra como «19216810/24» (el ASR pierde los puntos) — con PC3 en la .3. Dos redes directamente conectadas al router, sin rutas estáticas.

Se captura en Wireshark con filtro ARP. **Ping desde PC2 (10.10.10.2) a PC1 (10.10.10.1)**, con la tabla ARP inicialmente vacía:

- El primer mensaje es el **ARP request en broadcast**: capa 2 con dirección de destino de broadcast (va a todos los dispositivos del segmento).
- **EtherType**: ARP = **0x0806** (IPv4: 0x0800).
- **Campos del header ARP**: *hardware type* — Ethernet, **1**; *protocol type* — IPv4 (0x800/0800); *hardware size* — **6 bytes = 48 bits** (la MAC); *protocol size* — **4 bytes = 32 bits** (la IPv4); *operation* — **request = 1** (el *reply* es el número **2**); *sender MAC address* — la MAC de PC2 (no conoce la de PC1, por eso envía el ARP: sabe la IP, no la MAC).
- La **respuesta** de PC1 llega con el mismo header, mismo valores de campos, pero con *operation* = **2** (*reply*): ahí PC2 toma nota de la MAC. Al ejecutar ARP se ve la caché recién poblada: la IP **10.10.10.1** corresponde a la MAC de PC1 (terminada en **68.00**). Nota del video: cada sistema operativo puede almacenar la caché con duraciones distintas (la entrada se muestra «casi expirando»).

## Parte 2: destino fuera de la red → ARP al gateway

**Ping desde PC2 a PC3** (fuera de su red): el ARP request ya no pregunta por PC3 sino por el **gateway** — «¿quién tiene **10.10.10.254**?». Motivo: al ver que la IP de destino está fuera de su red, PC2 debe enviar el paquete primero al gateway. La respuesta le entrega la MAC del router R2 por su giga0/0 (terminada en **0008**), que queda en caché asociada a 10.10.10.254: todo paquete destinado fuera de la red usará esa MAC como destino de capa 2.

Verificación final: al filtrar por **ICMP**, el ping de 10.10.10.2 hacia la IP de PC3 viaja con **MAC de destino 0008** — que no corresponde a PC3 sino a **10.10.10.254**: para salir de la red, el paquete va primero al gateway.

## Notas sobre la fuente

- Video original en español; transcripción del raw en inglés (subtítulos automáticos traducidos, literal). Resumen en español profesional.
- Transcripción con frases triplicadas (artefacto del ASR); normalizado en el resumen. El ASR pierde los puntos de las IPs en varios pasajes (p. ej. «19216810/24», «1010102»); los valores legibles se citaron tal cual.
- Autopromoción del canal: membresías «Road to CCNA» y «Advance to CCNP» para preparación de certificaciones CCNA/CCNP Enterprise — excluida de la síntesis.
- Sin patrocinios externos identificables.

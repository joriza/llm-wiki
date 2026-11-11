# Pedro Lino Cáceres

- **Tipo**: página de entidad (canal de YouTube).
- **Dominio**: `informatica-teoria/`.
- **Actualizado**: 2026-11-11 (consolidación del lote informatica-teoria).
- **Fuentes**: 4 resúmenes en el dominio (2026-07-27 a 2026-08-25).

## Identidad

Canal de divulgación de **redes y preparación de certificaciones Cisco** (menciona membresías «Road to CCNA» y «Advance to CCNP»; excluidas de la síntesis). Su formato distintivo: cada protocolo se explica primero con **una analogía cotidiana** (la agenda para DNS, el repartidor que pregunta en voz alta para ARP, el hotel para DHCP, la carta en sobre transparente para Telnet) y luego se **demuestra en laboratorio** — topologías en GNS3 con routers Cisco y capturas en **Wireshark**, mirando el header campo por campo.

## Temas recurrentes (serie de protocolos)

1. **SSH vs Telnet** ([[resumen-ssh-vs-telnet-asi-se-ve-tu-contrasena-en-wireshark-pedro-lino-caceres]], 2026-07-27): el texto plano se ve con follow TCP stream; SSH encripta, autentica por claves pública/privada con challenge-firma y valida el fingerprint anti-spoofing.
2. **DNS** ([[resumen-que-es-dns-y-como-funciona-laboratorio-con-wireshark-y-dig-pedro-lino-caceres]], 2026-08-20): resolver y caché, puerto 53 UDP con excepciones TCP, sistema distribuido y jerárquico (13 root servers A–M, Anycast); laboratorio con Wireshark y `dig` (A, AAAA, NS, `+trace`).
3. **ARP** ([[resumen-como-funciona-arp-asi-encuentra-la-direccion-mac-pedro-lino-caceres]], 2026-08-25): mapeo IP→MAC con request en broadcast y reply dirigido, tabla/caché ARP, y el caso clave de destino fuera de la red: ARP pregunta por el **gateway**.
4. **DHCP** ([[resumen-dhcp-explicado-por-que-tu-ip-no-es-tuya-pedro-lino-caceres]], 2026-08-02): asignación dinámica con el proceso DORA y el lease → [[dora-y-lease-dhcp]]; laboratorio con servidor DHCP en router Cisco (pool, exclusión de IPs, lease de 4 h).

## Constantes metodológicas

- **Laboratorio verificable**: cada afirmación del protocolo se comprueba en la captura (puertos, flags de broadcast/unicast, EtherType, transaction ID, TTL).
- **Matices que deshacen confusiones frecuentes**: el Offer de DHCP puede ser unicast **o** broadcast según el flag (el RFC permite ambas); IPv6 no usa broadcast (Neighbor Discovery con multicast); DNS necesita TCP en transferencias de zona y mensajes >512 bytes.
- Los resúmenes documentan garbiñeos del ASR (pérdida de puntos en las IPs: «10.1/24», «19216810/24»), normalizados citando los valores legibles tal cual.

## Véase también

- [[dora-y-lease-dhcp]] — concepto consolidado a partir de su fuente DHCP.
- [[torti-code]] — el otro canal dominante del dominio, con enfoque de desarrollo de software.

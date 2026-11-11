# DORA y lease (DHCP)

- **Tipo**: página de concepto.
- **Dominio**: `informatica-teoria/`.
- **Actualizado**: 2026-11-11 (consolidación del lote informatica-teoria).
- **Fuentes**: [[resumen-dhcp-explicado-por-que-tu-ip-no-es-tuya-pedro-lino-caceres]] (fuente única del lote con desarrollo completo).

## El problema que resuelve DHCP

Configurar IP, gateway y DNS a mano en cada dispositivo de una red (100+ en una sucursal) es lento y propenso a errores: IPs duplicadas y gateways mal puestos dejan media empresa sin red. **DHCP** (*Dynamic Host Configuration Protocol*) asigna direcciones IP **dinámicamente** desde un **pool**, junto con gateway, DNS y nombre de dominio. Trabaja en la capa de aplicación sobre **UDP**, con puertos por rol: **68** (cliente) y **67** (servidor). La analogía del hotel: la habitación (IP) se asigna de un pool por un tiempo determinado y al hacer check-out vuelve a estar disponible.

## DORA: los cuatro mensajes

Las iniciales de los cuatro mensajes del intercambio cliente-servidor forman **DORA**:

1. **Discover** — el cliente pregunta en **broadcast**: «¿hay algún servidor que pueda darme una IP?». Es broadcast a nivel de capa 2 y de capa 3.
2. **Offer** — el servidor ofrece una IP con sus parámetros. Puede enviarse **unicast o broadcast** según el flag que trae el Discover: el RFC permite ambas formas, y el laboratorio lo demuestra — un router cliente con flag broadcast recibe el Offer en broadcast; una PC con flag unicast lo recibe dirigido a la IP que se le asigna, **aunque el cliente todavía no tenga IP**.
3. **Request** — el cliente confirma la oferta aceptada, **de nuevo en broadcast**: si hay varios servidores DHCP en la red, cada uno se entera de a quién se le aceptó su oferta (y libera la que reservó).
4. **Acknowledge (ACK)** — el servidor confirma los parámetros y registra la asignación en su pool.

En la configuración Cisco del laboratorio: `ip dhcp excluded-address` excluye las primeras IPs del rango, el pool define red, *default-router* (gateway), DNS y *domain-name*, y el lease con `lease 0 4` (0 días, 4 horas).

## El lease: la IP no es tuya

El **lease** es el tiempo durante el cual la IP está asignada (la estadía del huésped). A mitad del plazo, un dispositivo que sigue conectado pide **renovar**; cuando se desconecta o el tiempo vence, la IP **vuelve al pool** para otro dispositivo. Ese reciclado es lo que evita quedarse sin direcciones — y la razón del título de la fuente: tu IP es un préstamo temporal, no una propiedad.

## Puntos de verificación del laboratorio (Wireshark)

- Los cuatro mensajes DORA aparecen en la captura con UDP 68 → 67.
- El flag de broadcast decide la forma del Offer (1 → broadcast; 0 → unicast a la IP asignada).
- La IP ofrecida respeta la exclusión de las primeras 9; en el Offer viajan máscara, gateway, DNS, dominio y lease.
- Verificación final con `show ip interface brief` y `show ip route` (la ruta por el gateway asignado).

## Véase también

- [[pedro-lino-caceres]] — canal y fuente; su serie de protocolos completa el panorama (DNS, ARP, SSH).

# FAV-450 — Reemplaza Windows Active Directory con Samba 4 en Debian 13 (VM & Cloud Master)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=k8Dl9RVYNLA) — Canal **VM & Cloud Master**, publicado 2026-08-17, 19:38, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-samba4-active-directory-debian13.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## Active Directory libre: Samba 4 como controlador de dominio en Debian 13

Tutorial paso a paso para montar un controlador de dominio (DC) con Samba 4, sustituyendo las licencias de Windows Server:

1. **Requisitos previos** en el Debian 13: IP fija (`/etc/network/interfaces`), hostname con formato FQDN (`hostnamectl set-hostname dc1.lab.local`), `/etc/hosts` con resolución local, interna y pública apuntando al FQDN del DC.
2. **DNS con BIND9** (todo DC necesita DNS propio): script con parámetros ajustables — dominio, IP del servidor, prefijo de red, zona reversa (octetos invertidos + `in-addr.arpa`) y forwarders públicos (OpenDNS en el video). El error «failed to enable» de systemd al activar bind9 es ignorable si el servicio ya estaba activo; verificar con `systemctl status bind9`. Luego apuntar `/etc/resolv.conf` a `127.0.0.1` y probar con `dig @127.0.0.1 dc1.lab.local`.
3. **Paquetes**: `samba`, `winbind`, `krb5` (Kerberos), `acl` (listas de control) y `attr` (atributos del directorio).
4. **Provisionado del dominio**: eliminar el `smb.conf` predeterminado (no sirve) y generar la configuración con `samba-tool domain provision` — parámetros `--realm` (FQDN, en mayúsculas), `--domain`, `--server-role=dc`, `--dns-backend=BIND9_DLZ` y contraseña de administrador (mín. 8 caracteres con mayúscula, número y especial). Verificar que el forest quede poblado sin errores (si hay fallo, reiniciar).
5. **Kerberos y servicio**: copiar el `krb5.conf` generado por Samba a `/etc`; desenmascarar (`systemctl unmask samba-ad-dc`), enable y start.
6. **Verificación**: `kinit administrator@LAB.LOCAL` (dominio en mayúsculas), `klist` para ver los tickets, y registros DNS de servicios con `host -t` para kerberos/tcp y ldap/tcp — los dos registros críticos del DC.
7. **Recomendación final**: mínimo dos controladores de dominio (físico, VM o contenedor) — ventaja del enfoque open source.

## Valor

Guía operativa completa de infraestructura de red empresarial sin licencias; ASR con garbiñeos (bin9 por bind9, calist por klist, etc.) normalizados en este resumen.

## Cruces

- Clúster **redes/servidores**: complementa [[resumen-FAV-432-router-viejo-sin-internet-elmondigital]] (infraestructura de red casera) y el eje DNS (el DC exige DNS propio).
- Eje licenciamiento/software libre — cruza con el mantenimiento Windows del relevo 7 ([[resumen-FAV-443-liberar-espacio-disco-c-windows]] etc.) como alternativa al ecosistema Windows.

Actualización 2026-11-20 (consolidación T23): entidad [[debian]] creada por umbral (WL-708 + esta fuente).
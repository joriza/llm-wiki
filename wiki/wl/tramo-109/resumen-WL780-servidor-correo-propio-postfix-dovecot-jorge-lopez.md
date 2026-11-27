# WL-780 — ¡Adiós a Gmail! Crea tu PROPIO Servidor de Correo 100 % Privado en Minutos

- **Video**: https://www.youtube.com/watch?v=kpdkUq39MWQ
- **Canal**: Jorge López (×1)
- **Publicado**: 2026-04-13 · **Duración**: 06:33 · **Raw**: `raw/wl/tramo-109/2026-04-13-adios-a-gmail-crea-tu-propio-servidor-de-correo-100-privado-en-minutos.md`

## Síntesis

Tutorial de laboratorio (6:33) que levanta un servidor de correo minimalista desde la línea de comandos, con el objetivo declarado de desmitificar «qué pasa de verdad cuando le damos al botón de enviar»:

- **Pilar 1 — usuarios**: cada dirección de correo = una cuenta de sistema Linux (`adduser` crea el usuario con su home y contraseña); laboratorio de tres usuarios (profesor, alumno1, alumno2).
- **Pilar 2 — transporte**: **Postfix** como MTA («el cartero»); durante la instalación se elige rol «sitio de internet» (destino final, entrega directa en buzones locales); se muestra la correspondencia asistente ↔ `main.cf` (`myhostname`); buenas prácticas del propio video: backup del archivo de configuración con `cp` antes de editar, y `reload` en vez de `restart` para no interrumpir el servicio. Primer correo enviado en terminal (Ctrl+D); el buzón básico es un archivo MBOX en `/var/mail/`; verificación de ruta entre los tres usuarios.
- **Pilar 3 — acceso**: **Dovecot** («el fabricante de buzones con cerradura») — directiva `mail_location` apuntando a los buzones que Postfix deja; cliente gráfico Thunderbird conectado por **IMAP** (entrante) y **SMTP** (saliente); distinción correcta IMAP (centralizado en el servidor) vs. POP3 (descarga y borra). El sistema final soporta adjuntos, filtros y antispam del cliente estándar.

Cierre honesto: control y privacidad «increíbles» pero también la responsabilidad de mantenerlo seguro y funcionando — «¿merece la pena tomar ese control?». Alcance declarado: entorno de laboratorio interno; el video no entra en DNS MX/SPF/DKIM ni entrega hacia Internet (omisión notable respecto del título «adiós a Gmail», señalada).

## Evaluación

- Microlección correcta para entender la anatomía SMTP/IMAP (Postfix+Dovecot es el stack canónico); analogías cuidadas (cartero/buzón). Brecha título/contenido: el laboratorio es interno, sin la parte real de recibir correo de Gmail — típico gap del género «servidor propio en minutos», señalado.
- Garbiñeos ASR normalizados solo aquí: «Dofcot/Dof code/DOFC» = Dovecot, «ad user» = adduser, «doasir.com» = el dominio del laboratorio (ASR inconsistente), «barra mail barra» = /var/mail/, «UPT install» = apt install.

## Cableado

- [[self-hosting]] — par directo con WL-779 (migración Outlook→Linux: Thunderbird del lado cliente, este el lado servidor); hilo «correo soberano» WL-779+780 candidata para consolidación. Cruza WL-734/743 (home-lab) tangencialmente.

**Sin patrocinios.**

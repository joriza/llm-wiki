# WL-779 — ¿Miedo a perder tus correos? Así de fácil es migrar a Linux

- **Video**: https://www.youtube.com/watch?v=NOZeNY_2pnY
- **Canal**: Linux TakeAway (×1)
- **Publicado**: 2026-05-21 · **Duración**: 08:50 · **Raw**: `raw/wl/tramo-109/2026-05-21-miedo-a-perder-tus-correos-asi-de-facil-es-migrar-a-linux.md`

## Síntesis

Tutorial completo de migración Outlook → Linux con foco en el verdadero muro: el formato PST propietario («Microsoft no lo diseñó por casualidad, lo diseñó para que sea difícil sacar tus datos»). Marco narrativo: el caso del autónomo con 17 años de facturas y contratos que volvió a Windows «no por Linux, sino por su vida secuestrada en Outlook».

- **Diagnóstico previo**: tres tipos de cuenta cambian la migración — IMAP/Exchange (los correos viven en el servidor: basta configurar Thunderbird y sincronizar), POP3 (todo vive en el PST local: hay que convertir), e IMAP con archivos PST de archivo viejo (mezcla de ambas técnicas). Paso 0 no negociable: backup completo de la carpeta de Outlook a disco externo.
- **Exportación** (en Windows): PST completo con subcarpetas, contactos a CSV, calendario a ICS con rango completo.
- **Conversión en Linux**: Thunderbird + `readpst` (paquete `pst-utils` en Debian/Ubuntu/Mint, `libpst` en Fedora, pacman en Arch) con opciones `-o` (salida) y `-r` (preserva estructura) → formato **MBOX** estándar.
- **Importación**: complemento ImportExportTools NG de Thunderbird para los MBOX masivamente; CSV de contactos con mapeo de campos; ICS al calendario.
- **Verificación y seguro**: contar correos totales, abrir adjuntos; si hay errores, reparar el PST original con `scanpst` en Windows y re-exportar; **conservar el PST 6 meses** como red de seguridad. Todo el proceso es no destructivo y solo con software libre auditable.

Cierre ideológico: MBOX/ICS/CSV son formatos abiertos que te siguen a cualquier cliente (Evolution, KMail, Claws, Mutt) — «quien controla tu correo te controla»: el correo como columna vertebral de la identidad digital. Siguiente paso lógico que el canal deja abierto: el servidor de correo propio (cliente libre + cuenta ajena = Microsoft/Google siguen leyendo).

## Evaluación

- Tutorial técnico correcto y verificable (comandos exactos por familia de distro, herramientas estándar, estrategia de reversibilidad). El marco de «secuestro»/soberanía es retórico pero la base técnica es sólida; el lead magnet gratuito («kit de supervivencia digital», 6 herramientas) se declara como tal.
- Garbiñeos ASR normalizados solo aquí: «MB OX» = MBOX, «ReadPST» = readpst, «Open Suse» = openSUSE, «Pac-Man» = pacman, «ICS» correcto.

## Cableado

- [[self-hosting]] — la puerta de entrada natural al servidor de correo propio (que el propio video señala como siguiente paso; par directo con WL-780, índice 9); cruza con Thunderbird/formatos abiertos. El video cita Linux Mint como destino típico — cruce con WL-776 (historia de Mint).

**Sin patrocinios**; lead magnet propio declarado, sin venta dura.

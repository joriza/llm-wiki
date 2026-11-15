# Home Servers en 2025: Todo lo que tenes que saber para comenzar!

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=hwaho9SAMco)
- **Resumen de**: `raw/self-hosting/2025-04-28-home-servers-en-2025-todo-lo-que-tenes-que-saber-para-comenzar.md`
- **Canal**: Pocho Labs
- **Publicado**: 2025-04-28 · **Duración**: 12:07 · **Idioma**: español (rioplatense)
- **Dominio**: `self-hosting`

## Tesis

Introducción panorámica a los *home servers*: qué son, ventajas (almacenamiento centralizado, independencia de terceros, ahorro de suscripciones, privacidad), hardware de entrada en 2025 y una taxonomía de sistemas operativos por nivel de dificultad. El canal lo usa como base para una serie sobre aplicaciones autoalojadas.

## Ventajas que argumenta

- **Datos centralizados y soberanía**: fotos, documentos y videos en un solo lugar; sin internet siguen accesibles; se dejan de exponer datos a terceros (riesgo de brechas).
- **Ahorro**: reemplazos self-hosted de suscripciones — Nextcloud/ownCloud (drive), Immich (fotos), Bitwarden (gestor de contraseñas), VPN propia para redes inseguras o contenido regionalizado.
- **Laboratorio**: levantar webs, bases de datos y aplicaciones propias.

## Hardware recomendado (2025)

- Base funcional: i3 de 8.ª gen, 4–8 GB RAM, disco mecánico de 1 TB para datos + SSD para aplicaciones (el mecánico para apps es lento).
- Dimensionar según caso de uso: VPN/gestor de claves/web pide poco; servidor multimedia con transcode pide mucho más (soporte de códecs modernos para descargar la CPU).
- Opciones: Raspberry Pi 4/5, mini PC con N100, o mini PC usada con i3/i5 de 8.ª gen+ — reciclar componentes sobrantes de upgrades es la vía típica (su propio servidor salió de partes de su ex PC gamer).

## Taxonomía de sistemas operativos (por dificultad)

| Nivel | Opciones | Caracteres |
|---|---|---|
| **Fácil** | CasaOS, Cosmos Cloud, Umbrel | Panel web con catálogo de apps a un clic; instalación por script sobre Linux (CasaOS/Cosmos) o USB (Umbrel). No son NAS puros. CasaOS: full open source, de los creadores de ZimaBoard; Cosmos: gratis con funciones de pago; Umbrel: pensado para su hardware propio (funciones bloqueadas en otros equipos). |
| **Intermedio** | **Unraid** (el que usa el autor, lo recomienda) | Panel web robusto: contenedores + VMs completas; SO en pendrive (el sistema carga en RAM, no ocupa discos); comunidad y foro muy activos. |
| **Avanzado** | TrueNAS, OpenMediaVault, Proxmox | TrueNAS/OMV: NAS puros (compartir archivos, permisos, usuarios) con curva mayor. Proxmox: hipervisor "otra liga" — LXC + VMs, snapshots, backups, alta disponibilidad, clústeres; orientado a laboratorios robustos aislados. |

## Sistema de archivos de Unraid (lo diferencial)

No es un RAID tradicional (LimeTech, propietario): admite **discos de distinto tamaño** sin perder capacidad; cada archivo se guarda **completo en un disco** (no fragmentado → menos velocidad, más recuperabilidad); hasta 2 discos de paridad (recupera hasta 2 fallos; si fallan más, los discos sanos siguen legibles).

## Contras de Unraid y licencias (2025)

- Pago, sin versión gratuita: Starter 49 USD (6 discos), Unleash 109 USD (discos ilimitados), Lifetime 249 USD. Licencia perpetua, pero actualizaciones de por vida solo en Lifetime; en las demás, 36 USD/año (cambio reciente de licenciamiento).
- No ideal para altas velocidades de transferencia (flexibilidad > performance); para eso apunta a TrueNAS/OMV.

## Recomendación final

Empezar con CasaOS si se arranca de cero; Unraid si se busca NAS flexible con tolerancia a fallos + VMs y no molesta el pago; TrueNAS/Proxmox para soluciones robustas a costa de curva de aprendizaje.

## Cruces

- [[proxmox-homelab]]: coincide en caracterizar Proxmox como hipervisor LXC/VM con panel web, scripts y clúster; esta fuente lo ubica en el nivel "avanzado".
- Complementa a [[resumen-he-cancelado-servicios-streaming-servidor-domestico-gctech]] (CasaOS + Plex sobre hardware reciclado): mismo patrón de reciclaje de hardware y de panel simple como puerta de entrada. Conceptos transversales (Docker, NAS, self-hosting) se consolidan al cierre del tramo.

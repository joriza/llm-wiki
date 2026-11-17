# WL-566 — Abandono a Loc-OS??

- **Fuente original**: `raw/wl/tramo-90/2026-08-21-abandono-a-loc-os.md` ([Vídeo](https://www.youtube.com/watch?v=soZgHdTKAXI))
- **Canal**: Locos por Linux (Nico, mantenedor de LocOS y F Linux)
- **Publicado**: 2026-08-21 · **Duración**: 13:00
- **Dominio provisional**: informatica (Linux / mantenimiento de distros)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Video-respuesta del mantenedor de **LocOS** (distro argentina base Devuan/Debian, LXDE) a comentarios que acusan abandono:

- **«Novedades» ≠ actualizaciones**: LocOS, como Debian su base, no recibe «novedades» constantes por diseño; sí recibe actualizaciones (repo propio: LibreWolf empaquetado por él, Toasty Browser — su propio navegador para «tostadoras»: GTK3+PulseAudio en versión LocOS, GTK2+Alsa en F Linux, ahora también 64 bits).
- **Kernel**: respondió a «kernel 179 desactualizado» — la 6.1.183 compilada días atrás (182, 181, 180 antes; se salta versiones por tiempo); nadie está obligado al kernel de LocOS: está el de Debian en los repos, o compílate el tuyo.
- **Quién paga**: servidores de Hostinger (patrocinio), dominio propio de su bolsillo — «no somos empleados de nadie»; está solo manteniendo la distro; admite que estuvo desanimado por este tipo de reclamos.
- **La respuesta filosófica (lo más valioso)**: «en software libre, si no te gusta, forkealo» — él mismo lo hizo: no le gustó el kernel de Tiny Core 17 → creó **F Linux** (fork ya semi-independiente, con repositorio propio y mejoras manuales); «si yo pude, cualquiera puede: solo hace falta una compu con internet».
- **Diagnóstico honesto del ecosistema**: LocOS está «sólido, no precisa nada más» (todo Debian disponible); F Linux/TinyCore es donde hay por hacer (repositorio con programas desactualizados/faltantes) — por eso se ve más actividad ahí; la versión 32 bits de LocOS «ya no tiene sentido» desde que existe F Linux (él mismo no la usa; su Acer Aspire One corre F Linux).

## Señales de triage

- **1.ª mano del mantenedor**: datos de infraestructura y compilaciones verificables en sus repos; tono bronco pero con información real de mantenimiento (carga de un proyecto solo, economía de distros gratis).
- Escala muy menor (distro de nicho); el valor es el relato de mantenimiento y la ética del fork, no los datos técnicos.
- ASR: «Devoan» por Devuan, «Felinus/F Linux» por Fe Linux, «nabuleti» — normalizado solo aquí; raw intacto. Patrocinio Hostinger declarado (contexto, no bloque promocional).

## Cruces

- **informatica / [[self-hosting]] / [[historia-de-la-tecnologia]]**: economía del software gratis («siempre alguien paga las cuentas») ↔ WL-556 (proyectos personales), WL-364 (autohospedaje); «forkéalo» como ethos del software libre ↔ [[historia-de-la-tecnologia]] (WL-538 X11→Wayland como migración institucional).
- Toasty Browser para hardware viejo ↔ hilo «software para tostadoras» (eco [[kit-usb-portable]], WL-475 archivo-del-futuro: mantener vivas máquinas viejas).
- Locos por Linux entidad candidata (múltiples distros propias: LocOS, F Linux, Toasty Browser — 1.ª fuente, texto plano).

## Veredicto de triage

Útil menor: respuesta de mantenedor con datos reales de infraestructura y la mejor formulación del episodio («ethos del fork») + panorama honesto de dónde está el trabajo real (TinyCore/F Linux vs Debian-solid). Consolidación diferida (L12): informatica/self-hosting, Locos por Linux entidad candidata, enlazar con F Linux/Toasty si hay 2.ª fuente.

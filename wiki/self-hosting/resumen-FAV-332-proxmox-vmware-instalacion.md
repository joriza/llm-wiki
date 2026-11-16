# FAV-332 — Instalación de Proxmox v7 en VMware Workstation 16 Pro

- **Origen**: «Instalación de Proxmox v7 en VMWARE Workstation 16 PRO - PASO A PASO» — No Solo Hacking — `https://www.youtube.com/watch?v=qaWpaNX_rL8` (19:12, español, subtítulos automáticos; transcripción en `raw/self-hosting/raw-qaWpaNX_rL8.md`)
- **Fecha de ingesta**: 2026-11-15
- **Dominio**: `general/` (virtualización/homelab; clúster Proxmox con [[resumen-FAV-329-proxmox-post-pve-install]], [[resumen-FAV-330-contenedores-lxc-proxmox]] y [[resumen-FAV-331-proxmoxve-community-scripts]])

## Qué es

Primer vídeo del canal **No Solo Hacking** (Carlos) sobre Proxmox VE: instalación paso a paso, primero virtualizada en VMware Workstation 16 Pro (grabable), con indicaciones de qué cambia en máquina física. La motivación es aprender virtualización sin hardware caro: el autor propone mini-PCs de segunda mano (~50 €) y laboratorios de 3 nodos, y usa la VM como demostración de lo mismo que haría en físico. Nota: el bookmark anota una playlist ajena (`list=`), que se ignora — es un video suelto (regla S4). El subtítulo automático confunde «Proxmox» con «próximo/Próxmo», y VMware vSphere/esxi con «xy/spears/bien web» — normalizado solo aquí.

## Pasos de la instalación

### Obtención de la ISO
- Desde proxmox.com → Virtualization → descargar la imagen ISO de Proxmox VE (7.2-1 en el vídeo). También existen productos hermanos: servidor de backup (Proxmox Backup Server) y gateway de correo.
- En máquina física: grabar la ISO en USB con Rufus u otro y arrancar desde USB como método de arranque primario [07:31].

### Creación de la VM (VMware Workstation 16 Pro)
- Asistente «nueva máquina virtual» → instalar desde la ISO descargada; tipo «Linux → Otro Linux» [06:54].
- Recursos: 2 vCPU, **mínimo 4 GB de RAM (él asigna 8)**; disco de 20 GB sería suficiente, él da 300 GB por el laboratorio posterior [08:44].
- Red en **modo puente (bridged)**: la VM recibe IP directa del DHCP del laboratorio [09:19].
- Crucial: habilitar **virtualización anidada** (Virtualize Intel VT-x/EPT) en procesadores; sin ella la virtualización dentro de la VM no funciona [10:00].

### Asistente de Proxmox
- EULA → disco destino → país/zona horaria/distribución de teclado (el suyo irlandés ≈ UK; consejo: EEUU para teclado español) → contraseña root + email (no tiene que ser válido) [12:26].
- Hostname FQDN con dominio `.local` (pv01); la IP la propone el DHCP del laboratorio, editable a estática [13:49].
- Resumen y «Install»; reinicio automático al terminar (~el 99% es hacer el sistema arrancable) [15:07].

### Primer acceso
- Acceso web a `https://<ip>:8006` (puerto 8006); el certificado TLS es **autofirmado**, hay que aceptar el aviso del navegador [16:25].
- Login root + contraseña; aviso permanente de «no subscription» que no impide el uso: crear clusters, migrar máquinas entre nodos, etc. [17:46].

## Ideas transversales

1. Es la base del clúster Proxmox de la wiki: tras instalar, el post-install de repos/actualizaciones está en [[resumen-FAV-329-proxmox-post-pve-install]]; las apps del homelab (LXC) en [[resumen-FAV-330-contenedores-lxc-proxmox]] se despliegan con los scripts de [[resumen-FAV-331-proxmoxve-community-scripts]].
2. Dos caminos equivalentes: VM virtualizada (ideal para aprender/capturar pantalla) vs mini-PC físico barato; los pasos del asistente son idénticos salvo la preparación de la ISO en USB y la virtualización anidada.
3. Vídeo de 2022 (Proxmox 7): la interfaz y el asistente siguen siendo recognoscibles en las versiones actuales, pero los requisitos y versiones concretos citados son de esa época.

Concepto: [[proxmox-homelab]].

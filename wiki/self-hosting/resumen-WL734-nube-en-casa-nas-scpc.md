# WL-734 — Tu propia NUBE en casa: Adiós Google Drive, Dropbox e iCloud (SCPC Informática)

- **Fuente original**: `raw/self-hosting/2026-11-14-tu-propia-nube-en-casa-adios-google-drive-dropbox-e-icloud.md`
- **Dominio definitivo**: `self-hosting` (consolidación T25, tramo 105)
- **Video**: https://www.youtube.com/watch?v=WyqST9B0xMU
- **Canal**: SCPC Informática (1.ª fuente; guia técnica de hardware/servidores en español, humor constante) · **Publicado**: 2026-11-14 · **Duración**: 28:13 · **Idioma**: es (ASR; garbiñeos normalizados solo aquí: «Lockstor» = Lockestor/ASUSTOR, «Sustor» = Asustor, «NASES» = NASes, «Note» = Node)

## Síntesis

Guía completa y bien estructurada para montar una NAS como sustituto de suscripciones en la nube — el «alquiler permanente de tus propios archivos» como tesis de fondo: «la nube es una forma profesional de decir guardar tus archivos en el ordenador de alguien que no conoces». Punto técnico fuerte del video: **RAID no es un backup** (protege del fallo de disco, no del borrado, la corrupción ni el robo — «los ninjas»), con la estrategia 3-2-1 bien explicada (3 copias, 2 formatos, 1 offsite).

- **Marco de decisión honesto, no maximalista**: discos mecánicos vs. SSD (precio por TB, SSD como caché para VM/BD/edición de vídeo), discos «NAS» vs. convencionales según carga de trabajo (24/7 multiusuario sí; uso doméstico no obliga), consumo eléctrico permanente, y la pregunta central «¿cuál necesito realmente?» — «si comprás una NAS de 2.000 € para usarla como disco duro de red, tenés un disco duro de red de 2.000 €». El chiste recurrente («Adobe no es una suscripción, es una hipoteca a 30 años») resume el motivo.
- **Demo de punta a punta con Asustor Lockestor 4** (4 bahías + 4 NVMe, N5105, 2×5 GbE, ~35 W, 17 dB): instalación de discos, ADM, acceso SMB desde Windows, creación de carpetas compartidas con permisos y cifrado, acceso remoto vía EZ Connect (sin abrir puertos, sin VPN — con nota honesta: menos control que una VPN; Tailscale disponible en App Central), Defender con lista negra de IPs, snapshots (explicación correcta: solo cambios incrementales, restauración ante ransomware), backups a otra NAS/externo.
- **Primer contenedor Docker sin dolor**: Jellyfin instalado desde App Central (con el típico debugging real de puerto/cambio a HTTP narrado con humor), bibliotecas de películas y series — «ya no dependemos de Netflix». El «cómo conseguir tus ISOs de Linux» queda, con guiño, para el espectador.
- **Transparencia inusual**: el equipo fue enviado por Asustor pero declara «no está patrocinado», crítica las bandejas con tornillos («estamos en el 2026»), el puerto HTTPS que traba la config, y aclara que el enlace NO es de afiliado sin comisión — señal positiva de honestidad frente al patrón review-de-cobro.
- Cierre equilibrado: no cancelar todo mañana — «hay servicios que merecen la pena y otros que no podemos sustituir, pero al menos ahora tenés una alternativa».

## Cruces

- [[self-hosting]] — nube privada en casa: NAS+Jellyfin/Docker como puerta de entrada al self-hosting (misma tesis «adiós suscripciones» del dominio); EZ Connect vs. VPN vs. Tailscale como gradiente de control.
- [[historia-de-la-tecnologia]] — la NAS como mercado (6.000 M$, +12 % a 2030) y la simplificación que democratiza lo que antes era «para sysadmins».

Candidatas para consolidación (aplazada): **SCPC Informática** ×1 (canal nuevo, guía técnica honesta con humor); «RAID no es un backup» como micro-concepto del dominio si aparece 2.ª fuente; «alquiler permanente de archivos» como ángulo del hilo suscripciones.

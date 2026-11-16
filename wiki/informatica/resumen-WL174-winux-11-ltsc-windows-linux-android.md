# Windows 11 + Linux + Android en 1 Solo Sistema | WinUX 11 LTSC

- **Fuente original**: `raw/informatica/2026-10-14-windows-11-linux-android-en-1-solo-sistema-winux-11-ltsc.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=3-mwREsdKfQ))
- **Canal**: Soy David PC Tech
- **Publicado**: 2026-10-14 · **Duración**: 19:48 · **Idioma**: es (subtítulos manuales)
- **Recopilado**: 2026-11-15 (tramo 21, WL-174)

## Qué trata

Análisis práctico de **Winux 11 LTSC** (antes Wubuntu): distribución Linux sobre KDE Plasma que clona visualmente Windows 11 y promete ejecutar programas EXE (vía Wine preconfigurado) y apps de Android (entorno de virtualización) en la misma máquina. El canal la prueba como vía para revivir hardware viejo.

## Puntos clave

- **Instalación** (~[00:57]–[04:12]): ISO desde el sitio oficial (via SourceForge), USB de arranque con Ventoy (GPT), instalador gráfico estilo Windows (idioma/región/teclado, borrado de disco). Nada fuera de lo estándar de una distro Linux.
- **Fachada impecable** (~[04:12]): trabajo estético notable sobre KDE Plasma — Dolphin maquillado como Explorador, panel de configuración por categorías, tienda de software con actualizaciones gráficas, Only Office preinstalado y accesos web a Microsoft 365/Copilot.
- **La promesa EXE tiene límites** (~[06:39]): Notepad++, WinRAR, capturadoras y apps ligeras instalan y funcionan vía Wine; pero Office (dependencias complejas) no funciona — «no va a poder nunca reemplazar una instalación nativa de Windows»; software con DirectX específico o drivers propietarios muestra los límites. La afirmación de que «corre todas las apps de Windows» es falsa.
- **Android: coste real** (~[10:25]): apps ligeras (WhatsApp, juegos casuales) aceptables, pero la virtualización exige recursos (ideal: 4C/8T, 8 GB; recomendado 16 GB) y — lo poco divulgado — **varias herramientas de integración son de pago** (versión Pro/licencias): bajo la máscara de Linux gratuito hay una capa propietaria.
- **Prueba en hardware real** (~[12:18]): Toshiba Mini NB205 de 2010 (Atom 1 núcleo, 1 GB RAM) reproduce YouTube 1080p con fluidez usando este sistema; el portátil principal de pruebas es un i3-7100 (2016) con 8 GB, cuyo consumo en uso cotidiano (4 pestañas + video 1080p + apps EXE en escritorios virtuales) fue de ~3,8 GB RAM y 60-70 % CPU.
- **Anexo de reparación** (~[15:47]): ni Winux ni Zorin OS funcionan bien en un Core 2 Duo de ~20 años; el canal rescata una Dell Inspiron 3567 (placa usada 128 $ + SSD ~60-70 $, carcasa reconstruida) — las distros «pesadas modernas» ya requieren hardware de sexta/séptima generación.
- **Veredicto** (~[18:54]): curiosidad técnica fascinante y logro visual; buena para transición visual desde Windows, navegación, multimedia y ofimática básica; **no** para reemplazo total, trabajo pesado, gaming ni para quien espera todo EXE gratis sin módulos de pago.

## Observaciones de triage

- Análisis de primera mano con pruebas verificables en cámara; advertencias honestas (límites de Wine, costos ocultos de licencias, requisitos de RAM) que contradicen el hype típico de este tipo de distro.
- Nota de contexto: la identidad/legalidad de Winux/Wubuntu (clonado de marca Windows) no se discute en el vídeo — señalado como laguna del análisis.
- Sin patrocinios; solo petición de suscripción (excluida).

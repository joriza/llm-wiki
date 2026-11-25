# WL-756 — Linux Mint ABANDONA las aplicaciones de GNOME! ¿Pero por qué? (El Bit Informado)

- **Fuente original**: `raw/wl/tramo-107/2026-11-24-linux-mint-abandona-las-aplicaciones-de-gnome-pero-por-que.md` ([YouTube](https://www.youtube.com/watch?v=HNqXmmn-gEg))
- **Canal**: El Bit Informado (4.ª fuente — [[el-bit-informado]])
- **Publicado**: 2026-11-24 · **Duración**: 28:02 · **Idioma**: es (ASR, garbiñeos sistemáticos: «Nome/Gnom»=GNOME, «Hitlab»=GitLab, «livadapta/livadweita»=libadwaita, «Pichis/Pitskis»=Ptyxis, «EPUP»=EPUB, «Senity/Exenity/City»=Zenity y su fork)
- **Tramo**: 107 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Análisis del **reemplazo planificado de las aplicaciones GNOME en Linux Mint** — calendario, terminal, monitor del sistema, analizador de disco (Baobab), gestor de comprimidos (File Roller), diálogos de sistema (Zenity) — por software propio, cristalizado en **Linux Mint 27 «Adrien»** (basada en Ubuntu 26.04 LTS, 5 años de soporte, ciclo nuevo de una versión anual, nombres masculinos). Tesis del canal: no es un arrebato ni venganza, es la tercera iteración del mismo patrón (GNOME 3/Shell → Cinnamon en 2011; diseño GNOME-céntrico → X-Apps) anunciado ya en el boletín de **abril de 2024**, que listaba precisamente las apps que hoy tienen sustituto.

## La guerra del calendario (2025-2026)

- Septiembre 2025: **Harry Rana** (desarrollador principal de GNOME Calendar) abre un ticket en GitLab: Mint distribuye versiones viejas GTK3+libadwaita-variant que GNOME ya no mantiene, y los reportes de errores de usuarios de Mint llegan al tracker oficial de GNOME — fallos que nunca existieron en su código o ya corregidos (analogía del taller de coches).
- Petición de Rana: quitar los enlaces de soporte hacia GNOME y cambiar icono/marca de la versión redistribuida. Clem Lefebvre se niega: retirar el paquete de Mint no garantiza una versión más moderna (Ubuntu/Debian servirían la misma versión vieja), y el cambio de marca topera la pregunta incómoda de cuánto control conserva un desarrollador sobre su nombre tras publicar software libre.
- Julio 2026: Rana publica en su blog la versión propia llamando a Mint **«distribución hostil»**; la comunidad se divide (soporte propio vs. libertad de redistribución), y **Nate Graham (KDE)** escribe una reflexión sobre el problema estructural: desarrolladores que quieren versión última vs. distribuciones estables que congelan — el atrapado es el usuario.
- Matiz del video: **no hay prueba de causalidad** — la sustitución estaba planificada desde antes del ticket; la pelea solo ilustra el problema de fondo.

## Las nuevas aplicaciones

- **Clockenstein** (calendario + relojes/alarmas estilo Android): CalDAV (Nextcloud), Google Calendar, errores de sincronización visibles, solo-lectura al perder acceso, servicio en segundo plano de avisos, eventos en el applet del reloj. Bonus: GNOME Online Accounts y Evolution Data Server dejan de venir **preinstalados** (siguen en repositorios) — "Mint no está vetando nada, cambia lo que viene de serie".
- **Superlight** (monitor del sistema + Baobab fusionados): CPU/RAM/swap/GPU/red/disco, temperaturas y ventiladores sin herramientas extra, página de batería con historial, y el detalle inteligente para ex-Windows: identifica el espacio ocupado por **juegos de Steam y apps Flatpak** (los grandes devoradores invisibles de disco). Riesgo declarado: tanta función junto puede ser pesada — es vista previa.
- **Velocity** (terminal, nombre por *tty*): pestañas con vista general (estilo Ptyxis/Ghosty), perfiles guardables, y la función destacada: **colores de pestaña como señal de seguridad** — rojo con superusuario, azul por SSH, claro con proceso en marcha (contra el error clásico de ejecutar algo peligroso en el servidor creyendo estar en local). El equipo **sí evaluó Ptyxis/Ghosty** antes de escribir el suyo — desmonta la crítica de "reinventa sin mirar"; incluso usa tecnologías del ecosistema de apps modernas GNOME.
- **unFAold** (gestor de comprimidos, sustituye File Roller): minimalista, motor 7-Zip + RAR, archivos cifrados, GPL-3+.
- **Zenity fork** (sobre 3.44/GTK3): los diálogos de scripts siguen viéndose nativos de Cinnamon; ya en repos de Mint 22 y LMDE 7.1.
- Más del ciclo: lector EPUB, capturas nuevas, panel de vista previa en Nemo, hibernación que vuelve, instalador que sustituye a Ubiquity; Wayland deja de ser experimental en Cinnamon.

## Evaluación del canal

- Marco: **independencia selectiva**, no rompimiento con GNOME (Cinnamon nace de piezas GNOME, todo sigue apoyado en GTK). El precio real de la independencia: mantener, traducir, asegurar y responder por cada app — y Clem ya reconoció un ciclo duro por ausencia de dos desarrolladores clave ("los desarrolladores necesitan sentirse héroes"). Valores vs. imprudencia queda abierto.
- Irónico y señalado: con las apps propias, Mint acaba haciendo **exactamente lo que Rana pedía** — asumir el soporte de su software en lugar de distribuir versiones modificadas con marca GNOME, solo que construyendo algo nuevo.
- Veredicto práctico: nada desaparece de golpe (Mint 22 sigue soportada), la actualización trae las apps nuevas de serie, conviene revisar dependencias concretas (Online Accounts, perfiles de terminal) antes de saltar, y siempre se puede reinstalar la app GNOME. "Independencia no siempre significa progreso": el juez será el uso diario.

## Cruces

- Entidad: [[el-bit-informado]] (4.ª fuente — mantiene el patrón de análisis técnico documentado con cronología verificable y matiz anti-narrativa).
- Ecosistema Linux/escritorios: tangencial con [[resumen-microsoft-acaba-de-perder-en-los-paises-bajos-el-gobierno-se-esta-pasando-a-linux]] (adopción Linux institucional), [[resumen-WL092-microsoft-azure-linux]] y [[historia-software-corporativa]] (gobernanza de proyectos y bifurcaciones como respuesta a cambios de rumbo ajenos).

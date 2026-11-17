# WL-538 — Linux Está Dejando Atrás una Limitación Histórica… Finalmente

- **Fuente original**: `raw/informatica/2026-08-25-linux-esta-dejando-atras-una-limitacion-historica-finalmente.md` ([Vídeo](https://www.youtube.com/watch?v=qMRGbMlZmH8))
- **Canal**: Mid tech
- **Publicado**: 2026-08-25 · **Duración**: 21:34
- **Dominio definitivo**: informatica (consolidación T97, 2026-11-17) (escritorio Linux / X11→Wayland)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Divulgación técnica sobre el retiro de X11 en el escritorio Linux (2026), bien estructurada y con matices poco comunes en el género:

- **Tesis**: la limitación no era Linux sino X11, arquitectura de los años 80 que acumuló responsabilidades imposibles de modernizar función por función (según la documentación del proyecto Wayland).
- **Wayland ≠ servidor**: es un protocolo donde el compositor es central; cambia el modelo de seguridad — bajo X11 cualquier cliente podía capturar contenido o interceptar entrada de otros; bajo Wayland hay aislamiento (las apps X11 vía puente no lo tienen).
- **KDE Plasma 6.8** (fines de 2026) elimina la sesión X11 (6.7 es la última, soportada hasta principios de 2027); las aplicaciones X11 siguen vía KWin como puente («sesión ≠ aplicaciones», la distinción clave del video). Dato honesto: el «>95 % de usuarios en Wayland» corresponde solo a Plasma 6.6; con instalaciones viejas (5.27) baja a ~8x % — el canal prefiega no inflar cifras.
- **GNOME 50 «Tokio»** (marzo 2026, Ubuntu 26.04 LTS y Fedora 44): refresco variable y escalado fraccional por defecto, cursor de baja latencia, mejoras Nvidia, gestión de color v2, HDR, escritorio remoto por GPU.
- **Pendientes reconocidas**: lista pública de issues Wayland de KDE, triple buffering Nvidia recién activado por defecto en 6.8 tras 2 años de errores, compatibilidad que «nunca llegará al 100 %», scripts y herramientas especializadas que pueden romperse.
- **Cierre reflexivo**: la verdadera revolución es poder dejar de diseñar alrededor de las limitaciones del pasado («ningún sistema puede cargar para siempre con las suposiciones de su nacimiento»).

## Señales de triage

- **Divulgación de 2.ª mano con anclajes citados**: cronología de Plasma, porcentajes de adopción y fecha de GNOME 50 provienen de anuncios de KDE/GNOME citados verbalmente, sin enlaces en pantalla — señalado. La versión de GNOME («50», 2026) es consistente con el universo temporal de las fuentes recientes pero no verificada de forma independiente.
- **Honestidad epistémica atípica**: matiza su propio titular y desinfla el dato de adopción («prefiero que confíes en este canal a que te venda un número inflado»).
- ASR: «X11N»/«X Wine» por X11/X Window, «Nome» por GNOME, «Zorg» por Xorg, «8x» ilegible — normalizado solo aquí; raw intacto. Sin patrocinios.

## Cruces

- Historia de la tecnología: mismo patrón «arquitectura que triunfa por su época y luego frena» que [[historia-de-la-tecnologia]] (WL-475 Zip, WL-384); X11 como caso de estudio de deuda arquitectónica de 40 años.
- Seguridad: el cambio de modelo de aislamiento entre aplicaciones (X11 = espiable por diseño) ↔ [[estafas-y-consumidor]] solo tangencial; más bien hilo con seguridad de escritorio.
- WL-364/[[self-hosting]]: audiencia de usuarios de escritorio Linux autohospedado.
- Hilo transversal «migraciones inevitables con plan de salida» (dos calendarios paralelos de KDE) — comparable con los cierres de protocolos en informatica-teoria.

## Veredicto de triage

Una de las fuentes más sólidas del tramo: honesta con los matices, distingue sesión vs aplicaciones, cita sus anclajes aunque sin enlaces. Dominio provisional informatica (candidato a consolidarse con informatica-teoria en la migración diferida, L12).

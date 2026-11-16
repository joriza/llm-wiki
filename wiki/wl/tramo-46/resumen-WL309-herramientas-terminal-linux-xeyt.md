# WL-309 — 10 herramientas de la terminal que de verdad te sirven en Linux

- **Fuente original**: `raw/wl/tramo-46/2026-11-15-10-herramientas-de-la-terminal-que-de-verdad-te-sirven-en-linux.md` (transcripción automática intacta)
- **Video**: https://www.youtube.com/watch?v=LbcyTbM38zQ
- **Canal**: xeyt · **Publicado**: 2026-11-15 · **Duración**: 14:40 · **Ingesta**: 2026-11-16
- **Idioma**: español (subtítulos automáticos; normalizado solo aquí, no en el raw)

## Resumen

Tutorial de productividad en terminal (15 min, xeyt, 4.ª parte de su serie de herramientas) orientado a principiantes, sobre todo migrantes de Windows. Diez herramientas, cada una con casos de uso e instrucciones de instalación en Arch (pacman), Debian/Ubuntu (apt) y Fedora (dnf):

1. **wttr.in** — clima en la terminal vía `curl wttr.in/ciudad`, sin instalación (solo curl); `?format=3` para una línea, ideal para fastfetch/barras; sin ciudad usa geolocalización de la conexión.
2. **bat** — «cat mejorado»: resaltado de sintaxis, números de línea e integración git (marca líneas cambiadas); en Ubuntu el binario se llama `batcat`.
3. **fd** — búsqueda de archivos con sintaxis simple frente a `find`; ignora ocultos por defecto; `-e pdf` filtra por extensión; en Ubuntu/Fedora el paquete se llama `fd-find`.
4. **trash-cli** (destacada como la más importante) — sustituto de `rm` con papelera real: `trash-put`, `trash-list`, `trash-restore`, `trash-empty`; comparte papelera con el explorador de archivos.
5. **micro** — editor de terminal con atajos estilo Windows (Ctrl+S/C/V/Z/Q), soporte de ratón y barra de atajos; alternativa sin curva de aprendizaje frente a vim/nano.
6. **atuin** — historial de shell en base de datos SQLite con fecha, directorio y resultado (éxito/fallo); buscador en Ctrl+R; sincronización entre equipos opcional (sin cuenta funciona local); requiere línea en `.bashrc`/`.zshrc`.
7. **croc** — transferencia cifrada de archivos entre máquinas con un código de palabras (`croc send <archivo>`); multiplataforma (Windows/Mac), alternativa a USB/Drive/LocalSend.
8. **ouch** — compresor/descompresor universal: `ouch decompress` detecta el formato; `ouch compress` elige formato por la extensión destino; instalable con cargo (Rust).
9. **nvtop** (el ASR lo escribe «EnvyTop») — monitor de GPU en tiempo real (uso, memoria de vídeo, temperatura, proceso); no es solo NVIDIA: también AMD e Intel.
10. **topgrade** — actualiza todo el ecosistema con un comando (pacman+AUR+yay/paru, flatpak, snap, apt/dnf…); resumen final de lo actualizado/fallado; en Arch vía AUR, en otros con cargo.

Cierre didáctico: no hay que instalarlas todas — para quien viene de Windows, empezar con trash-cli y micro.

## Apreciación

Listicle de calidad media-alta: herramientas bien elegidas y actuales (rust-cli modernas: bat/fd/atuin/croc/ouch), con advertencias útiles que suelen faltar en este formato (batcat vs bat, fd-find, topgrade no en repos de Arch). Instrucciones de instalación explícitas por distro. Errores menores de ASR en nombres («Sozide» por probablemente «zoxide», «antuin» por atuin, «crock» por croc) — anotados, no normalizados en el raw. Contenido funcional/demostrativo, sin afirmaciones factuales a verificar. Fuente útil de referencia práctica.

## Cruces y notas

- Cruces: dominio destino sugerido: agentes-de-codigo o informatica-teoria (herramientas de terminal/dev-ops), a migrar en consolidación; sinergia natural con páginas de herramientas ya presentes en la wiki.
- Canal xeyt sin presencia previa en la wiki (1.ª fuente — umbral <2, texto plano). El video menciona partes previas de la serie (Ranger, fzf, zoxide, cmatrix…) — posibles ingestas futuras del mismo canal.

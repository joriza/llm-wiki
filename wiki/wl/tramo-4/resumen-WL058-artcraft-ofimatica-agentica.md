# Resumen: 848 — ArtCraft: haz que la IA trabaje por ti

- **Fuente original**: `raw/wl/tramo-4/2026-11-12-848-artcraft-haz-que-la-ia-trabaje-por-ti.md` (WL-58, tramo 4)
- **URL**: https://www.youtube.com/watch?v=I5D_lJjEqKk
- **Canal**: atareao (Lorenzo — Atareao con Linux, episodio 848; veterano del software libre, 20+ años con GIMP/Inkscape/LibreOffice)
- **Publicado**: 2026-11-12 · **Duración**: 37:18 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## El enfoque (el que lo diferencia)

Rechaza el framing habitual («ArtCraft acabará con Photoshop/AutoCAD/Word» — «para acabar con Photoshop ya estaba GIMP y nunca acabó; el flujo de trabajo no era el mismo»). Su tesis: la noticia no es la suite, es que **cada herramienta lleva dentro un servidor MCP** — con lo cual la IA no reemplaza la herramienta, **reemplaza tu trabajo con ella**: le decís al agente que escriba el documento, formatee, meta fórmulas, mueva gráficos, exporte — y vos corregís, «igual que con un ayudante».

## Qué es ArtCraft (StoryTold en GitHub)

- Organización con **68 repositorios** desde 2021; dos mundos que no se mezclan: el *estudio* de creación con IA (interfaz para desarrolladores; consume créditos; nube/macOS/Windows — **no Linux**) y la **Craft App Suite**: **13 aplicaciones de escritorio en Rust puro** (sin Electron ni webviews), licencia dual MIT/Apache 2, corren en Linux/macOS/Windows/FreeBSD/RISC-V/WebAssembly (12/13 compilaban a WASM al preparar el episodio), gratis y sin suscripción.
- **795 herramientas MCP en total** si se activan las 13 — consumo de tokens brutal al arrancar: **activar una a una** según se necesite (Worlcraft, Gridcraft, PDFcraft, Fitcraft, Deckcraft…).
- Funcionan **sin ventana pero requieren la app instalada** (puerto local o modo CLI); «no necesitan servicio de terceros ni autenticación — corren en tu equipo».

## La demo (lo que hizo y vio)

- **Worlcraft** (Word): «escribí un documento sobre la desaparición de los dinosaurios» → documento de 2 páginas con secciones, «por qué importa hoy», estilo inventado; iteración conversacional («desarrolla más las causas», «quitá ese apartado», línea temporal, quiénes sobrevivieron, conclusión). La gran jugada: **Markdown → Word con TU plantilla de estilos**, documentos desde tu propia documentación.
- **Gridcraft** (Excel): cuadro de mando con datos mensuales/trimestres/previsión por plataforma (YouTube/Spotify/RSS) — datos probablemente inventados al no darle fuente; la jugada real: conectar fuente de datos + Gridcraft y pedir «actualizá todo» periódicamente.
- **Fitcraft** (Photoshop/design): miró atareao.es y **replicó la web exacta en modo claro y oscuro** — proceso inverso: editar el boceto y volver a HTML; para quien diseña pero no programa: boceto → alguien (o el modelo) lo programa.
- **Deckcraft** (PowerPoint): «haceme una presentación sobre Traefik» → presentación exportable sin intervención; Effectcraft: presentación-vídeo de Atareao con música. Reconoce que sin lenguaje de diseño el resultado «puede salir un churrete» — el límite es saber pedir.
- **CAD**: DraftSight fue su revelación pasada (AutoCAD para Linux con el mismo flujo); ahora **CADcraft** y **OpenCAD** (esta última la que más le gustó) — pero aquí **no consiguió nada interesante** aún.
- Su **ancla de flujo propio**: sigue en Markdown (lenguaje plano, sin fabricante) y **Typst** para presentaciones-guion («si la presentación es espectacular, la gente se despista del contenido»).

## Advertencias del propio Lorenzo

- **Versión alfa, muy alfa** — las 795 herramientas no son completas; falta mucho.
- PhotoCraft recibió **71.000 estrellas en GitHub en 3 semanas** por el hype «Photoshop ha muerto» — «lo potente no es el proyecto en particular, sino las manos que le estamos dando a nuestros modelos».
- Cierre de flujo personal: coordinación de agentes con **DeepSeek 4.1 Flash en modo pensamiento bajo** para scripts y keywords de YouTube con modelos locales — adelanto del próximo episodio.

## Notas críticas

- Prueba práctica honesta (muestra los resultados mediocres también — el documento «sin esmerarse mucho», el CAD fallido), con la distinción conceptual clave del episodio: **la herramienta no mata a la otra; la mata el flujo delegado al agente** — idéntico marco al de WL-48 (compites contra el modelo vs vendes el trabajo) aplicado al escritorio Linux.
- Nombres ASR a verificar: «ArtCraft/StoryTold» (Storytold?), «Worlcraft/Gridcraft/Fitcraft/Deckcraft/Effectcraft/PhotoCraft/CADcraft/OpenCAD», «DeepSeek 4.1 Flash», «Types» (Typst).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (MCP/agentic desktop) — refuerza [[deepseek-harness]] y el clúster de herramientas de agentes.
- **WL-48 (Sequoia)**: la tesis del episodio es la demostración desktop de «vendéis el trabajo, no la herramienta» — las Craft Apps son el punto de entrada que Sequoia describiría como piloto automático de ofimática.
- **WL-56 (T3 Code)**: misma filosofía MCP-first de ecosistema (todo controlable por agente) en dominios distintos (ADE vs ofimática).
- Tema-candidato: **ofimática agéntica local** (MCP en apps de escritorio open source Rust) — primera fuente del tema.

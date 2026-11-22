# Ingesta Gral/tmp-01 (favoritos Chrome)

## Specs

S1: «Procesa la carpeta de favoritos de chrome. la carpeta llamada Gral\tmp01» — carpeta real: `Barra de favoritos/Gral/tmp-01` en `AccountBookmarks` de Chrome; 16 fuentes iniciales (cache: odd/raw-tmp01-cache.json).
S2: «en un único sub-agente con relevo cada 5 fuentes» — un solo worker, ingesta en secuencia, relevo (re-verificación de cabeza) tras las fuentes 5, 10 y 15.
S3: «Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.» — comparar contra cache; si cambió, re-listar, actualizar cache y continuar desde la nueva cabeza omitiendo ya procesadas.

## Tasks

- T1 (S1): Relevos 1: ingesta individual de fuentes 1-5, commit por fuente.
- T2 (S2,S3): Relevo en cabeza (f6): re-listar tmp-01, comparar cache, actualizar si cambió.
- T3 (S1): Relevos 2-3: ingesta fuentes 6-10, relevo en f11, ingesta 11-15, relevo en f16.
- T4 (S1): Ingesta fuente 16 y cierre: log final, index.md y log.md consistentes.

## Tasks — estado final (2026-11-22)

- T1 (S1): COMPLETADA — fuentes 1-5 ingestadas (TMP01-001..005), commit por fuente.
- T2 (S2,S3): COMPLETADA — Relevo 1 (tras f5): 16 hijos, mismo orden que el cache → sin cambio.
- T3 (S1): COMPLETADA — Relevo 2 (tras f10): sin cambio; fuentes 6-10 (6 SKIP 403; 7-10 ingestadas), 11-15 ingestadas; Relevo 3 (tras f15): sin cambio.
- T4 (S1): COMPLETADA — fuente 16 ingestada (YouTube, subtítulos ASR procesados); index.md y log.md consistentes.

## Log

L1: «Procesa la carpeta de favoritos de chrome. la carpeta llamada Gral	mp01, en un único sub-agente con relevo cada 5 fuentes. Si al verificar la cabeza de algún relevo la lista cambió respecto del cache, re-listá y seguí desde la nueva cabeza.»

## Registro de procesamiento (final)

- TMP01-001..005: procesadas (educacion-ia ×2, ia-critica-y-fronteras, ia-local, futuro-programacion, educacion-ia).
- Relevo 1 (tras f5, antes de f6): bookmarks re-leídos — 16 hijos, URLs idénticas en orden al cache → SIN cambio.
- TMP01-007..010: procesadas (argentina/economia, informatica, general, ia-local).
- Relevo 2 (tras f10, antes de f11): 16 hijos, mismo orden → SIN cambio.
- TMP01-011..015: procesadas (informatica, ia-local, ia-uso-practico, general, historia-informatica).
- Relevo 3 (tras f15, antes de f16): 16 hijos, mismo orden → SIN cambio.
- TMP01-016: procesada (YouTube; transcripción ASR descargada con yt-dlp y procesada; NO archivada en raw/ por límite de superficies del tramo — resumen cita la URL; pendiente de archivado en consolidación).
- Cache odd/raw-tmp01-cache.json sin cambios durante todo el tramo (ningún relevo detectó diferencia).
- Nota operativa: el commit de TMP01-001 (c90acc6f, `git add -A`) incluyó por error el archivo pre-modificado `pdt-llm-wiki.md` (fuera de las superficies autorizadas); commits siguientes usaron paths explícitos. Decisión de revertir o conservar: del orquestador.

## Cache inicial (16 fuentes, cabeza de relevo = cada 5)

1. [De la inquietud familiar a la Justicia: el padre que logró que por primera vez se publiquen los resultados por escuela de Aprender - LA NACION](https://www.lanacion.com.ar/sociedad/de-la-inquietud-familiar-a-la-justicia-el-padre-que-logro-que-por-primera-vez-se-publiquen-los-nid21112026/)
2. [La ONU denuncia que la Inteligencia Artificial es gobernada de forma "medieval" y advierte que podría paralizar infraestructura crítica](https://www.clarin.com/mundo/onu-denuncia-inteligencia-artificial-gobernada-manera-medieval-advirtio-riesgo-paralice-infraestructura-critica_0_tX0kQvUVmH.html)
3. [Claude empieza a bloquear la modificación de equipos con IA y el código abierto se perfila como alternativa](https://www.softzone.es/noticias/metabits/claude-bloqueo-descompilacion-dispositivos/)
4. [David Heinemeier Hansson, programador creador de Ruby on Rails: "Abandono la programaación profesional; tras 25 años escribiendo código de forma manual, ya no es productivo"](https://computerhoy.20minutos.es/software/david-heinemeier-hansson-programador-ruby-rails-dejo-ser-programador-profesional-tras-25-anos-escribiendo-forma-manual-ya-no-es-productivo_7044127_0.html)
5. [Por qué gremios, docentes y directivos de la Provincia piden cambios en la escuela secundaria | Infocielo](https://www.infocielo.com/politica-y-economia/por-que-gremios-docentes-y-directivos-de-la-provincia-piden-cambios-en-la-escuela-secundaria)
6. [Dinamarca pinta de rojo las palas de sus aerogeneradores y soluciona uno de los grandes problemas de la eólica](https://www.elconfidencial.com/tecnologia/2026-05-15/dinamarca-pala-roja-turbinas-problema-eolica-1qrt_4355177/)
7. [Luis Caputo avaló la Resolución 55/2026 y dos líneas de colectivos dejan de recorrer Buenos Aires](https://www.minutouno.com/economia/luis-caputo-avalo-la-resolucion-552026-y-dos-lineas-colectivos-dejan-recorrer-buenos-aires-n6328009)
8. [Experto en Linux prueba la distro de Linux más pesada y sentencia: "Sigue siendo mejor que Windows"](https://computerhoy.20minutos.es/software/experto-linux-prueba-distro-linux-mas-pesada-sentencia-sigue-siendo-mejor-que-windows_6963198_0.html?utm_rs=AP_t3D0naBIRy2Bb8aAt1dlCA)
9. [Cómo instalar Microsoft Office 2007 gratis en el ordenador](https://www.adslzone.net/noticias/windows/descargar-microsoft-office-2007-gratis/)
10. [Gemma de Google Ya Actúa Como Gemini—Alguien Logró que También Pensara Como Claude Opus - Decrypt](https://decrypt.co/es/364362/gemopus-gemma-4-google-claude-opus-modelo-local-iphone)
11. [Linux sin Linux: 4 sistemas operativos de código abierto alternativos](https://www.softzone.es/noticias/open-source/4-sistemas-operativos-codigo-abierto/)
12. [Liquid Apollo - Apps en Google Play](https://play.google.com/store/apps/details?id=ai.liquid.chatapp&pli=1)
13. [Qué app con IA usan emprendedores para terminar con el caos administrativo](https://www.iprofesional.com/negocios/443786-que-app-con-ia-usan-emprendedores-para-terminar-con-caos-administrativo)
14. [Murió Starlink: llega a la Argentina un nuevo internet satelital más barato - TyC Sports](https://www.tycsports.com/interes-general/murio-starlink-llega-a-la-argentina-un-nuevo-internet-satelital-mas-barato-id685118.html)
15. [Microsoft libera 6502 BASIC, que ahora es de código abierto](https://hipertextual.com/software/microsoft-libera-6502-basic-codigo-abierto/)
16. [Cómo separar instrumentos de una canción con Audacity (Gratis) - YouTube](https://www.youtube.com/watch?v=6Ta3l8BgBKo)

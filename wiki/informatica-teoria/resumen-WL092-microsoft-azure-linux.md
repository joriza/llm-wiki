# Resumen: Microsoft lanzó su propia distribución de Linux — lo que pasó después fue inesperado

- **Fuente original**: `raw/informatica-teoria/2026-11-02-microsoft-lanzo-su-propia-distribucion-de-linux-lo-que-paso-despues-fue-inespera.md` (WL-92, tramo 7)
- **URL**: https://www.youtube.com/watch?v=yvfRueBJyvQ
- **Canal**: El Bit Informado
- **Publicado**: 2026-11-02 · **Duración**: 23:56 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Tesis central

Microsoft, la empresa del «Linux es un cáncer» (Ballmer, 2001), publicó en 2026 su propia distribución Linux de código abierto completo — y el giro no es la conversión sentimental sino el negocio de la nube: **Azure Linux no se vende, se regala para que alquiles Azure**. El video cubre historia, detalle técnico y la reacción dividida de la comunidad (¿abrazo sincero o embrace-extend-extinguish?), con criterio de falsación concreto: mirar el historial de commits.

## De la guerra al abrazo (historia)

- **Memorandos de Halloween** (oct-1998): documentos internos filtrados y publicados por Eric Raymond que trataban el software libre como amenaza seria (frenar Linux, sembrar dudas, protocolos propios).
- Ballmer 2001: Linux «cáncer» que se adhiere por la GPL; 2007: claim de 235 patentes violadas sin nombrarlas (miedo como contrato); la **silla de Lucovsky** (2004→2005, testimonio judicial: Ballmer lanzó una silla al enterarse de su ida a Google — «exageradísima» según Ballmer, pero creída porque encajaba).
- **Nadella 2014**: «Microsoft ♥ Linux» — pragmatismo, no romanticismo: en la nube manda Linux y los clientes iban a AWS/Google si Azure lo dificultaba. Cronología: Linux Foundation (2016), **WSL** (2016), GitHub 7.500 M$ (2018), Open Invention Network (~60.000 patentes liberadas, 2018), WSL2 con kernel real de Linux (2019), **CBL-Mariner** (2019, interno) → **Azure Linux** público (2020) → mueve el Kubernetes de Azure desde 2023 + SQL/Cosmos DB; Databricks migró >100.000 VMs; LinkedIn también.

## El anuncio de 2026 (detalle técnico)

- **Azure Linux 4.0** (Open Source Summit, 18/5; Build 2/6, preview pública): ya no desde cero sino **basada en Fedora** (Red Hat/IBM, ironía señalizada); ingenieros de Microsoft co-escribiendo propuestas en Fedora 45 (x86-64-v3). Kernel **6.18 LTS**, mejor integración Hyper-V, soporte GPU/AI-accelerators, **DNF5**, glibc 2.42, OpenSSL 3.5, systemd 258, Python 3.14, RPM 6.0; seguridad: secure boot, SELinux, endurecimiento, parches fuera de ciclo para críticas; Microsoft controla toda la cadena (rama propia del kernel, claves de firma). Sin coste extra en Azure; fuera de Azure, soporte comunitario.
- **NO una, DOS distribuciones**: Azure Linux 4.0 (servidor general) + **Azure Container Linux**, basada en **Flatcar** — inmutable, sin gestor de paquetes, sistema base solo-lectura, se actualiza como bloque, para entornos de cumplimiento estricto. Y: **sin planes de escritorio** — no compite con Ubuntu/Mint/Fedora Workstation.
- **Coreutils para Windows** (lo que «casi nadie esperaba»): >75 comandos Unix (ls, cp, mv, cat, head…) **nativos** en cmd/PowerShell, sin WSL ni VM, un ejecutable + enlaces NTFS, vía winget. **Letra pequeña**: no son las GNU sino **uutils** — reimplementación en **Rust con licencia MIT** (vs GPL de GNU) + findutils y un grep compatible mantenido por Microsoft. Matices: pragmatismo (Rust seguro, MIT sin dolores legales) vs señal inquietante (Ubuntu ya sustituye coreutils GNU por las de Rust; tendencia de reemplazar software libre-GPL por versiones MIT de grandes corporaciones). Inconsistencia señalada: repo marcado «preview» mientras Build lo anunciaba GA. Además: **contenedores de WSL** sin Docker Desktop.
- **Embrace, extend, extinguish**: la memoria histórica de la comunidad (juicio antimonopolio, Netscape, demanda de Sun por Java-for-Windows). El miedo real no es que mate Linux (la nube del planeta es Linux) sino que lo convierta en **capa de conveniencia dentro de Windows**: menos hardware Linux, menos herramientas nativas, Linux como función del ordenador de Microsoft. División de la comunidad: sysadmins/cloud = buena noticia sin matices; devops de escritorio Linux = preocupación fundada. Criterio de falsación: si contribuye a Fedora y mantiene compatibilidad → abrazo sincero; si diverge → historia otra.
- **Surface RTX Spark Dev Box**: estación IA ~un petaflop con chip Nvidia, preconfigurada con WSL2 + GPU passthrough + CUDA — Microsoft diseña hardware para desarrolladores que **dan por hecho trabajar en Linux** (el ecosistema IA vive en Linux); Nvidia lanzó DGX Station para Windows vía WSL en paralelo.
- **El contrapunto que reordena todo**: Microsoft publicó Azure Linux 4.0 **entero en GitHub** con modelo declarativo de capas (cada parche sobre Fedora documentado, auditable, bifurcable) — justo cuando **Red Hat cerró el código fuente de RHEL** (jun-2023, solo CentOS Stream como referencia; enfado, reorganización de Alma/Rocky). «La del cáncer abre puertas, la del Linux empresarial las cierra».
- **Economía**: IBM pagó 34.000 M$ por Red Hat porque el Linux empresarial es negocio de **tranquilidad** (soporte, actualizaciones, responsable legal), no de código; Microsoft regala el SO para vender la nube.images de Azure Linux para WSL anunciadas → mismo Linux en portátil y producción, mismos comandos (Coreutils) — ecosistema completo con Microsoft en cada capa.
- Veredicto del video: «dejó de pelear contra Linux para pelear **con** Linux como arma»; pendiente: GA tras validación y certificación **FIPS 140-3** (ASR «143»); la comunidad está vigilando tres cosas concretas (contribución a Fedora, compatibilidad de Coreutils, si «gratis con Linux» es honesto o jaula dorada) — «en el software libre todo queda a vista: lo veremos venir… o veremos que cambió». Cierre: Ballmer acertó a medias — Linux «tocó» a Microsoft, pero la transformó.

## Notas críticas / ASR a corregir

- ASR sistemático: «Sacha Adela» = **Satya Nadella**; «Steve Bolmer/Walmer» = **Ballmer**; «Mark Lucospi/Lukowski» = **Mark Lucovsky**; «Azur/Asure/Azure» = Azure; «Jitubaron» = GitHub; «Redhtat/Red» = Red Hat; «Celinx» = SELinux; «Gbisi» = glibc; «System def» = systemd; «Cory Utils/Corectils/Uils» = **Coreutils / uutils**; «GPU passue» = GPU passthrough; «betaflop» = petaflop; «Fips 143» = **FIPS 140-3**; «Kyle Gospodnetic» verificar grafía; «Minneappolis» = Minneapolis; «DataBabs» = Databricks.
- Verosímil y coherente con cronología pública conocida hasta el corte del corpus, pero TODOS los datos 2026 (Azure Linux 4.0, Fedora 45, kernel 6.18 LTS, Coreutils/uutils nativo, Surface RTX Spark Dev Box) son claims del emisor sin fuente primaria en pantalla — verificar contra anuncios oficiales antes de citar en páginas de concepto.
- Divulgación de alta calidad: separa probado/creído/testimonial (la silla), presenta los dos lados del debate y da criterios observables de falsación; sin patrocinio detectado; gancho final de suscripción excluido.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** (historia/ecosistema software; alternativa agentes-de-codigo por el ángulo devops — decidir en consolidación).
- **[[lenguaje-rust]] (WL-80, WL-14/26)**: cuarta fuente Rust — uutils (Rust/MIT) reemplazando GNU coreutils (C/GPL) es el caso institucional más grande del «Rust reescribe lo heredado»; cruza directo con [[reglas-cableadas-vs-programadas]] y el tema licencias GPL vs MIT.
- **WL-88/WL-87**: patrón compartido «la percepción/la historia institucional pesa más que el hecho» (la silla de Ballmer ≈ el rumor de Galperín; la memoria de EEE ≈ la retrocompatibilidad de JS como jaula).
- **WL-89 (IA-opera-sobre-IA)**: el Dev Box con Linux+CUDA confirma la base física del ecosistema IA — Linux como plataforma de la IA, cruce con [[hardware-para-ia-local]].
- **WL-46 (Rust vs reescritura)**: uutils como reescritura institucional que SÍ está funcionando — contrapunto al «no reescribas todo».
- Temas-candidatos: **GPL-vs-MIT-como-campo-de-batalla-corporativo** (uutils, Ubuntu; con WL-70 destilación como análogo legal); **embrace-extend-extinguish** (Netscape/Java + el caso 2026 como test observable).

## ADVERTENCIA

Noticia 2026 de segunda mano sin fuente primaria en pantalla; nombres ASR a corregir antes de citar; la historia pre-2014 (Halloween, silla, patentes) es canónica y fiable.
- **Página de concepto**: [[lenguaje-rust]] — uutils como la cuarta fuente institucional del clúster (cableado 2026-11-14).
- **Entidad**: [[el-bit-informado]] — canal del video (creada 2026-11-14 con WL-55).

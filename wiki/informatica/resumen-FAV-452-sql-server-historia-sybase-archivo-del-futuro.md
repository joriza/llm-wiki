# FAV-452 — Microsoft no creó SQL Server desde cero: la historia olvidada de Sybase (Archivo del Futuro)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=sdrGJF0MUqs) — Canal **Archivo del Futuro**, publicado 2026-09-03, 27:23, ES (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-sql-server-historia-sybase-archivo-del-futuro.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## La genealogía real de SQL Server

Historia documentada (con la cronología oficial de Microsoft como fuente) del origen compartido de SQL Server y Sybase:

1. **El problema de origen (años 80)**: las bases de archivos locales no escalaban a múltiples usuarios concurrentes (bloqueos, copias inconsistentes, tráfico de red). La arquitectura cliente/servidor separaba responsabilidades: el cliente envía la consulta; un proceso especializado en el servidor lee tablas, aplica permisos, coordina transacciones y devuelve solo el resultado. En 1984 era todavía una apuesta.
2. **Sybase (fundada por Robert Epstein —venido de Ingres— y Mark Hoffman)**: servidor SQL sobre hardware estándar, multiplataforma (Unix), con bibliotecas de cliente y el dialecto **Transact-SQL** (variables y lógica sobre el SQL estándar).
3. **La alianza tripartita (1988–1989)**: Microsoft + Ashton-Tate (dBase, presencia comercial en PC) + Sybase (motor y experiencia cliente/servidor), para **OS/2**. El 13-01-1988 se anuncia y el 03-05-1989 se envía *Microsoft SQL Server 1.0* — «licenciado de Sybase» (la tecnología esencial) y «desarrollo conjunto» (el trabajo de producto) no se contradicen: son dos mitades de la historia.
4. **La bifurcación (abril 1994)**: OS/2 perdió frente a Windows; Microsoft llevó SQL Server a **Windows NT** (v4.21, 1993), Sybase necesitaba seguir multiplataforma (Unix). Diferencia de incentivos de ingeniería, no pelea de buenos y malos. Tras la separación, la línea Sybase se renombró **Adaptive Server Enterprise (ASE)**; Microsoft conservó el nombre SQL Server. Bifurcación con base técnica compartida y luego décadas de desarrollo independiente.
5. **Por qué ganó Microsoft**: efecto de plataforma — el motor se vendía junto con Windows Server, herramientas de desarrollo, interfaces gráficas, documentación y red de integradores; más instalaciones atraen profesionales, que reducen riesgo, que atraen aplicaciones (rueda de adopción). En el mercado, quien compra no evalúa solo el motor: soporte, profesionales, compatibilidad y ruta de actualización. Sybase conservó nichos protegidos por costes de migración (bancos, bolsas, sistemas transaccionales) — ASE sigue existiendo.
6. **El resto de la historia de Sybase**: fusión con **PowerSoft** (PowerBuilder, ~940 M$, 1994) — la DataWindow creó una enorme base de aplicaciones cliente/servidor que luego costó modernizar hacia web. Diversificación real: ASE (empresa), SQL Anywhere (móvil/sucursales, genealogía Watcom), Sybase IQ (analítica columnar). **SAP compró Sybase (~800 M$, 2010)**: recibió una cartera, no un único motor. En 2017 Microsoft lanzó SQL Server para Linux — la rama «de Windows» cruza de nuevo la frontera del SO bajo su propia hoja de ruta.
7. **Moraleja**: distinguir memoria pública (el nombre), propiedad corporativa y continuidad técnica. «Sybase creó el núcleo del que partió todo; Microsoft, Sybase y Ashton-Tate enviaron juntos el primer producto; después cada rama vivió su propia historia». El ecosistema (cursos, certificaciones, ofertas) asoció el nombre a Microsoft y volvió invisible el origen.

## Valor

Historia de software bien documentada que corrige el mito «Microsoft lo inventó»; el ASR garbiña el nombre como «CBAS/Cbase/Sideway» (Sybase) — normalizado aquí. Ilustra el efecto de plataforma como mecanismo de dominio de mercado más allá de la calidad del motor.

## Cruces

- Eje **historia de software corporativa**: familia de [[resumen-FAV-430-historia-git-linus-torvalds-fatdev]], [[resumen-FAV-431-dennis-ritchie-lenguaje-c-fatdev]] y [[resumen-FAV-446-cobol-imposible-de-matar-fatdev]] (sistemas veteranos que sostienen banca/finanzas — ASE comparte ese perfil de supervivencia).
- [[resumen-FAV-440-solid-en-5-minutos-torti-code]] / [[resumen-FAV-448-monolito-vs-microservicios-thedebugduck]] como el resto del eje arquitectura/ingeniería de software del clúster.

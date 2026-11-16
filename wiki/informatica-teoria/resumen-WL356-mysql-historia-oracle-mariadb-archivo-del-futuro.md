# WL-356 — MySQL: vendió su creación y tuvo que clonarla para salvarla

- **Fuente original**: `raw/informatica-teoria/2026-09-16-mysql-vendio-su-creacion-y-tuvo-que-clonarla-para-salvarla.md` ([vídeo](https://www.youtube.com/watch?v=pzeCFyhCuP8))
- **Canal**: Archivo del Futuro
- **Publicado**: 2026-09-16 · **Duración**: ~21:30 · **Ingesta**: 2026-11-16 (tramo 55)
- **Tipo**: videoensayo histórico-documental (2.ª mano: fuentes citadas — Axmark 2007, The Register, OS News, Dev Class, Stack Overflow — sin enlaces)
- **Dominios destino propuestos (consolidación aplazada)**: general (historia de la tecnología) o informatica-teoria

## Idea central

Historia de MySQL como estudio de la pregunta «¿de quién es algo que es gratis?»: el código es libre, pero la dirección del proyecto pertenece a quien paga a quienes lo mantienen — narrada desde su origen escandinavo hasta la venta a Oracle y el fork MariaDB, con PostgreSQL como contraejemplo de proyecto sin dueño que nadie pudo comprar.

## Puntos clave

- **Origen** [00:47]: Michael «Monty» Widenius con David Axmark y Allan Larsson (empresa sueca desde 1985); a mediados de los 90, descontentos con mSQL, escribieron su propio motor SQL sobre rutinas propias de disco; compatibilidad casi directa con mSQL («hacerle fácil la mudanza», idea recurrente); nombre por su hija My (1995).
- **Modelo de negocio dual** [02:53]: licencia gratuita + licencia comercial + soporte pago (respuestas privadas); primeros clientes 1997 con cobros procesados a mano; el regateo como forma más barata de conquista de usuarios. GPL desde la 3.23 (2000): usar libre, pero distribuir productos derivados obliga a liberar código — quien no quiera, compra licencia comercial. Caso NuSphere/Progress (2002): primera prueba judicial de la GPL, cerrada con cesión de derechos y carta de conformidad.
- **La llave InnoDB** [07:07]: transacciones ACID vía motor intercambiable desarrollado por Innova­se (finlandesa), motor por defecto desde la 5.5; en 2005 Oracle compra Innobase — el competidor se queda con la pieza que daba «seriedad» al rival gratuito, con contrato renovable.
- **Sun y Oracle** [08:46]: Sun compra MySQL AB por ~1.000 M (2008; facturación estimada 50-75 M — múltiplo ~13×; «Sun no pagaba por el código, pagaba la letra chica»: marca, clientes, control del rumbo). Monty se va (2009) y anuncia MariaDB (por su segunda hija); Oracle compra Sun entera por ~7.400 M y MySQL ni aparece en el comunicado (Java y Solaris protagonistas). Comisión Europea frena y exige garantías; campaña «Help save MySQL» (14.000 firmas); compromisos escritos de Oracle por 5 años (GPL, ediciones duales sincronizadas, gasto mínimo ~24 M/año); aprobación sin condiciones, enero 2010.
- **El fork gana usuarios, no dinero** [14:57]: MariaDB con alta compatibilidad — Wikipedia (2013), Fedora como default, Red Hat; pero la compañía comercial salió a bolsa en 2022 (~672 M avalados) y en 2024 K1 la compró entera por ~37 M (~0,19 USD/acción): «el clon salvó el código, la firma no logró cobrarlo».
- **PostgreSQL como contraejemplo** [16:31]: nacido en Berkeley (Stonebraker, 1986→1996), sin dueño, licencia permisiva; supera a MySQL en la encuesta Stack Overflow 2023 y amplía distancia en 2025 — señal de hacia dónde miran los proyectos nuevos (el video aclara el sesgo de la encuesta). Epílogo MySQL: despidos reportados por The Register (2025-09, no confirmados por Oracle) y repositorio público >3 meses sin commits (Dev Class, 2026-01); Oracle promete en 2026-02 relanzamiento con hoja de ruta y funciones para IA — sin desenlace.

## Evaluación

- Documental divulgativo sólido con cronología verificable contra fuentes conocidas (fechas y montos mayormente coincidentes con el registro público); cifras de facturación y despidos son estimaciones/fuentes anónimas — señaladas. La lectura económica («lo gratuito no tiene dueño en el código, tiene dueño en las decisiones») es interpretación del canal, bien delimitada.
- Cierre like/suscripción excluido; sin patrocinio.
- ASR garbiñeado normalizado solo donde seguro: «Mywell/MySkiwell/Meskywel»→MySQL, «Skiwell/Eskiwuel»→SQL, «DGPL»→GPL, «InoDibi/Innovase»→InnoDB/Innobase, «San/SUN»→Sun, «María DV»→MariaDB, «Postres SQwell/Postgrés»→PostgreSQL/Postgres, «Gardner»→Gartner, «Michael Stoneaker»→Michael Stonebraker.

## Cruces

- Núcleo de [[bases-de-datos]] (ACID, motores, la carrera MySQL↔PostgreSQL, la encuesta SO ya citada vía WL-257) e [[historia-de-la-tecnologia]] (software libre y modelos de negocio: WL-296 software libre/herramientas, WL-313 historia software/COBOL); la tesis «quién paga decide el rumbo» dialoga con WL-354/355 (harness y pesos abiertos: la gobernanza alrededor del artefacto). Archivo del Futuro 1.ª fuente.

# WL-405 — La Base de Datos que Está Dentro de Casi Todo: SQLite

- **Fuente**: `raw/informatica-teoria/2026-09-11-la-base-de-datos-que-esta-dentro-de-casi-todo-sqlite.md` (`oUPpYo0thFg`, https://www.youtube.com/watch?v=oUPpYo0thFg)
- **Canal**: ARCHIVO DEL FUTURO (2.ª+ fuente WL — entidad ya confirmada en consolidaciones previas)
- **Publicado**: 2026-09-11 · **Duración**: 25:50 · **Idioma**: es (subtítulos automáticos; ASR «Skiwel Lite/SQW Light» = SQLite — normalizado solo aquí)
- **Dominio previsto**: informatica-teoria (historia/infraestructura de software; cruces [[bases-de-datos]], [[archivo-del-futuro]])
- **Tramo**: 66 (relevo 6 de 12 del pedido L34)

## Qué trata

Divulgación sobre por qué SQLite se volvió infraestructura imposible de reemplazar — con lectura crítica de sus propias cifras:

- **Origen (2000)**: Richard Hipp trabajando para un buque de la Marina de EE. UU. — el programa dependía de un servidor caído; SQLite nace para eliminar ese punto de fallo: motor embebido, sin proceso intermediario entre aplicación y archivo. Matiz honesto del propio Hipp: se usó internamente para desarrollar/probar, sin conexión con el cliente. Primeras versiones públicas ese año; adopción temprana vía Palm Pilot y Motorola.
- **Arquitectura**: instrucción SQL → programa de operaciones sobre páginas (máquina virtual propia); transacciones como «una sola decisión» (corte de energía a mitad no deja estados a medias, con orden de escritura/sincronización preciso); WAL (registro de escritura anticipada) como mecanismo temporal en archivo separado; amalgamación en C (un solo archivo + cabecera); VFS como frontera por plataforma.
- **El giro (SQLite 3, 2004)**: nuevo formato, promesa de compatibilidad hacia atrás — dejó de ser interesante por pequeño y pasó a ser importante por confiable. Formato recomendado por el Congreso de EE. UU. para archivos; el proyecto promete soporte hasta al menos 2050.
- **Dominio público, no open source clásico**: sin licencia que negociar, sin contaminación por parches con derechos dudosos (no acepta contribuciones de cualquiera); empresa/marca/consorcio (2007) ≠ biblioteca; negocio invertido respecto a las BD comerciales de la época: regala el componente y cobra soporte/membresías/herramientas (TH3 propietaria financia el proyecto).
- **Cultura de pruebas desproporcionada**: 4 infraestructuras independientes (TH3 para embebidos, QTest con millones de consultas comparadas, fuzzing, etc.), cobertura completa de ramas del núcleo, apagados simulados; lección: «un único arnés comparte supuestos con el programa que verifica». La cifra «100 % de cobertura de MC/DC» se lee con cautela: prioridad, no infalibilidad; las extensiones no tienen la misma cobertura.
- **La cifra más famosa, con reservas**: «motor más desplegado del mundo», «4.000 M+ de teléfonos», «más de un billón (trillion) de bases en uso» — extrapolación razonada de la propia página, no conteo; el video desmonta la formulación «software más utilizado de la historia» como exceso de la fuente.
- **Límites**: un solo escritor a la vez (el congelamiento de una app de escritorio al guardar = escritura esperando turno); delega permisos/auditorías/respaldo a la aplicación; peligro real de poner la base en una carpeta sincronizada como si fuera servicio remoto. Su competidor real no es PostgreSQL: es abrir un archivo / inventar un formato casero.
- **Tesis final**: creció «no solo por las funciones que sumó, sino por las fronteras que decidió no cruzar» — invisibilidad multiplicando copias, compatibilidad décadas, disciplina de estabilidad sobre elegancia.

## Señales de calidad

- Divulgación documentada con lectura crítica de las cifras del propio proyecto (raro y valioso); nombres/claims de 2.ª mano (Hipp/Marina, Congreso, 2050) sin citas al pie — verificar antes de citar como fuente primaria.
- ASR fuerte: «Skiwel Lite/SQW Light/Skiwe» = SQLite, «Hip» = Hipp, «Postg SQL» = PostgreSQL — normalizado solo en el resumen; «bebidas» = embedded.
- Cierre con pedido de suscripción excluido.

## Cruces (consolidación diferida, L12)

- [[archivo-del-futuro]] +1 (canal recurrente: WL-328/335/341…).
- [[bases-de-datos]] — cluster BD grande (WL-246/252/285-287/344/356/384).
- [[historia-de-la-tecnologia]] (WL-328/335/339/356…); contraste modelo de negocio con Phoebus WL-404.
- Tema «fronteras que no cruza» ↔ disciplina de producto (WL-397: eficiencia extrema vs redundancia).

## Consolidación (relevo 2 del pedido L35, 2026-11-16)

Consolidado en `informatica-teoria/`. [[archivo-del-futuro]] +1 (11 WL); alimenta [[bases-de-datos]] e [[historia-de-la-tecnologia]].

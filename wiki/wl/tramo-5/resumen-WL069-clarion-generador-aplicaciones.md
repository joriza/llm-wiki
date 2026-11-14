# Resumen: Clarion — el programa que creaba programas

- **Fuente original**: `raw/wl/tramo-5/2026-10-29-clarion-el-programa-que-creaba-programas.md` (WL-69, tramo 5)
- **URL**: https://www.youtube.com/watch?v=YUVTJVHDtVw
- **Canal**: ARCHIVO DEL FUTURO (histórico-técnico; serie sobre Turbo Pascal, Delphi, Clipper)
- **Publicado**: 2026-10-29 · **Duración**: 25:47 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Qué fue Clarion

Generador de aplicaciones de negocio (1986, DOS, Barrington Systems — Bruce Barrington, cofundador de HBO & Company, informática sanitaria): **describir los datos una vez y dejar que el generador construyera el resto** — pantallas, informes, CRUD. «El programa que creaba programas» cuarenta años antes del vi-coding. El video lo desarrolla con un caso pedagógico constante (distribuidora de repuestos: clientes, pedidos, renglones, facturación).

## La arquitectura metodológica (la parte de mayor valor)

- **Diccionario de datos como pieza central** (Clarion Professional Developer 2, 1988): describir la información y **propagar las decisiones** — si el identificador del cliente cambia de tamaño, todo lo que lo usa se adapta. Decisiones que el diccionario expresa y que las tablas solas no adivinan: ¿qué datos se comparten y cuáles son «fotografía histórica» de la operación (la dirección en la factura del momento, aunque el cliente se mude)?
- **La primera excepción es el corazón de Clarion**: el generador produce la app estándar (CRUD) y ahí aparece el valor del programador que conoce el negocio — «cliente con deuda vencida necesita autorización»; y cada palabra pide precisión («pendiente»: ¿cobrar, entregar o esperando aprobación?). «La distancia entre una aplicación estándar y una terminada explica buena parte de Clarion.»
- **Plantillas + puntos de inserción**: instrucciones pre-escritas que preguntan al desarrollador y producen código; el código propio entra en puntos previstos para **sobrevivir a las regeneraciones** — y elegir el momento exige entender qué ya ocurrió y qué puede cancelarse (una condición después de guardar llega tarde; una solo en el formulario falta cuando los pedidos entran por importación). Los equipos podían mantener plantillas propias o de terceros — división del trabajo entre quien mantiene el generador y quien conoce cada negocio — **con la dependencia** de que todo siga encajando al actualizar.
- Detalles de negocio real: decimales con precisión definida y **política de redondeo** (descuento por renglón vs sobre total producen diferencias según dónde se redondee); concurrencia (dos vendedores venden el último repuesto — la transacción); informes con decisiones («un listado de ventas entregadas y otro de pedidos recibidos pueden mostrar importes distintos y estar ambos bien hechos»).

## La historia de la empresa

- **Jensen & Partners / TopSpeed** (Londres): **Niels Jensen, cofundador de Borland**, se fue cuando Borland compró un compilador de C ajeno (Turbo C) teniendo uno propio casi terminado; su equipo construyó la infraestructura multi-lenguaje → **fusión 1992** → Clarion Database Developer 3.0 (compiladores TopSpeed optimizadores, **controladores de datos** — interfaz común para distintos formatos); primeras entregas con muchos errores corregidos desde Londres. P-Code (Duntemann 1991) y luego compilación nativa — antes de Windows.
- **Windows**: TopSpeed Corporation; 16 bits (1994-95), rama 1.5 (16 o 32 bits; el IDE conservaba componentes anteriores — «la herramienta del programador puede tener arquitectura distinta de la del programa entregado»); Clarion for Windows 2 (1996): herencia y encapsulación; Clarion 4: **ABC** (Application Builder Classes) — el generador produjo código apoyado en bibliotecas de clases: ahorro de código repetido vs más conocimiento necesario para personalizar. **«Esa tensión atraviesa toda la historia de los generadores: la parte que la herramienta automatiza se vuelve una parte que alguien debe comprender cuando aparece un comportamiento inesperado.»**
- Competencia: Clipper (dBase), Delphi, VB, FoxPro, Paradox, PowerBuilder, Access — la elección dependía de bibliotecas propias, soporte y experiencia.
- **SoftVelocity (2000-)**: Robert Zaunere (ex TopSpeed); modernización (Clarion 7 con IDE sobre SharpDevelop/.NET; proyecto Clarion.NET anunciado y eterno — «distinguir lo disponible de lo anunciado tenía consecuencias sobre la inversión»); complementos del ecosistema (CapeSoft File Manager/NetTalk; IceTips) — el caso File Manager: actualizar estructura sin confundir registros, coordinar versiones, backups y comprobación post-actualización. Clarion 12 (mayo 2025, 32 bits; 64 bits en preparación); Enterprise nueva: **2.100 USD** — «a quien factura con su sistema le pesa menos que reescribirlo»; beta Unicode (UString, oct 2026) con depurador que recuerda breakpoints; comunidad viva (Clarion Live).
- **Migraciones** (el archivo de casos): TPS→SQL Server (fechas que llegaban como enteros sin formato previo); Clarion→Windev (una conversión en el punto equivocado corregida moviéndola); Jeff Oyka (ASR «Hoyka/Oica»): su portal Clarion+NetTalk a **Ubuntu vía Wine** — conservó el código y cambió la infraestructura; NetTalk: llevar escritorio a la web = **aplicación nueva**, no port. Tesis del cierre: **«en el sistema que conecta los datos también quedan años de aprendizaje»** — qué conservar depende de costos, personas que pueden mantenerlo y alternativas al cambiar necesidades.

## Notas críticas

- **El video histórico más fino del tramo**: usa el caso pedagógico (la distribuidora) para explicar diccionario de datos, generación por plantillas, puntos de inserción, transacciones y migraciones — sin erroes factuales visibles; fechas y nombres (Barrington, Niels Jensen/Borland, TopSpeed, SoftVelocity/Zaunere, CapeSoft/NetTalk, Duntemann 1991) coherentes con la historia real de Clarion. Tono sobrio, sin hype.
- La tesis metarreferencial clara: Clarion hacía en 1986 lo que Craft Anything/WL-59 promete hoy — y su lección (la primera excepción de negocio es donde empieza el valor del programador) aplica literalmente a la era IA.

## Cruces

- **Dominio destino previsto: `informatica-teoria/`** — clúster historia con WL-64 (Visual Basic — mismo nicho: generadores/4GL de los 80-90) y WL-37 (Verne).
- **WL-59 (Craft Anything)** y **WL-58**: **Clarion = el antecedente directo de 1986** — describir el negocio, generar el 80 %, programar las excepciones con puntos de inserción preservables — la misma arquitectura conceptual del vi-coding 2026, con la misma tensión (automatizado vs comprender lo inesperado). Cruce bidireccional obligatorio en consolidación: «Craft Anything es Clarion con IA».
- **WL-64**: el final de VB6/coexistencia «simply works» repite el ciclo de Clarion (SoftVelocity manteniendo aplicaciones décadas) — el tema **software-que-resiste** (WL-64+69).
- Tema-candidato: **generadores de aplicaciones 4GL (1986-2026): de Clarion a Craft Anything** — primera fuente del tema.

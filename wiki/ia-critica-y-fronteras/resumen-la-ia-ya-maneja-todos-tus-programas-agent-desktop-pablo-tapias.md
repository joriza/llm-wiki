# Resumen: La IA ya maneja todos tus programas — Agent Desktop

- **Tipo**: resumen de fuente.
- **Dominio**: `ia-critica-y-fronteras/`.
- **Fuente original**: `raw/inteligencia-artificial/2026-11-04-la-ia-ya-maneja-todos-tus-programas-agent-desktop-pablo-tapias.md` (subtítulos automáticos, literal) — https://www.youtube.com/watch?v=KkKjpyjn1vI — Pablo Tapias, 2026-11-04 (10:47).
- **Enlaces**: [[agentes-de-codigo]] · [[resumen-el-nuevo-chatgpt-tiene-superpoderes-gustavo-entrala]] (computer use por visión) · [[resumen-asi-se-usa-la-ia-en-2026-olvida-los-prompts-xavier-mitjana]] · [[computer-use]]

## Qué es

**Agent Desktop** (v1.1.0, herramienta gratuita, recién salida): un puente que da a una IA agéntica (Claude Code, ChatGPT, «Hermes») el **control preciso de ratón y teclado** del ordenador — incluso sobre programas sin ninguna conectividad (ERP legacy, PDFs del Gobierno, gestorías sin API ni conectores). El coste está en el modelo agéntico que se use (Claude Code desde ~15-180 EUR/mes según el autor); la herramienta en sí es gratis.

## Por qué no falla como el computer use por visión

La funcionalidad de Claude de controlar el ordenador trabaja con **capturas de pantalla interpretadas por visión**: impreciso, a veces hace clic donde no debe. Agent Desktop en cambio **traduce la interfaz visual a texto** que el LLM interpreta directamente: sabe exactamente dónde está cada campo, qué pone y qué hay que rellenar — deja de adivinar.

## Instalación

1. Se le da el enlace del repositorio a la IA agéntica en una conversación nueva: ella misma descarga el repo, lee todo y usa la herramienta («instalación por el agente»).
2. En Mac: permisos de **accesibilidad y grabación de pantalla** (Claude dejó el comando listo para ejecutar con un clic).
3. Opcional pero recomendado: instalar la **skill** que enseña a Claude Code a manejar la herramienta.

## Tres pruebas, de fácil a «programa del infierno»

1. **Facturas Paco** (app de facturación creada para la demo, representando un ERP típico de gestoría sin conectores): alta de factura con importe e IVA por voz. Falló al principio, lo reintentó varias veces y finalmente la grabó con factura 001. Un **puntero azul** con etiquetas indica dónde actúa la IA (el ratón humano sigue siendo el negro).
2. **Solicitud del NIE en Vista Previa (PDF del Gobierno de España)**: rellenar casilla a casilla con los datos de un archivo local, casilla a casilla, y guardar al acabar. Rápidísimo una vez entendidos los campos — sin capturas ni adivinanzas.
3. **Gestión Rufino 2003** («programa del infierno», app de gestión de 2003 sin conexión posible con ninguna IA): alta de tres clientes desde un documento. El autor le **complica la vida moviendo las ventanas** y el agente relocaliza los campos y sigue; incluso puede abrir otra app encima y el agente trabaja de fondo, sin perder la referencia.

## Mensaje de cierre

Recapitulación del autor: «le he dado a Claude el ratón y el teclado de mi ordenador» y en ningún momento tocó el ratón. La propuesta de valor: automatizar programas de hace 20 años que no se conectan con nada, en lenguaje natural.

## Notas sobre la fuente

- Garbiñeos corregidos: «Cloud» = Claude; «Hermes» según lo pronunciado (¿homónimo del agente local? no verificado); «Rufino 2003» y «Facturas Paco» son apps de la demo, no productos reales.
- Título del raw corregido el día de la ingesta (venía como UNKNOWN del proceso de descarga).
- Autopromoción: mentorías gratis de los domingos, grupo de WhatsApp, comunidad — excluida de la síntesis.
- Sin patrocinios identificables.

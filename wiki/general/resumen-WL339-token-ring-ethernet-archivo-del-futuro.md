# WL-339 · Token Ring: por qué Ethernet le ganó a la red de IBM

- **Fuente**: [`raw/general/2026-09-24-token-ring-por-que-ethernet-le-gano-a-la-red-de-ibm.md`](../../raw/general/2026-09-24-token-ring-por-que-ethernet-le-gano-a-la-red-de-ibm.md) — vídeo de YouTube `FhckjDk-WNU`
- **Canal**: ARCHIVO DEL FUTURO
- **Publicado**: 2026-09-23 · **Duración**: 25:16
- **Tipo**: divulgación histórica (historia de la tecnología/redes)
- **Dominio destino sugerido**: general (historia de la tecnología) o informatica-teoria

## Tesis

Token Ring era técnicamente superior (sin colisiones, latencia calculable, reparto justo del canal) y aun así perdió la oficina frente a Ethernet: no votamos la mejor tecnología sino la más barata de probar, equivocarse y abandonar. La lección vigente: en mercados de compatibilidad, gana la opción de bajo coste de error, no la mejor ingeniería.

## Puntos clave

- **El problema que IBM quería resolver** [01:02]: el cable compartido (CSMA/CD) colapsa justo cuando más se usa — más tráfico, más colisiones, más lentitud. Los clientes de IBM (bancos, aseguradoras) exigían una respuesta contractual: «¿cuánto tarda la más lenta con 200 terminales?» — «depende» no se firma en un directorio.
- **El anillo con testigo** [02:25]: un token circulante; solo habla quien lo retiene; el mensaje da la vuelta, la destinataria copia y el emisor lo retira. Las colisiones no se gestionan: **desaparecen como categoría**. Latencia máxima calculable en tabla para la propuesta comercial, y justicia política: la máquina más humilde tiene el mismo derecho a hablar que el servidor.
- **Llegada tardía y autoinfligida** [04:40]: IBM quería arquitectura completa (cable, conectores, chips, software), no una placa; anuncio de intención 1982 con Texas Instruments, producto 1985-86. TI avisó con contrato firmado que llegaba un año tarde; la norma IEEE 802.5 se aprobó en octubre de 1984, un año después de la 802.3 — cuando el rival llevaba >10 años existiendo y 5 vendiéndose.
- **El cable como trampa** [06:55]: cable tipo 1 blindado y rígido, conector «hermafrodita» exclusivo, MAU IBM 8228 con relés mecánicos (la red «se oía»: clic al enchufar cada estación), 8 estaciones por caja, armarios de cableado que obligaban a pensar el edificio entero. Costo Carnegie Mellon 1985: 7-8 M USD para 10.500 puestos (~700-800 USD/puesto en 1985) frente a placas rivales ya a ~600 USD y conexiones que en 1980 costaban 3.000-4.000 — el precio del sector se desplomaba mientras IBM llegaba con sistema completo.
- **La patente de Söderblom** [10:07]: un tercero ajeno a IBM cobraba 2-3 % de cada placa por una patente (prioridad 1967, concedida 1981) sobre redes en lazo — que no cubría el anillo con reparto igualitario, pero sí daba base legal para litigar; ~20 M USD recaudados a 1990. Peaje fijo que encarecía a todo fabricante de anillo mientras el rival bajaba precios.
- **El momento de gloria** [12:47]: 1988, segunda generación 16 Mbit con liberación anticipada del testigo (varios mensajes en vuelo); 1990: IBM con 57,7 % del mercado de placas 4 Mbit y 92,6 % del de 16 Mbit — ~4 de cada 5 placas del planeta. Dominio casi total = techo: mercado sin aire para terceros.
- **El año doble golpe de 1990** [15:32]: junio — tribunal británico declara inválida la patente (litigada por Robert Match/Madge Networks), aunque la americana siguió cobrando hasta 1998 (licencia de Standard Microsystems 1992, arbitraje Proton resuelto 1994, fallo de apelaciones 1997). Septiembre — norma 10BASE-T: el mismo cable compartido a 10 Mbit sobre par trenzado telefónico ya tendido, conector RJ45 de centavos, 100+ fabricantes compitiendo en 1991 contra un catálogo de uno.
- **Los números del vuelco** [20:41]: 1991 — 1,4 M placas de anillo vs 2,2 M del rival (<2×); 1995 — 3,8 M vs 23,7 M (>6×). El anillo nunca dejó de crecer: creció como una empresa sana junto a un continente. Última jugada (Token Ring de alta velocidad, 100 Mbit) vaciada cuando Cisco se baja en 1998 alegando falta de demanda. Muerte comercial fechable: abril de 2003, quiebra de Madge Networks.
- **La lección** [24:04]: «¿Cuánto cuesta probar, equivocarse, cambiar de idea?» El anillo exigía tener razón desde el principio (cable, conector, proveedor, licencia); el rival permitía ir aprendiendo con un error de 3 USD. Vigencia: cada elección hoy de plataforma cerrada y completa sobre pieza descartable repite la decisión de 1990.

## Evaluación

- Divulgación documentada del canal (fecha de anuncios, cifras de mercado, expedientes judiciales, cita de Flint 1985); la propia voz narrativa corrige el error común sobre la patente de Söderblom [11:14] — buena honestidad epistémica.
- ASR dañó algunas cifras («18,0000», «213,0000000», «482 m,0000») — reconstruidas por contexto (millones de USD) solo aquí, no en el raw; señalado.
- ASR de nombres: Zich→Zúrich, Surik/Soderblom→Söderblom, Match/MCH→Madge, Lanet→Lannet — normalizados solo en el resumen.
- Sin patrocinio detectado.

## Cruces

- Cluster historia de la tecnología establecido: WL-328 (Microsoft Works, techo de segmentación), WL-335 (Maxtor, caída industrial), WL-313/200/117/323; [[historia-de-la-tecnologia]].
- Tema compartido con WL-334 (coste de decisiones de diseño/arquitectura) y con la tesis transversal «el estándar abierto barato vence al sistema propietario completo» (eco de WL-323, laptops ODM vs marcas).
- ARCHIVO DEL FUTURO: +1 fuente (entidad recurrente WL-328/335, actualizar en consolidación).

# WL-181 · SE ACABÓ EL SOFTWARE

- **Fuente original**: `raw/ia-critica-y-fronteras/2026-10-23-se-acabo-el-software.md`
- **Video**: [SE ACABÓ EL SOFTWARE](https://www.youtube.com/watch?v=NNWfRubvM5o) · Canal: DotTech-ES (Carlos Caballero) · Publicado: 2026-10-23 · Duración: 30:19
- **Dominio previsto** (consolidación diferida, L12): `ia-critica-y-fronteras` o `general` (industria del software/IA — panorama de noticias; cruces candidatos con WL-177 mismo tema de seguridad, WL-165, [[agentes-de-codigo]])

## Tesis central

El coste de copiar software se ha desplomado con los agentes de IA capaces de leer descompiladores (Ghidra, IDA Pro): copiar ya no protege la barrera de entrada; lo caro ahora es demostrar que algo es tuyo. El vídeo recorre la semana de octubre de 2026 en que esta tesis pasó de teoría a episodios concretos.

## Cadena de evidencia

- **Precedente histórico**: Threes! → 1024 → 2048 (2014): copiar la *idea* ya era barato sin código fuente. Lo caro era copiar la *receta* — ejemplo: el desensamblado byte a byte de Super Mario 64 en C, años de trabajo de aficionados.
- **El catalizador**: repositorio **REA (Reverse Engineer Anything)** de «Morluto» (abril 2026): MCP que conecta agentes (Claude Code, Codex) con Ghidra e IDA Pro. De 2 estrellas en julio a 350.000+ el 20 de octubre (top-10 de GitHub). No devuelve código fuente sino pseudocódigo; incluye aviso legal. Apareció además un REA falso troyanizado.
- **Prueba de concepto profesional**: Maurice Heumann (momo5502, ingeniero de sistemas anticopia) y grupo pequeño: 99 % de funciones de un juego comercial descompiladas, 83 % byte a byte idénticas al original, en 3 meses con Claude + Codex, 600–700 M de tokens, hasta 16 agentes en paralelo.
- **Jugador-parcheador**: LT_Sharpe publica (17 oct) un fix para los tirones de Oblivion Remastered construido con Claude: ~40 parches en caliente, +40 % fps, tirones de 19 a <5.
- **Los clones de Brandon Thomas** (FakeYou/Arcraft): 13 clones de software mayor (Photoshop, Premiere, Word, Excel, Figma…) escritos con IA de Anthropic en Rust, «sala limpia» sin ver código. El propio repo admite que el clon de Photoshop está al 45 % para uso profesional (falta 2.300–4.000 h de agentes). HSBC rebajó la recomendación de Adobe citando Arcraft; Adobe no ha respondido. Guadamuz (Univ. de Sussex): la sala limpia «no sabemos si aguantaría un examen».
- **Reacción del sector**: Alliance Arts cancela la demo de Drankin' God: Reflux en Steam Next Fest por miedo a clones con IA; Digital Sun (Valencia, Moonlighter) encoge la prueba de Revamp a Discord/invitaciones — sin mencionar IA explícitamente. Libro Blanco de DEV (España): 53 % de estudios usa IA; 46 % ve impacto negativo vs 43 % positivo. Encuesta GDC: 36 % la usa, 52 % cree que daña el sector. Caso Tetris-prototipo en Bluesky: 4 clones en días.
- **Epic en contra**: Tim Sweeney (12 oct) anuncia giro masivo a IA y «nueva edad de oro»; Bloomberg (fuentes anónimas) cuenta cancelación del proyecto con Disney y el «se acabó el código escrito a mano». Choque público con Kenney (assets libres). Misma semana, EA cierra BioWare (~400 personas) sin mencionar IA.
- **Legal**: directiva europea 2009 — ideas/funcionalidad sin copyright; descompilación solo por interoperabilidad; cláusulas que prohíben estudiar son nulas (caso SAS Institute, TJUE 2012). EE. UU.: Thomson Reuters vs ROSS (no uso legítimo, no generativo); caso Tetris 2012 (mecánica copiable, aspecto no). Cloudflare porta TypeScript a Rust «casi solos» con IA (20 oct) — tecnología dice días, ley dice permiso.
- **Plataformas como árbitros**: Spotify purga 50 M de pistas «basura» (mayoría IA) y el mismo día anuncia remezclas con IA de pago con Believe; Deezer: ~90.000 pistas IA/día (85 % de escuchas fraudulentas). Apple endurece norma contra ofuscación post-revisión. Photopea (Kutskir): 6 semanas para que GitHub retire 11 repos que le quitaban los anuncios con IA.

## Lado oscuro (seguridad)

- Claroty + Claude + Ghidra: control total de un controlador Danfoss en ~28 minutos y ~6 USD reproduciendo fallos ya conocidos (no descubrimiento autónomo) — acortamiento del tiempo parche→explotación.
- Quentin Kaiser (OneKey): fallo en WPS del kit Broadcom (desde ~2010), control admin del router sin contraseña; afectados: Movistar, O2, MásMóvil, Telmex; sin parche a mediados de octubre; apagar WPS no garantiza nada. Investigación: <1 semana con IA.
- «PHP to Shell» (20 oct, Wiz/Qualys/OpenAI): 2 fallos graves en PHP (~70 % de la web), RCE sin credenciales en configuración expuesta; parche al día siguiente; una década latente y explotable gracias a IA en una semana.

## Ráfagas finales

- TJUE (15 oct): ante fraude con web falsa, el banco debe devolver primero (día hábil siguiente) y reclamar después; vigente en toda la UE.
- Waymo inicia fase manual en Madrid (Alcobendas, Getafe; pasajeros objetivo 2027); Uber+WeRide con primer permiso nacional nivel 4 (20 coches, servicio comercial antes de fin de 2026); falta aún la autorización de transporte de viajeros (terreno taxi/VTC).
- Cursor pasa a ser de SpaceX/Musk: paquete con Grok y X Premium (8 USD/mes solo modelos propios; Claude/GPT/Gemini desde 30 USD + API aparte); OpenAI corta sus modelos a Cursor el 12 nov.
- Cierre autopromocional: BiznagaFest (GDG Málaga, 7 nov) con sorteo de entradas — excluido de la síntesis.

## Valoración para la wiki

Divulgación periodística española con fechas y cifras verificadas por el autor (dossier con fuentes tras muro de membresía, señalado). Buena fotografía del quiebre octubre-2026 del software: REA + clones de Thomas + demos canceladas + jurisprudencia. Complementa WL-177 (misma ola de incidentes PHP/seguridad) desde la óptica de propiedad intelectual e industria, no solo técnica.


## Ver también

- [[agentes-de-codigo]]
- [[cancelacion-adaptativa-ruido]]
- [[seguridad-fuera-del-modelo]]

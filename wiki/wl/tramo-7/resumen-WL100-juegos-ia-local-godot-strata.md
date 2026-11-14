# Resumen: Desarrollando juegos con IA local — Godot, OpenCode y tokens ilimitados (Strata)

- **Fuente original**: `raw/wl/tramo-7/2026-11-03-desarrollando-juegos-con-ia-local-crea-videojuegos-con-godot-y-tokens-ilimitados.md` (WL-100, tramo 7)
- **URL**: https://www.youtube.com/watch?v=WkaDb-1MOCY
- **Canal**: Nichonauta
- **Publicado**: 2026-11-03 · **Duración**: 25:35 · **Idioma**: es (subtítulos automáticos, transcripción literal)

## Tesis central

Demo de extremo a extremo de desarrollo agéntico con IA local: un juego (demo battle-royale isométrico estilo Fortnite, con multijugador local/IP pública por UPnP, exportado a Windows/Linux/Android) hecho en ~24 h de cómputo con **Godot** dirigido por el modelo **Qwen 3.8 Flash Next** (ASR; 262k de contexto nativo) vía el servidor local **Strata** + **OpenCode** + MCP de Godot — «yo fui el jefe del proyecto, Qwen gratis en mi PC fue el desarrollador». La honestidad del autor marca el tono: «no significa que el juego se hizo solo, aunque casi»; el menú «es horrible», es un prototipo funcional.

## El juego demostrado

- Vista isométrica, equipos/individual, niveles de dificultad, mapa aleatorio, controles/marcadores/inventario; decisión de diseño propia (disparar desde la sombra mientras uno cae) atribuida explícitamente a elección humana, no error. Exportado a 3 plataformas; fallo conocido en desktop (personaje de selección no visible) — muestra realista de calidad «prototipo».
- Próximo video: los modelos 3D (también hechos por el LLM) con **Blender + un MCP dedicado** — «con puro Godot no queda tan bien» (pipeline Godot-MCP + Blender-MCP).

## El hardware y las dos cuantizaciones

- PC doméstico: Ryzen 5 5600G, 128 GB RAM DDR4, RTX 3060 12 GB en PCIe 3.0 (la gráfica recomendada para esto), RX 6600 aparte solo para monitor/grabación — «hardware típico de hogar, no centros de datos».
- **Q2 (Unsloth/«Insta Das Lab» ASR, ~66,4 GB)**: contexto completo 262.144 tokens, KV-cache en 8 bits, MTP (speculative decoding, «spec 3») activo, N-grams en RAM; procesamiento >700 tok/s, generación ~51-55 tok/s (Tetris HTML5 completo: 25.496 tokens a ~55,5 tok/s), GPU llena pero temperatura baja.
- **UDQ4_KXL** («un slot en UDE» ASR): mismo modelo más pesado (4 bits, más calidad), N-grams movidos a NVMe; procesamiento ~300-375 tok/s, generación ~21,8-25 tok/s. Conclusión práctica: la pérdida de velocidad la da el tamaño, no la lectura de NVMe («es ínfimo»); y más contexto no implica peor velocidad — depende de la tarea; **el MTP acelera más la generación de código** que la de razonamiento/prosa.
- Matiz metodológico: benchmarks ya existen por doquier — este video mide rendimiento real en hardware de hogar y día a día.

## El flujo agéntico (OpenCode + Strata)

- Conexión de OpenCode desktop a un endpoint local: el asistente gráfico («Generic OpenAI/Custom») **no alcanza** para ajustar lo que importa — hay que editar `~/.config/opencode/opencode.json`: proveedor estilo OpenAI-compatible, API key cualquiera, variante de esfuerzo de razonamiento (default high), entrada texto+imagen, límites de contexto basados en las 262.144 nativas. Resultado: modelo funcional en OpenCode (compactación automática, envío de imágenes, cambio de esfuerzo — todo verificado en vivo).
- Uso agéntico real: «investiga cuál es la versión más reciente de Godot sin C# y descárgala» → navega, verifica checksum de Godot 4.7.2, descomprime (se equivocó en un comando de PowerShell y lo corrigió solo).
- Instalación del **Godot MCP** por orden del modelo: entendió requisitos (Node.js), configuró, probó («devolvió la versión de Godot») → 14 herramientas disponibles conectadas sin reiniciar. Fin: modelo local bueno + tokens ilimitados = «programando todo el día sin preocuparnos por límites, disponibilidad, caídas o precios».
- Cierre con la advertencia honesta: no es que sea la opción más barata ni gratis-siempre-gana — es un «conjunto de necesidades y preferencias»: sin límites, privado, siempre disponible, sin suscripciones.

## Notas críticas / ASR a corregir

- ASR sistemático: «MSP» = **MCP**; «Strata/Estrata» = nombre del servidor local (verificar grafía oficial — el canal tiene documentación previa); «Qwen 3.8 Flash Next» y «262.144 tokens nativos» verificar contra specs reales; «Insta Das Lab» = Unsloth; «un slot en UDE» = Unsloth UDQ4_KXL; «Cloud Desktop» = Claude Desktop.
- Contenido de canal especializado en IA local (fuentes primarias del propio ecosistema: Strata documentada en su repo); los números de velocidad son mediciones en vivo del autor, con las salvedades que él mismo declara (prompts cortos → cálculos sin sentido, grabación afecta).
- Sin patrocinio detectado; gancho de like/suscripción excluido.

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (vi-coding con IA local; alternativa ia-uso-practico — decidir en consolidación).
- **[[opencode]]**: entidad existente — este video es tutorial directo de configuración OpenCode+endpoint local (cablear en consolidación).
- **[[qwen]] / [[gemma-4]] / [[llama-cpp]]**: familia ia-local; Qwen 3.8 Flash Next como modelo de desarrollo agéntico actualiza el clúster de modelos.
- **WL-82 (Gentle Dot, MCP-first) / [[hardware-agentico-mcp-first]]**: mismo patrón MCP para todo (Godot-MCP, Blender-MCP próximo) — tercer caso del tema.
- **WL-58/59 (ArtCraft/Craft Anything)**: línea de «agentes que construyen software completo»; acá el ámbito es videojuegos.
- **WL-53 (límites IA)**: el autor matiza honestamente la calidad («menú horrible», «no es que se hizo solo») — contrapunto informado al hype.
- Temas-candidatos: **ia-local-como-dev-diario** (tokens ilimitados vs suscripciones; con [[hardware-para-ia-local]] — umbral amplio); **mcp-para-todo** (Godot/Blender/lo-que-sea).

## ADVERTENCIA

Nombres de modelos/cuantizaciones garuñados por ASR — verificar contra el canal/repo antes de citar cifras; mediciones de un solo equipo.
- **Entidad**: [[opencode]] — actualizada con este tutorial directo (2026-11-14). **Página de concepto**: [[hardware-agentico-mcp-first]] — tercer caso MCP-para-todo (actualizada 2026-11-14).

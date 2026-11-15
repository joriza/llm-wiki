# Resumen: Me hice mi propio asistente de IA (open source) — por qué y cómo

- **Fuente original**: `raw/agentes-de-codigo/2026-11-04-me-hice-mi-propio-asistente-de-ia-open-source-por-que-y-como.md` (WL-82, tramo 6)
- **URL**: https://www.youtube.com/watch?v=mXQEpPqhOqU
- **Canal**: Gentleman Programming (Alan Buscaglia — autor del ecosistema Gentle AI con que corre este proyecto)
- **Publicado**: 2026-11-04 · **Duración**: ~13 min · **Idioma**: es (subtítulos automáticos, transcripción literal)

## El contenido fáctico (lo citable)

- **El problema**: los asistentes de IA viven en una pestaña, se olvidan del usuario entre chats y no pueden tocar nada fuera del navegador. **Gentle Dot** = su respuesta: a una tecla de distancia (Alt+Espacio), **una sola conversación** (sin lista de chats; al crecer, rota sesión nueva con resumen — «rápido y barato»), memoria real con **Engram** (proyecto propio + Engram global), y **control del Mac**: ve la pantalla (marcada con brillo rosa), hace clics, escribe, abre aplicaciones — con modelo open source (demo con **DeepSeek V4 Flash**).
- **Las tres capas** (la arquitectura, explicada antes de tocar código): (1) **la cara** — app de escritorio en **Tauri 2 (Rust)**: dibuja el panel, atajos globales, helper nativo de control de pantalla y voz; misma UI en React para navegador. (2) **el cerebro** — daemon pequeño en **Node 24**: levanta el agente como proceso hijo, le pone identidad, lo reinicia si cae, traduce eventos a su protocolo **WebSocket** propio. (3) **el agente** — **Gentle Shell** (Pi + ecosistema Gentle AI + Engram) corriendo en **modo RPC** (JSON por stdin/stdout), invisible como *white label*.
- **Modo RPC**: integración independiente del lenguaje, separación de procesos, permite IDEs propios e interfaces custom.
- **Decisiones de diseño (lo más citable)**:
  - **White label, no fork**: no reescribe el agente — reutiliza y le pone otra cara; «no quise sobreingeniería».
  - **Las reglas de control de pantalla viven FUERA del agente**: permiso de sesión con vencimiento, **botón de pánico** (Alt+Shift+Esc), lista negra (gestores de contraseñas, ajustes de sistema), regla de «no controlarse a sí mismo» (el agente desaparece cuando saca screenshot), confirmación de acciones riesgosas (enviar/pagar/borrar). Argumento central: **«si la regla vive dentro del agente, el agente se la puede saltear»** — por eso la controla la app en Rust, no el modelo. Igual con la aprobación de conectores: diálogo nativo que el agente no puede contestar.
  - Honestidad: los comandos de shell del agente se chequean **best-effort** — por eso es *early preview* comunitario.
  - **Conectores vía proxy MCP propio**: el agente y subagentes solo llegan a los conectores a través del proxy del daemon (que esconde lo que el modo no permite); credenciales al **Keychain** del Mac (nunca al chat ni a archivos); `connectors.json` firmado.
  - **Contexto economicizado**: cada llamada al modelo lleva solo la última captura (las anteriores → una línea de log); las screenshots se comprimen; la sesión rota con resumen al crecer. Motivo técnico: las fotos de pantalla llenan la ventana de contexto.
  - **Motor aislado**: home propio `~/.gentle-dot` — nunca toca el setup personal de agentes.
- **Construido con su propio flujo**: «Yo dirijo, la IA ejecuta — soy Tony Stark y mi agente es Jarvis» — construido **con ODD** (tasks con objetivo, specs con *acceptance criteria*, checks, decisiones, logs; «bitácora de capitán» que otro agente lee para saber qué se hizo, qué no hacer, qué ya se probó y no vale reintentar).
- **El despliegue VPS**: mismo daemon/código en servidor; navegador con su propia memoria/Engram en contenedor **sin control de pantalla** (eso lo da solo la app de escritorio) pero con shell propia dentro del contenedor. Seguridad: solo HTTPS, puerto 4317 nunca expuesto, contenedor solo en loopback, dos candados (contraseña web + access key), **tres usuarios del sistema** (daemon root con capacidades mínimas, agente `dot`, conectores `dotmcp`) — «el agente no puede leer la key no porque le pida que no, sino porque el SO no lo deja»; secretos AES-256-GCM con clave solo en el entorno del daemon; **PIN para lo importante que el asistente nunca ve**. Pasos de despliegue en HostGator (subdominio, repo en /opt, .env, docker compose, health, token, AutoSSL/htpasswd en cPanel) — y la recomendación de seguridad al delegar: **que el agente cree un script que genere las contraseñas y las devuelva a vos, sin que el agente las lea**.
- **Licencia**: open source MIT, repo público; advertencia honesta: es un preview con shell que puede tocar tu computadora — usarlo donde estés cómodo.

## Valor y advertencias críticas

- **La parte valiosa**: es la **referencia primaria del corpus sobre la arquitectura de un asistente desktop sobre Gentle Shell**: capas cara/cerebro/agente, RPC mode, y — sobre todo — el principio de seguridad **«las reglas que el agente no puede saltear viven fuera del agente»** (app nativa en Rust, usuarios del SO, PIN invisible). Ese principio es la síntesis operativa de todo el eje «la IA no supervisa a la IA». Además documenta *el flujo ODD aplicado a sí mismo* (el ecosistema construido con su propia metodología).
- **Advertencias**: video promocional (descuentos de patrocinadores mencionados: NaN/DeepSeek, HostGator Black Friday); honesto sobre lo que falta (shell best-effort); ASR: «pi» (Pi), «virgulilla barra punto» (~/.), «gentle guion dot» (gentle-dot), «4317» (probablemente 4317 o 4317→gRPC-OTLP; verificar el puerto real en el repo), «videíneo» (ASR de «video»).
- Fechas coherentes con el corpus (noviembre 2026, DeepSeek V4 Flash).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** — fuente central del eje Gentle AI. Cablear bidireccional con gentle-ai, odd, páginas de Engram si existen (páginas aún no creadas); probable **página de entidad `gentleman-programming`** (2+ fuentes en el corpus: WL-78 lo cita, WL-25 menciona DeepSeek; esta es la primera fuente SUYA).
- **Cruce principal con WL-78** (Eric Risco sobre SDD/ODD): Risco describió ODD de oídas y lo criticó por la clasificación; este video es la contraparte — ODD «bitácora de capitán» usada para construir el producto. Par docu: **la misma metodología vista desde fuera y desde dentro** — candidato directo a página de concepto «ecosistema gentle-ai» o «reglas fuera del agente».
- **Cruce de seguridad**: el principio «la regla fuera del agente» ↔ WL-68 (supervisión humana insostenible) y ↔ el patrón del eje: permisos, botón de pánico, PIN invisible = implementación concreta de «el agente no puede decidir sobre sí mismo» (también WL-80: «YOU ARE WRONG» — ownership de decisiones).
- **Autoreferencia documental**: este mismo proyecto wiki corre sobre ese ecosistema (ODD, Engram, Pi) — registrar en la consolidación que la fuente describe la infraestructura con que se escribió el propio resumen.
- **Páginas de concepto/entidad**: [[ambiguedad-rellenada-por-el-sistema]] («reglas fuera del agente»), [[hardware-agentico-mcp-first]] (el proxy MCP como frontera de permisos) y [[gentleman-programming]] (entidad actualizada: fuentes 5→7 con WL-52) — creadas/actualizadas 2026-11-14.

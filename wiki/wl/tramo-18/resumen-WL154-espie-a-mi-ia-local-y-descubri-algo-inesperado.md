# WL-154 · Espié a mi IA local… y descubrí algo inesperado

- **Fuente original**: `raw/wl/tramo-18/2026-10-26-espie-a-mi-ia-local-y-descubri-algo-inesperado.md`
- **Video**: [WdOLEwGuEN8](https://www.youtube.com/watch?v=WdOLEwGuEN8)
- **Canal**: Cognix · Publicado 2026-10-26 · Duración 15:52
- **Dominio previsto** (consolidación diferida): ia-uso-practico/ia-local (seguridad/privacidad; cruce natural con WL-147 y WL-132, mismo canal)

## Qué trata

Auditoría empírica de qué hacen en la red las cuatro apps principales de IA local (Ollama, LM Studio, Jan, llama.cpp) en una Mac mini, como respuesta a un video viral previo (~400 k vistas) que hablaba de riesgos "sin mirar un solo paquete". Metodología: captura de paquetes (tcpdump sobre la interfaz de captura de macOS, con proceso etiquetado), canarios (contraseña y SSN falsos) sembrados en prompts, y contrastación con código fuente. Tesis central: **local ≠ sin conexión ≠ privado** — el chat local sí es privado (cero paquetes en los cuatro), pero todo lo que la app hace alrededor del chat no lo es.

## Hallazgos por aplicación

- **El chat local cumple la promesa**: Qwen 3.5 (4B en Ollama, 8B en LM Studio, mismo modelo en llama.cpp) — cero paquetes, cero DNS durante cada chat. El problema es "todo lo que la aplicación hace alrededor".
- **Ollama**: contacta ollama.com al arrancar (lista de modelos en la nube + recomendaciones cada 4 h, firmadas con una clave generada en silencio); la app de escritorio verifica actualizaciones **cada hora** (inreportable: desactivar auto-update solo frena la descarga; issue abierto desde mayo 2024) y manda identificador de dispositivo en Mac.
- **LM Studio**: al abrirlo de cero descargó ~170 MB sin tocar nada (motores/extensiones); las búsquedas de modelos van a `search.lmstudio.ai` y las descargas salen de sus servidores vía **proxy de Hugging Face activado por defecto** — LM Studio ve tus intereses en lugar de Hugging Face, contradiciendo su propia documentación offline.
- **Jan**: buscó actualizaciones y descargó sin preguntar un modelo de embeddings (~50 MB) desde su espejo de Hugging Face; su código fuente indica búsqueda web por defecto vía Exa (no verificada en la prueba).
- **llama.cpp**: cero conexiones, no registra prompts — pero su servidor responde a cualquiera sin clave de API (CORS permisivo: "cualquier página que llegue a localhost podría usar tu modelo"; presentado como "podría", no probado con navegador real).

## Los hallazgos más serios (Ollama + nube)

- **Modelos cloud camuflados**: aparecen junto a los locales en `ollama list` (única pista: guión en la columna tamaño); los errores ya tienen embudo de ventas (sugieren el plan gratuito).
- **Config y agentes**: su integración con Open Code apuntaba a un modelo cloud sin saberlo — el código puede irse a la nube por una herramienta "local".
- **OLLAMA_HOST=0.0.0.0** (guía común para usarlo desde el celular): cualquier dispositivo del Wi-Fi lista modelos, corre modelos locales en tu GPU **y usa tu cuenta cloud con tu cuota**, sin contraseña; el endpoint `api/me` devuelve nombre, correo y plan sin login; además **desactiva la defensa anti DNS-rebinding** (check de host header → 403→200). Caso NVIDIA Nemo Cloud (agosto): plantilla de modelo local reescrita desde una página web maliciosa usando exactamente esa brecha. Firewall de macOS viene apagado por defecto.
- **`OLLAMA_NO_CLOUD=1` funciona a medias**: corta paquetes en reposo y rechaza modelos cloud, pero `api/me` sigue saliendo a ollama.com y el verificador horario de la app de escritorio no queda cubierto — "menos nube", no sin nube. Solución limpia: cerrar sesión.
- **Prompts en disco**: historial de Ollama en texto plano (sin opción de apagarlo, razonable); el servidor local de LM Studio **escribe cada prompt completo en un log legible por todos** (permisos no restringidos al usuario). Spotlight no indexa ninguno (carpetas ocultas).

## Contexto de amenaza y remediación

- 175.000 servidores Ollama expuestos en 130 países (SentinelLabs/Clavis); ~1/3 de 5.000 expuestos responde sin autenticación (Intruder); honeypot de Kaspersky encontrado en ~3 h con 113.000+ pedidos en un mes (buscan cómputo gratis y archivos con claves). Trampa Docker: el comando documentado por Ollama publica el puerto en todas las interfaces y **los puertos publicados de Docker se saltan UFW**; `127.0.0.1:` delante lo arregla.
- Caso ilustrativo (noviembre): intrusión en la consola cloud de Open Code expuso claves guardadas en la nube (cargos de hasta ~1.700 US$); las claves de las apps locales nunca fueron tocadas — "lo que robaron fue la capa de comodidad en la nube".
- Correcciones de mitos: la fuga de memoria de llama.cpp se corrigió en 0.17.1 (no "sin parchear <0.30.1"); bug de root en Docker corregido en 0.35; versión actual 0.40.11.
- Recomendaciones finales: chatear solo con modelos locales está bien; app de escritorio de Ollama avisa cada hora (decidir o usar el servidor simple); revisar `ollama list` e integraciones por modelos "cloud"; deshacer los cuatro ceros y usar Tailscale o proxy inverso con contraseña; vaciar logs del servidor de LM Studio; clave de API en llama-server; activar el firewall de macOS; monitorizar con LuLu (gratis).

## Notas de triage

- Metodología declarada y reproducible (captura de paquetes, canarios, contraste con código fuente); límites admitidos explícitamente: tráfico cifrado (se ve el sobre, no la carta), pruebas de minutos en una sola Mac, afirmaciones internas marcadas según su fuente.
- Cruce natural con WL-147 y WL-132 (mismo canal, [[cognix]], seguridad de IA local); también con WL-150 (eonomía de hardware conectado/vigilancia).
- ASR normalizado solo aquí; nombres de herramientas con errores de reconocimiento en el raw ("Pica Tap" = PKTAP, "Oyama"/"Bleeding llama" = Ollama/llama.cpp).

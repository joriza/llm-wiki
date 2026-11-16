# WL-294 — «Qué hace un balanceador de carga en una aplicación real» (Torti Code)

- **Fuente original**: `raw/wl/tramo-43/2026-09-24-que-hace-un-balanceador-de-carga-en-una-aplicacion-real.md` (espejo de `.atl/scratch/ver-mas-tarde/`)
- **Video**: https://www.youtube.com/watch?v=OI-shxUoK0U · Canal Torti Code · Publicado 2026-09-23 · 12:27 · Subtítulos automáticos es
- **Tramo**: 43, fuente útil 4/5 (posición 106 de 4686)
- **Dominio destino sugerido** (S4, sin dominios nuevos): general-informatica-teoria (infraestructura/DevOps; cruces WL-286/287 Torti Code, WL-160 DevOps, WL-252/246)

## Qué es

Explicación didáctica (12 min, Torti Code, con demo en contenedores) del **balanceador de carga** usando HAProxy real: qué es, cómo se configura (frontend/backend, round-robin, health checks) y qué cambia al apagar una copia — con analogía sostenida del centro de copiado.

## Puntos clave

- **Concepto**: el balanceador reparte solicitudes entre varias copias idénticas de una aplicación (cada copia hace trabajo completo, no reparten una hoja entre tres); actúa además como **proxy inverso** — el navegador habla solo con una dirección (la del balanceador) y nunca ve las direcciones internas de las copias. Alternativas reales: HAProxy dedicado, NGINX (web+balanceo) o servicios administrados (ALB de AWS).
- **Configuración HAProxy**: sección `frontend` (entrada, `bind` :8080) → `default_backend`; sección `backend` con líneas `server` por copia; `balance roundrobin` = reparto por turnos con pesos iguales; timeouts para no retener recursos con conexiones muertas; editar el archivo no cambia el proceso vivo (hay que recargar la configuración).
- **Demo**: 3 contenedores de la misma tienda + 1 HAProxy en la red interna (nombres DNS de contenedor, todos en :8000 con redes separadas); marca en la respuesta para ver el turnado (6 consultas → 2 por copia); las copias leen el mismo catálogo — replicar el programa no sincroniza datos, el estado compartido (BD) es responsabilidad aparte.
- **Estado y afinidad**: el usuario no queda unido a una copia — un carrito en memoria de la app 1 «desaparece» cuando atiende la 2; el estado debe ser compartido o rediseñado. Round-robin tampoco mide coste por consulta (existen reglas como leastconn; «la regla se elige según el trabajo y se comprueba midiendo»).
- **Health checks**: el balanceador sondea periódicamente `/health` (200 OK) con `check`, intervalo 2 s y 2 fallos consecutivos para retirar la copia; al apagar una, el tráfico pasa a las sanas sin cambiar la dirección del cliente (3→2→3 copias en la demo); con las tres caídas, HAProxy responde 503 — el balanceador no crea capacidad.
- **Límites señalados**: (1) la revisión solo demuestra lo que comprueba — `/health` puede responder con la BD rota: decidir qué debe verificar cada check; (2) una solicitud ya fallida no se arregla al retirar el servidor — los reintentos necesitan reglas propias (repetir un cobro ≠ repetir una lectura); (3) el balanceador mismo es un punto único de fallo — alta disponibilidad exige redundancia también ahí; (4) el cifrado (HTTPS) es una decisión separada del reparto.

## Salvedades de triage

- Demo propia controlada (contenedores locales, valores de ejemplo declarados como tales); sin métricas de producción. Torti Code **3.ª fuente** (WL-286 arquitectura hexagonal, WL-287 índices B-tree) — entidad de canal confirmada para consolidación.

## Cruces sugeridos

- Cluster infra/DevOps: WL-160 (panorama DevOps TecnoCroquis), WL-232 (DevOps/infra); consistent style con WL-286/287 (mismo canal, analogías didácticas + demo) — consolidar las tres fuentes Torti Code juntas. Concepto candidato: «balanceo de carga y alta disponibilidad» si umbral lo justifica.

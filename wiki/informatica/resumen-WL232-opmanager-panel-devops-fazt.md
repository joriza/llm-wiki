# WL-232 — OpManager: El Panel que Todo DevOps Debería Usar

- **Fuente original**: `raw/informatica/2026-10-13-opmanager-el-panel-que-todo-devops-deberia-usar.md`
- **Video**: [OpManager: El Panel que Todo DevOps Debería Usar](https://www.youtube.com/watch?v=OZ3MNPZV6xc)
- **Canal**: Fazt · **Publicado**: 2026-10-12 · **Duración**: 20:18 · **Ingesta**: 2026-11-15 (tramo 33)

## Qué trata

Tutorial de introducción a la **monitorización centralizada de servidores** con OpManager (producto de ManageEngine), orientado a quien nunca trabajó con monitoreo:

- **El problema**: con muchos servidores distribuidos en múltiples nubes, los paneles nativos de cada proveedor no alcanzan; se necesita un solo panel con métricas y alarmas (ancho de banda, almacenamiento, red física/virtual, dispositivos Cisco, clústeres distribuidos).
- **Setup paso a paso**: VPS en DigitalOcean (8 GB RAM, 2 vCPU, demo), actualizar sistema, instalar SNMP/SNMPD (protocolo por el que OpManager consulta el estado del servidor) y Docker; instalación del binario `.bin` de OpManager en Linux (`chmod +x`, instalador consola, prueba de evaluación 30 días), arranque vía `bin/run` y acceso web en el puerto 8060 con la IP del servidor.
- **Demo de simulación**: en lugar de servidores reales, el autor levanta 3 contenedores Docker (web/db/api) con IPs fijas y SNMPD, generados **con Claude en modo de permisos amplios**, incluyendo scripts para tumbar/levantar contenedores y saturar CPU/memoria. Nota técnica: los contenedores comparten los recursos del host, así que las métricas son las de la máquina principal — vale como simulación.
- **Uso del panel**: alta de dispositivos por IP con perfil SNMP (también soporta SSH/WMI con credenciales), inventario de devices, vista de negocio con mapa, monitores de performance por dispositivo (memoria/CPU/disco), perfiles de notificación por correo, historial de alarmas con fecha y porcentaje alcanzado, y dashboard resumen que pasa de rojo (95-100 % de memoria en la prueba de estrés) a verde al normalizar la carga.
- Menciona al final que ManageEngine también tendría un MCP (sin demostrar).

## Observaciones de triage

- **Contenido tutorial de primera mano** con comandos y flujo verificables; las capacidades del producto son las que se ven en pantalla (claims del fabricante ManageEngine, sin contraste independiente).
- Sesgo comercial leve: el título es editorial («el panel que todo DevOps debería usar») y la prueba gratuita/registro se muestran sin comparar alternativas (Zabbix, Prometheus, Netdata ni mencionadas).
- Recomendación cuestionable mostrada: usar Claude con permisos amplios (`--dangerously-skip-permissions`) y ejecutar como root en el VPS — práctico para demo, no para producción.
- ASR: «Open Manager / OP Manager» = OpManager, «Cruel/Wgate» = curl/wget, «kiss» = SSH keys, «Bwareware» = ¿WMI?, «cloud browser» = Claude browser — normalizado solo aquí.
- **Cruces**: WL-160 (panorama DevOps TecnoCroquis), WL-102 (agente despliega infraestructura — hilo «agentes + ops»), infraestructura/servidores en general.

## Dominio destino sugerido (pendiente de consolidación)

- **general** (infraestructura/DevOps) — tutorial de monitorización con producto comercial.

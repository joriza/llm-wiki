# Trivy: Escáner de Vulnerabilidades en Docker

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=i2vDJgtGAA4)
- **Canal**: No Solo Hacking (Carlos Larante / «Carlos maluche» en el ASR)
- **Publicado**: 2023-12-21
- **Duración**: 24:14
- **Fuente original**: `raw/informatica-teoria/2023-12-21-trivy-escaner-vulnerabilidades-en-docker.md`
- **Origen**: favoritos de Chrome del usuario, carpeta `Gral/Docker/` (bookmark de video suelto con parámetro `list=` de playlist ajena — tratado como archivo único, decisión del usuario 2026-11-14)

## Qué trata

Tutorial de introducción a **Trivy**, escáner de vulnerabilidades open source de Aqua Security, ejecutado vía contenedor Docker:

- **Qué escanea**: imágenes de contenedores, filesystems, repositorios git remotos, imágenes de VM, Kubernetes y AWS. Encuentra paquetes de SO obsoletos, dependencias con CVEs conocidas, **errores de configuración** (SSH sin timeout, contraseñas débiles — «no es que el software esté mal, es que lo configuro mal»), **secretos filtrados** (credenciales en comentarios olvidados que pasan a producción) y licencias de software.
- **CVEs**: cada vulnerabilidad recibe un ID único (como un DNI) con severidad CVSS, descripción, referencia y la versión donde está parcheada (`fixed` = parcheada en versión X — basta subir a esa versión).
- **Modo de uso**: contenedor con `docker run` montando el socket de Docker + un volumen de caché para la base de datos de vulnerabilidades; escaneo de `python:3.4` → 37 vulnerabilidades (4 bajas, 16 medias, 13 altas, 4 críticas) y de una imagen de nginx desactualizada 6 meses (peor: usuarios locales con acceso root sin fix oficial).
- **Gestión de riesgo como marco**: «el hacking es cómo gestionas tu riesgo» — el reporte es informativo (la vulnerabilidad puede estar en el SO base, no en la app); en producción bajan al menos críticas y altas; mitigación estructural: imagen propia desde un SO securizado con Dockerfile.
- **Postura del canal contra la exposición directa**: se niega a explicar exposición de servicios a internet directo («bots atacando continuamente»); recomienda VPN de acceso en vez de publicar puertos.

## ASR a corregir

«Carlos maluche/marant/Larante» (nombre real del presentador no verificado), «tribi/Trivi» = Trivy, «CVS» = CVEs, «esaj 7.5» = CVSS 7.5, «pikmin» (herramienta Pikvm), «asecto trista» = trastorno del espectro autista (bloque benéfico fuera del alcance técnico).

## CRUCES

- **[[hardware-agentico-mcp-first]] / agentes**: no directo — cruce débil, omitir.
- **Clúster seguridad/infraestructura**: primera fuente del corpus con el tema **seguridad de contenedores**; relacionado temáticamente con `informatica-teoria/` (redes, SSH/DNS) por su insistencia en buenas prácticas de configuración y exposición. Tema-candidato nuevo: **seguridad-contenedores-scan** (umbral 1/2 — pendiente de segunda fuente).
- **Cruce conceptual con `critica-tecnologica/`**: el mensaje «publicar servicios a internet directo = riesgo brutal, usar VPN» coincide con la postura operativa de este proyecto (acceso VPN, no puertos abiertos).
- Origen del video en el curso gratuito de Docker de 2 horas del mismo canal (referenciado en el video, no ingestado).

## Dominio

`informatica-teoria/` (herramientas DevOps/seguridad de infraestructura; su alcance ya incluye herramientas operativas como Git y Kafka).

## ADVERTENCIA

Video tutorial de divulgación con bloques promocionales/benéficos extensos (sorteo, donaciones, ~1/3 del tiempo); comandos y versiones concretas (Trivy 0.48.1, python:3.4) congelados a diciembre de 2023 — verificar versiones vigentes antes de reproducir.


## Ver también

- [[generacion-local-de-imagenes]]
- [[hardware-agentico-mcp-first]]
- [[hardware-para-ia-local]]
- [[panorama-herramientas-open-source-ia]]
- [[seguridad-fuera-del-modelo]]

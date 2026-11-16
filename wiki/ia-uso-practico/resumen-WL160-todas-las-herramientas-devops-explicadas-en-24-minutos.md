# TODAS las HERRAMIENTAS DevOps explicadas en 24 minutos

- **Fuente**: `raw/ia-uso-practico/2026-09-21-todas-las-herramientas-devops-explicadas-en-24-minutos-debes-conocerlas.md` ([Vídeo en YouTube](https://www.youtube.com/watch?v=vQ4OOw63svs))
- **Canal**: TecnoCroquis
- **Publicado**: 2026-09-21 · **Duración**: 24:55
- **Tipo**: Divulgación técnica / panorama introductorio

## Síntesis

Recorrido introductorio por el paisaje de herramientas DevOps, organizado como cadena de problemas: cada herramienta se presenta por el problema que resuelve, no por características.

**Marco**: DevOps no es un programa sino una forma de trabajar que une desarrollo y operaciones automatizando el camino del código a producción.

**Código y colaboración**:
- **Git**: control de versiones distribuido — commits como fotografías del proyecto, ramas para trabajar sin tocar la versión estable, merge para integrar. Distinción clave: Git ≠ GitHub.
- **GitHub**: alojamiento y colaboración — pull requests como revisión previa a la integración, issues, forks (flujo del open source).
- **GitLab**: similar a GitHub pero con ambition de plataforma integral del ciclo; self-hosting como ventaja empresarial.
- **CI/CD** explicado como concepto: integración continua (compilar y testear en cada cambio) y entrega/despliegue continuo (automatizar la entrega).

**Automatización**: **GitHub Actions** (workflows YAML por eventos del repo, marketplace), **Jenkins** (el veterano: Jenkinsfile, plugins para todo, distribución entre máquinas; interfaz vieja pero flexible), **CircleCI** (CI/CD gestionado en la nube, ORBs reutilizables, caché de dependencias).

**Ejecución consistente**: **Docker** — el «en mi máquina funciona» resuelto con contenedores; Dockerfile → imagen (plantilla) → contenedor (imagen en ejecución); Docker Hub; contenedor ≠ máquina virtual (kernel compartido, arranque rápido). **Kubernetes** — orquestación cuando hay decenas/cientos de contenedores: pods, cluster, estado deseado autorreparado, escalado y actualizaciones progresivas; advertencia: sobredimensionado para aplicaciones pequeñas.

**Infraestructura**: **Terraform** — infraestructura como código (plan → apply, archivo de estado, versión de infraestructura); **Ansible** — configuración de lo ya creado (playbooks YAML, agentless por SSH, idempotencia).

**Observabilidad**: **Prometheus** (métricas como series temporales, PromQL, alertas), **Grafana** (visualización; Prometheus recoge, Grafana representa), **stack ELK** (Logstash recoge logs, Elasticsearch indexa y busca, Kibana explora; coste de recursos a gran volumen).

**Calidad y secretos**: **SonarQube** (análisis automático: bugs, vulnerabilidades, code smells; quality gates que bloquean el pipeline; complementa, no sustituye, la revisión humana), **HashiCorp Vault** (gestión centralizada de secretos, credenciales temporales que caducan, registros de acceso).

## Observaciones

- Divulgación introductoria correcta y ordenada; sin profundidad ni casos prácticos; el propio canal admite no dominar algunas herramientas.
- Transcripciones ASR con garbiñeos: «Devobs», «Cubernetes», «Bolt/Volt» (por Vault), «Anbl» (Ansible) — normalizados aquí solo.
- Cruces naturales: [[lenguaje-rust]] y roadmap WL-14 no aplican directamente; encaja con el ecosistema de herramientas dev del repo (WL-154/WL-147 de seguridad local usan concepts afines como Docker; WL-153 Gentle Design/ODD como flujo de trabajo agéntico).


## Ver también

- [[panorama-herramientas-open-source-ia]]

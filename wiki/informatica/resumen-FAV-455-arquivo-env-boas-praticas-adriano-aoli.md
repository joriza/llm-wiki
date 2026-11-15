# FAV-455 — Arquivo .env: boas práticas, segurança e erros comuns (Adriano AOli - Tech)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=u1sWHiMBQL0) — Canal **Adriano AOli - Tech**, publicado 2026-05-18, 26:10, PT (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-arquivo-env-boas-praticas-adriano-aoli.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## El archivo .env: qué va y qué no va

Tutorial completo (en portugués) sobre variables de entorno y el archivo `.env`:

1. **Problema de origen**: credenciales y URLs pegadas dentro del código (config.php, strings de conexión repetidas en cada archivo — caso real que encontró el autor) → riesgo de cruzar entornos (mandar datos de prueba a producción, cobros reales de una pasarela de pago).
2. **Origen del patrón**: la era Heroku y los **12 Factors** (factor 3: la configuración va en un archivo separado del código). Concepto de ambiente: desarrollo, staging/QA/homologación, producción — y cada despliegue por cliente es otro ambiente (otra contraseña de BD, otro token, otra URL).
3. **Qué va al `.env`**: lo que cambia entre ambientes y sin lo cual la app no arranca — host/puerto de BD, URLs de API, nombre del ambiente, flags de debug y nivel de log (el exceso de log frena la aplicación en producción), SMTP, endpoints externos, servidor de caché. Criterio: «lo pongo y me olvido; no cambia en runtime; el usuario no lo ve; no es regla de negocio».
4. **Qué NO va**: logo del cliente, preferencias, reglas de negocio (descuento premium → tabla de configuración en BD + caché/Redis/painel), datos dinámicos o persistentes. Confundir esto con configuración de entorno es el error conceptual central del video.
5. **Riesgos**: subirlo a GitHub (borrar el archivo no borra el historial), CI/CD que sobreescriba el `.env` de producción, directorios públicos servibles (probar `/​.env` en la URL de tus propios sitios — «todos los hackers lo intentan»), tokens de API de pago por consulta (Serasa, APIs de IA) expuestos. Aun así, no hay bala de plata: si invaden el servidor, se llevan todo — la seguridad es capas (metáfora de las 10 casas).
6. **Secret managers**: Google Secret Manager, AWS Secrets, HashiCorp Vault, Azure Key Vault — el agente inyecta las variables en el servidor, con cifrado, auditoría, control de acceso y **rotación automática** de credenciales. Flujo moderno: primero variable de entorno, si no existe → fallback al `.env`. Cuándo: proyectos críticos o con muchos servidores/balanceo (imposible editar el `.env` de 10 máquinas); en hosting compartido no hay agente → `.env` fuera del directorio público; en proyecto pequeño no compensa.
7. **Errores comunes**: contraseñas esparcidas por el código, creer que el `.env` es solo para la BD, meter reglas de negocio, subirlo a GitHub, duplicar una variable en el mismo archivo (solo se lee la última), mezclar variables de dev y producción. Moraleja: «el código no debería llevar ninguna contraseña» — separar código de configuración es también escalabilidad (load balancing, multi-cliente).

## Valor

Tutorial práctico y bien estructurado de dev ops básica; complementa el clúster de desarrollo/entornos de `informatica/` con el eslabón de configuración de despliegue que ningún resumen previo cubría.

## Cruces

- Eje **desarrollo profesional**: [[resumen-FAV-441-programar-10x-mas-rapido-torti-code]] (flujo de trabajo con commits — el `.env` en GitHub es un anti-patrón de commit) y [[resumen-FAV-429-git-curso-completo-holamundo]] (historial: borrar el archivo no borra la contraseña del historial).
- Eje historias de producto/servicios de la ventana: contraste con [[resumen-FAV-452-sql-server-historia-sybase-archivo-del-futuro]] — Heroku/12 factors como contracara del efecto plataforma cerrado.

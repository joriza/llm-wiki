# FAV-420 — FreeLLM API: proxy unificado de IA gratuita — Alejavi Rivera

- **Fuente original**: raw/electronica-practica/2026-11-15-freellmapi-proxy-ia-gratis.md (YouTube 7Oez8kmknOA, canal Alejavi Rivera, 2026-09-17, ES-ES con subs manuales, 30:51).
- **Dominio**: `electronica-practica/` (asignación por defecto). **Fuente claramente de INFORMÁTICA/IA — candidata a dominio informatica** (junto a FAV-413 y FAV-419).

## Qué es

**FreeLLM API**: plataforma **open source (licencia MIT)** de Tasnim Assmat (trabajador de Microsoft) que unifica los **modelos 100% gratuitos** de múltiples proveedores detrás de una **API propia**. Más de 700 modelos y ~7.400 M de tokens gratuitos al mes agregados; el repositorio supera las 25.000 estrellas. Los planes de pago solo aceleran la actualización del catálogo (gratis = hasta 30 días de retraso).

## Funcionamiento

- Instalación nativa (macOS .dmg / Windows .exe / Linux), app móvil, o **Docker en VPS** para disponibilidad 24/7 (demo con Hostinger).
- Se agregan claves de proveedores (ej. OpenRouter); la herramienta **extrae solo los modelos gratuitos** de cada proveedor automáticamente — diferencia clave frente a otros proxies donde hay que filtrar manualmente para no gastar crédito.
- Al conectar los proveedores se crea un **endpoint API propio**: cualquier otra herramienta (Claude Code, apps, integraciones **MCP**) puede consumir el catálogo gratuito como si fuera un proveedor más.
- **Modo auto** y **modo fusión** para seleccionar/agrupar modelos; perfiles de modelo por necesidad.
- **Ajustes avanzados**: compresión de conversaciones (desactivada / sin pérdidas / agresiva) para estirar los tokens gratuitos, motores de reescritura para optimizar prompts.

## Relacionado

- [[ia-en-mcu]] — otro punto del eje IA local vs nube: aquí acceso gratuito a modelos en la nube vía proxy.
- Mismo eje temático que FAV-419 (LLM sobre documentos propios) y FAV-413 (SillyTavern, frontend de LLM): las tres son **candidatas a dominio informatica**.

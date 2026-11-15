# FastAPI: De un Script a Microservicios en 5 Etapas (Y Dónde Parar)

- **Fuente**: [[../../raw/python-practico/2026-10-13-fastapi-de-un-script-a-microservicios-en-5-etapas-y-donde-parar.md|2026-10-13-fastapi-de-un-script-a-microservicios-en-5-etapas-y-donde-parar.md]]
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-10-13
- **Dominio**: `python-practico/`
- **Tipo**: resumen de fuente (vídeo de arquitectura, 10 min, IA-ASR)
- **Tema**: escalado progresivo de un proyecto FastAPI — monolito → módulos → microservicios — y el consejo central: **dónde parar**.

## Las 5 etapas

1. **Script monolítico**: API en 10 minutos, cero configuración — funciona hasta que un `main.py` de 800 líneas hace que un bug en reportes tumbe el cobro, y todo abre la conexión a base de datos al cargar.
2. **Modularización**: separar routers por dominio (carpeta de routers; el router de pagos deja el archivo principal minúsculo, que solo registra). El sistema de **dependencias (`Depends`) permite probar cada módulo aislado** reemplazando el servicio real en tests. Sin servidores nuevos: solo orden.
3. **Microservicio**: «lo que ya tenías, pero en su propio proceso, con su propia base de datos» — se escala solo lo saturado y si reportes cae, los cobros siguen. **Solo vale la pena con una razón concreta y medible** (equipo que despliega distinto, escalado diferencial…).
4. **Comunicación entre servicios**: API Gateway como único punto de entrada; circuit breaker (p. ej. `pymbreaker` según el vídeo; ASR del nombre de la librería) para no hundir un servicio con peticiones; ejemplo real citado: el equipo de calidad de vídeo de Amazon Prime Video hizo el **camino inverso** (de microservicios a monolito). Comunicación síncrona (necesitas la respuesta para seguir) vs asíncrona por eventos («pedido creado», quien interese lo recibe cuando pueda); la asincronía rompe la consistencia de datos → **patrón saga** con pasos de compensación, a diseñar desde el principio.
5. **Operación**: shared library vs duplicación (ojo con el «microservicio distribuido» — 10 servicios que comparten base de datos o libería es un monolito disfrazado); contratests (pruebas de contrato) para definir de quién es cada dato; despliegue con réplicas, reinicio de pods y despliegue por oleadas; **logs en JSON** estructurado; seguridad con tokens validados por cada servicio.

## Veredicto (el valor real)

**Parar en la etapa 2 (modularización) hasta que duela por una razón que puedas medir.** El ejercicio propuesto: abrir el `main.py`, sacar un router a su propio archivo y escribir una prueba con `Depends` — la modularidad se puede practicar hoy sin microservicios.

## Valor y contexto

- Quinta fuente de FastAPI del dominio y la única de **arquitectura de escalado**: los tutoriales previos (Open Sessions, MoureDev) cubren el «cómo empezar»; este cubre el «cuándo no seguir», con el contraste Prime Video como testimonio de la sobre-ingeniería.
- Complementa [[fastapi]] (entidad) y conecta con el hilo de colas/tareas en segundo plano del ecosistema (celery/dramatiq en la wiki general).
- Voz de IA narrando guion (IA-ASR); sin patrocinios; contenido técnico denso y bien dosificado.

## Citas al original

Todas las afirmaciones provienen de `raw/python-practico/2026-10-13-fastapi-de-un-script-a-microservicios-en-5-etapas-y-donde-parar.md` (transcripción automática; garbiñeos ASR normalizados solo aquí — «PyBreaker» probablemente **pypi-breaker**/pybreaker; marcas de tiempo en el original).

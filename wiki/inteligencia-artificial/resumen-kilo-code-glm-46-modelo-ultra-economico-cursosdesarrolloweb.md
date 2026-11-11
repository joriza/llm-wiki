# Resumen: Kilo Code + GLM 4.6 — Modelo ULTRA ECONÓMICO que FUNCIONA

- **Tipo**: resumen de fuente (tutorial de programación con IA: extensión + modelo económico).
- **Canal**: CursosDesarrolloWeb (página de entidad pendiente de consolidación).
- **Publicado**: 2025-10-01. **Duración**: 13:21.
- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=V6EPzmp36iw).
- **Raw**: [raw/inteligencia-artificial/2025-10-01-kilo-code-glm-46-modelo-ultra-economico-cursosdesarrolloweb.md](../../raw/inteligencia-artificial/2025-10-01-kilo-code-glm-46-modelo-ultra-economico-cursosdesarrolloweb.md) (transcripción con marcas de tiempo).
- **Páginas de concepto asociadas**: [[agentes-de-codigo]] (extensión + modelo económico).
- **Disposición de la ingesta**: Nueva.

## Tesis central

Cómo «abaratar costes al máximo sin perder calidad» al programar con IA: **Kilo Code** (extensión de VS Code «gratuita, open source, sin coste y sin restricciones») + el modelo **GLM 4.6** de la plataforma Z.ai (salido el día anterior, «pensado exclusivamente para programar»). El plan Light cuesta **3 USD/mes** (o 36 USD/año) y ofrece una cuota «tres veces más que el plan Pro de Claude» (100-120 prompts cada 5 horas; Pro 600/5h; Max 2400/5h). La demostración: una **API REST completa de tareas en Laravel 12** (PHP 8.4 + MySQL) construida **en 12 minutos y sin ningún error**, con el autor supervisando cada paso.

## Recorrido del vídeo

- **[00:01–01:49] Herramientas y precios**: Kilo Code se instala desde extensiones de VS Code; configuración por proveedor (API key + modelo). Z.ai y su familia GLM: plan anual **36 USD/año**, mensual 3 USD, trimestral 9 USD (Light); luego Pro y Max. Integraciones con **Claude Code** o Kilo Code; API Key desde la sección API Keys; límites: Light **100 prompts/5 horas** («más o menos tres veces más que la cuota del plan Pro de Claude»), Pro 600/5h, Max 2400/5h — «3 USD versus lo que vale el plan Pro de Claude».
- **[03:13–04:32] Configuración y modos de Kilo Code**: proveedor Z.ai, entry point, API key, modelo **GLM 4.6**. Los modos de Kilo Code: **Architect** (planea y diseña antes de implementar), **Code** (escribe, modifica y refactoriza — el usado), **Ask** (explicaciones), **Debug** (diagnóstico y fix de incidencias) y **Orchestrator** (coordina tareas entre modos).
- **[04:32–09:43] La demo (Laravel 12)**: prompt — «crea una API simple de tareas en Laravel 12: CRUD completo (título, descripción, estado pending/completed), endpoints GET/POST/PUT/DELETE, ruta /api/tasks, validaciones en Form Request, respuestas JSON con API Resource, códigos HTTP apropiados, MySQL, migraciones incluidas, código limpio y buenas prácticas». Ejecución comentada paso a paso: rutas api.php (importa un TaskController que aún no existe), migración (el autor corrige el comando a `vendor/bin/artisan` y «lo entiende»), columnas string/text/enum (el autor prefiere strings con cast, «pero tampoco le hemos dicho nada»), modelo Task (usa atributo cast en vez del método — sin contexto del proyecto), FormRequest con reglas, TaskResource, controlador API (index paginado con colección tipada, store 201, show, update, destroy 204). Contraste con **GPT-5 Codex CLI**: «no ejecuta nunca comandos, dice que está en un entorno sandbox» — «es un poco rollo»; con GLM 4.6 «la forma de trabajar me gusta más».
- **[09:43–11:19] Los dos errores y las correcciones conversacionales**: (1) «la tabla tasks ya existe» → el autor le dice «haz el fresh» («así es como le hablo yo normalmente a Claude Code y normalmente me entiende») → rehace la base de datos; (2) «no has registrado las rutas API... se tienen que registrar manualmente» → edita `bootstrap/app.php` con el parámetro api paths → `route:list` muestra todas.
- **[11:19–13:21] Pruebas con Bruno Client**: listado paginado vacío → creación (pending, ID 1) → detalle → update a completed → delete con **204**. Balance: «en tan solo 12 minutos... una API REST completa de manera súper sencilla y **sin ningún error en el proceso**». Cierre: Kilo Code gratuito + GLM 4.6 a precios «tremendamente ridículos» alcanza «para hacer esto y mucho más».

## Puntos clave

1. **Costo radicalmente bajo**: 3 USD/mes (Light) con 100-120 prompts/5h — «tres veces más que la cuota del plan Pro de Claude» [01:21-03:13, 08:00].
2. **Kilo Code es gratuito, open source y sin restricciones**, con modos especializados (Architect/Code/Ask/Debug/Orchestrator) [00:24, 04:32].
3. **Ejecuta comandos reales**: a diferencia de GPT-5 Codex CLI (que excusa su sandbox), el flujo con GLM 4.6 corre artisan/migraciones en el proyecto [05:25-06:25].
4. **El humano supervisa y corrige con lenguaje natural**: dos incidencias (tabla existente, rutas no registradas) resueltas diciéndoselo como se lo diría a Claude Code [09:43-11:19].
5. **Resultado medible**: API REST Laravel 12 completa y probada en Bruno Client en 12 minutos, sin errores [11:19-13:21].
6. **Limitaciones aceptadas por falta de contexto**: enum en vez de strings+cast, atributo cast en vez de método — «ni tiene contexto de nuestro proyecto ni le hemos dicho nada» [06:25-07:10].

## Notas sobre la fuente

- Transcripción automática en español con errores literales conservados en el raw («Zi/ZII» por Z.ai, «Cloud Code/Cloud Coke» por Claude Code, «birre» por API, «Arabel» por Laravel, «My Sequel» por MySQL, «jon» por JSON, «orquestitor» por Orchestrator). Este resumen los normaliza.
- Inconsistencia menor de la fuente: dice «100 prompts cada 5 horas» a mitad del video y «120 prompts cada 5 horas» al final para el mismo plan Light — pendiente de verificación con la página oficial en consolidación.
- El autor declara su preferencia de supervisión humana: «no me gusta dejarle que lo haga todo, sino que prefiero hacerlo yo».
- Fuente 12/57 de la playlist «IA-Recursos»; décimo canal nuevo del lote (CursosDesarrolloWeb).
- **Enlaces de consolidación (2026-11-11)**: [[ia-china]] (GLM 4.6 de Z.ai).

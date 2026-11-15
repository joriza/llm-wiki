# WL-137 — Todo lo nuevo de Gentle Shell 4

- **Fuente original**: `raw/ia-uso-practico/2026-10-28-todo-lo-nuevo-de-gentle-shell-4.md` (`NiqsTBKIQo0`, [Gentleman Programming Vods](https://www.youtube.com/watch?v=NiqsTBKIQo0), 2026-10-28, 06:24).
- **Canal**: Gentleman Programming Vods
- **Publicado**: 2026-10-28
- **Tipo**: demo de producto (herramienta de desarrollo agéntico)

## Qué trata

Demo del canal de las novedades de Gentle Shell 4, la shell agéntica de Gentle AI: interfaz renovada, personalización integral, perfiles, y sobre todo el puente de modelos (Claude Bridge) y la mensajería entre sesiones de Pi.

## Puntos clave

- **Interfaz nueva**: barra superior con fondo diferenciado, estatus del proyecto, sistema de notificaciones; todo personalizable en tiempo real vía `gentle customize`: animaciones (ajustables según potencia de máquina), banner, temas, disposición de elementos (header/estatus arriba/abajo/auto por resolución), densidad (modo compacto), y dos temas: **float** (nuevo, elementos encapsulados con círculos) y **neon** (el anterior).
- **Modos de edición**: modo Vim para el input, y un **modo Yolo** peculiar: permite commitear y pushear libremente pero **frena ante cualquier acción destructiva**.
- **History de prompts** completo en la interfaz (trabajo de «Carolina», agradecido en el video).
- **Comandos**: panel con `Alt+K` que lista todos los comandos con búsqueda — alternativa a teclearlos.
- **Perfiles**: configuraciones guardables por máquina (lenta/rápida) o contexto.
- **Claude Bridge**: integración de Claude con la afirmación destacada (repetida) de que «Cla anda muchísimo mejor en Gentle Shell que en Claude Code». Perfiles multi-modelo por rol (explorar con un proveedor, verificar con otro; ejemplo: Opus para explorar, OpenAI para verificar) unificando dos suscripciones sin plugins separados por proveedor.
- **Optimización de tokens**: investigación sobre el uso de tokens en delegaciones dentro de Gentle AI → consumo muy reducido.
- **Estadísticas de uso**: modelo más utilizado, sesiones, coste por modelo y por implementación, uso de caché (cache read) y datos de la sesión actual.
- **Mensajería entre sesiones Pi** (en pruebas, estrenado en el video): detecta todos los orquestadores en ejecución, identifica la sesión objetivo y le envía mensajes encolados con respuesta visible (`reply accepted for delivery`) — demo emocionada con «Te quiero mucho» a una sesión de Pi, que respondió. Con doble `escape` el mensaje se envía inmediatamente sin esperar encolado.

## Citas útiles

- [01:26] El modo Yolo «es comitear, pushear, todo lo que vos quieras, menos cosas destructivas».
- [03:04] «Pueden utilizar Claude… y anda muchísimo mejor Claude en Gentle Shell que en Claude Code».
- [03:33] Perfiles por rol: «para explorar… para verificar me gusta mucho más Open AI».
- [05:01] La mensajería a sesiones Pi, en pruebas: «se sepa. Atentos con esto».

## Triage

Nota: el canal es **Gentleman Programming Vods** y el producto demostrado es la propia shell del entorno de este proyecto (gentle-shell/Gentle AI) — fuente interna/promocional de primera mano, con fecha 2026-10-28. Destino probable en consolidación: `ia-uso-practico/agentes-de-codigo` o entidad [[gentleman-programming]]; cruce natural con las páginas de herramientas agénticas de la wiki (tramos 5-7).

- **Entidad**: [[gentleman-programming]] — demo de producto del canal de streams «Gentleman Programming Vods» (Gentle Shell 4); fuente interna de primera mano del ecosistema de esta wiki; cifras de producto del autor sin verificación independiente (consolidación 2026-11-15).

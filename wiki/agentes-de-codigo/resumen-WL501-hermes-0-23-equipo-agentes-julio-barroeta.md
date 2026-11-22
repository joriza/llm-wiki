# WL-501 — Hermes 0.23 CAMBIA TODO: tu primer EQUIPO de Agentes desde CERO

- **Fuente original**: `raw/agentes-de-codigo/2026-11-14-hermes-0-23-cambia-todo-tu-primer-equipo-de-agentes-desde-cero.md` ([Vídeo](https://www.youtube.com/watch?v=mFuV9YYztjI))
- **Canal**: Julio Barroeta | IA & Ciber (1.ª fuente WL)
- **Publicado**: 2026-11-14 · **Duración**: 35:41
- **Dominio definitivo**: agentes-de-codigo (consolidación T90, 2026-11-16). Provisional: ia-uso-practico / agentes-de-codigo (tutorial de orquestación multiagente)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Tutorial demostrativo (con pantalla completa) de la versión **0.23 de Hermes Agent** (de Nous Research, gratuito y open source — el canal lo llama «Hermes 0.23»; **ojo: la marca que enseña es la de agentes de Nous Research**, y el ASR escribe «Hermes/Lib SIC 4.1 Flash» y «DeepSeek V4.1 Flash», nombres de producto probablemente distorsionados — señalado) para montar una «oficina de agentes» sin programar:

1. **Concepto base**: chatbot = «cerebro en un bote»; agente = cerebro + arnés (cuerpo con acceso a archivos, correo, terminal). Un equipo de agentes se compone de 4 piezas: **agente** (perfil/carpeta con ficha, memoria y herramientas), **sala** (chat grupal de 2-6 agentes), **reparto** (quién atiende cada input) y **rutina** (trabajo programado, «el reloj»).
2. **Novedades 0.23**: salas con **reparto automático** (un LLM auxiliar — «Group Router», con *Disable Reasoning* recomendado y modelo rápido/barato — lee la sala y las fichas y decide quién responde, reemplazando el «agente director» intermedio), workspace desde el navegador móvil, centro único de mensajes y **rutinas que publican en la sala** (los agentes se invocan entre sí sin intervención humana: el mecanismo interno de una «empresa» autónoma).
3. **Demo 1 (a mano, VPS)**: negocio ficticio «Estudio Lumen» — agentes Nico (ventas), Alba (agenda), Leo (contenido) y Tomoko (coordinadora, «el gusto delegado del dueño» que revisa precio/fecha/tono antes de todo lo que sale). Prueba: mensaje de cliente → el reparto automático despierta a los correctos (todos menos contenido), se coordinan con @menciones, pausa tras 10 mensajes / ~3 rondas (freno antibuclare), aprobación final vía @user. Con modelo barato vía OpenRouter y terminal deshabilitada en los agentes de negocio.
4. **Demo 2 (sistematizada, Mac local)**: «Academia Norte» montada con un **kit/configuradora** (lead magnet: ZIP a cambio de nombre+correo) — agentes con fichas/skills precreadas en segundos; el autor lo enmarca como **IaC aplicado a agentes**: la configuración versionada/reutilizable evita errores manuales y permite portabilidad.
5. **Fallo didáctico mostrado en vivo**: la rutina de las 8:00 no disparaba porque la @mención usaba el nombre del otro Hermes (@Tomoko vs @Tomoko-con-sufijo) — nombres exactos por instalación; corregido y verificado.
6. **Claves de negocio**: **«un cliente, un Hermes»** (aislamiento débil: los agentes del mismo servidor pueden ver datos de otro cliente), mínimo privilegio (sin terminal por defecto), control de coste (el reparto automático + frenos; el autor se quedó sin crédito dos veces probando con «todos contestan»), y **snapshot/backups antes de cada actualización** («cada actualización puede romper algo»). Modelo de venta: montar el equipo, mantenerlo y conectarlo al entorno del cliente.

## Señales de triage

- Demo de **primera mano** (actualización, creación, fallo y corrección en pantalla), con marco comercial declarado: kit-descarga (lead magnet), comunidad «dojo» y masterclasses dominicales promocionadas — excluidos de la síntesis pero señalados como contexto.
- Los nombres de modelos («Lib SIC 4.1 Flash», «DeepSeek V4.1 Flash») son ASR sin verificar y los comportamientos exactos (límites de 10 mensajes/3 rondas) son dichos del autor, no documentación oficial — señalados.
- ASR: «arnés», «cascorejo», nombres; normalizado solo aquí; raw intacto.

## Cruces

- **agentes-de-codigo / ia-uso-practico**: orquestación multiagente con roles → [[delegacion-cognitiva-ia]], [[agentes-de-codigo]], [[routing-por-coste]] (reparto automático con modelo barato = routing por coste en la práctica, eco WL-346/353); salas con frenos antibucre ↔ context rot (WL-228) y límites de rondas como presupuestos.
- IaC para agentes ↔ infraestructura/[[hardware-agentico-mcp-first]]; «un cliente, un Hermes» por aislamiento ↔ seguridad multi-tenant (WL-147: seguridad de montajes locales en capas).
- Rutinas entre agentes (empresa autónoma) ↔ [[gobernanza-ia]] (quién aprueba: @user como humano en el circuito).
- Modelos auxiliares baratos para decisiones pequeñas ↔ [[qwen]]/[[inferencia-local]] (par WL-494, misma semana).

## Veredicto de triage

Demo honesta y útil para entender orquestación multiagente sin código, con fallos mostrados y buenas prácticas reales (IaC, mínimo privilegio, snapshots, coste); conservar como ia-uso-practico/agentes. Marco comercial fuerte (kit/dojo) — triage claro: el valor está en la demo, no en la oferta final.

## Consolidación (T90)

Dominio definitivo: `agentes-de-codigo/` (primera opción registrada; orquestación multiagente). Páginas actualizadas: [[agentes-de-codigo]] (+1), [[routing-por-coste]] (reparto automático con modelo barato). Canal Julio Barroeta | IA & Ciber: 1.ª fuente, texto plano. Par de la misma semana con WL-494 (modelos auxiliares baratos ↔ ejecución local). Nombres de modelos ASR («Lib SIC 4.1 Flash», «DeepSeek V4.1 Flash») sin verificar — señalados.

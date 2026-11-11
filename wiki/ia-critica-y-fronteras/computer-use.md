# Computer use

- **Tipo**: página de concepto.
- **Dominio**: `ia-critica-y-fronteras/`.
- **Actualizado**: 2026-11-11.
- **Fuentes**: 3+ resúmenes de la playlist «IA-Recursos».
- **Ver también**: [[agentes-de-codigo]] (arquetipo 9 y seguridad) · [[ia-y-sociedad]] (el SO como capa secundaria) · [[dot-csv-lab]] · [[gustavo-entrala]].

## El concepto

Un agente de IA **opera directamente el ordenador del usuario** — ratón, teclado, aplicaciones sin API ni conectores — en lugar de solo generar código o texto. El corpus documenta dos enfoques técnicos opuestos y su evolución: interpretar la pantalla por visión, o traducir la interfaz a texto estructurado.

## Los dos enfoques

1. **Computer use por visión (ChatGPT Desktop)**: el modelo «ve lo que ves y opera tu ordenador» interpretando capturas de pantalla; en la app de escritorio de 2026 viene combinado con voz natural interrumpible, tareas programadas y documentos que quedan en tu equipo — la demo: redactar y dejar un correo en Gmail «sin tocar una tecla» (45/57). Impreciso por naturaleza: «a veces hace clic donde no debe» (57/57).
2. **Computer use textual (Agent Desktop)**: un puente gratuito que **traduce la interfaz visual a texto** que el LLM interpreta directamente — sabe dónde está cada campo y qué contiene, deja de adivinar. Demostraciones sobre software imposible de conectar: un ERP de facturación, el PDF del NIE del Gobierno casilla a casilla, y «Gestión Rufino 2003», el «programa del infierno» sin ninguna conectividad, incluso con las ventanas movidas a propósito (57/57).

## El contexto: agentes personales con acceso al ordenador

El mismo acceso aparece en los **agentes personales** (Clawdbot): crear carpetas y documentos, navegar la web, transcribir el canal de YouTube del propio usuario de noche para montar una base de datos de sus opiniones — controlado por WhatsApp/Telegram (22/57, 23/57). La consecuencia estructural que señala la fuente del ChatGPT de escritorio: si la IA opera por nosotros, **la web y las aplicaciones se rediseñan para máquinas y el sistema operativo se vuelve secundario** — un riesgo existencial para Apple y Microsoft (45/57).

## Seguridad

- Agent Desktop implica permisos de **accesibilidad y grabación de pantalla**: el autor no tocó el ratón en ningún momento de la demo — la autonomía llega hasta el SO (57/57).
- El contrapeso ya documentado en [[agentes-de-codigo]] aplica con más fuerza aquí: el caso Antigravity (borrado de disco por «limpiar caché», 15/57) y el prompt injection sobre ventanas de contexto (22/57).

## Tesis transversal

La convergencia del corpus: el enfoque textual (traducir a texto estructurado) supera al visual en precisión, y el valor real de la categoría no es el «programa del infierno» puntual sino la **automatización en lenguaje natural de software sin conectividad** — los 20 años de aplicaciones legadas que ninguna API alcanza.

## Fuentes de este concepto

- [[resumen-el-nuevo-chatgpt-tiene-superpoderes-gustavo-entrala]] (45/57, visión) · [[resumen-la-ia-ya-maneja-todos-tus-programas-agent-desktop-pablo-tapias]] (57/57, textual) · [[resumen-que-es-clawdbot-futuro-asistentes-virtuales-dot-csv-lab]] (22/57) · [[resumen-clawdbot-p-ta-locura-asistente-ia-inteligencia-artificial]] (23/57).

# Resumen: Gentle Shell: cambié toda la interfaz y el diseño

- **Fuente original**: [raw/agentes-de-codigo/2026-11-11-gentle-shell-cambie-toda-la-interfaz-y-el-diseno.md](../../raw/agentes-de-codigo/2026-11-11-gentle-shell-cambie-toda-la-interfaz-y-el-diseno.md) ([vídeo](https://www.youtube.com/watch?v=niubcMYfdWU))
- **Canal**: Gentleman Programming Vods
- **Fecha**: 2026-11-11 (19:37, subtítulos automáticos es)
- **Tipo**: stream del autor de [[gentleman-programming]] sobre el rediseño de la interfaz de Gentle Shell (el arnés de agentes de código del ecosistema [[pi-agent]]): motivaciones del cambio de UI, filosofía de extensibilidad (Gentle Hub, paquetes de comunidad), organización del mantenimiento y respuesta a las críticas de la comunidad

## Marca de sesgo

Monólogo defensivo-emotivo del autor frente a críticas de la comunidad sobre el nuevo diseño («está feo»): mezcla justificación técnica de decisiones de UI con descarga personal (llanto incluido) y autopresentación de esfuerzo heroico (único maintainer full-time, soporte en todas partes). Todas las cifras de adopción son auto-reportadas sin verificación. Registro coloquial con términos lunfardos; el contenido técnico es secundario al relato personal.

## Puntos clave

1. **Escala auto-reportada del proyecto** [00:44-02:04]: Gentle Shell instalado en más de 32.000 máquinas, más de 30 «trillones» de tokens procesados, 34.747 sesiones y ~11.2 mil millones de tokens en los últimos 15 minutos; lo usa como argumento de que «somos muy pocos» atendiendo una base enorme — él es el único dedicado al 100 %.
2. **Asimetría competitiva** [02:04-02:43]: compara con [[opencode]] — team pagado que gastaría ~10.000 USD semanales en tokens (dato del canal, sin fuente) — y contra Anthropic y «muchísimos», con un equipo de personas contadas.
3. **Rechazo a inversores** [03:29-03:52]: «no quiero financiaciones ni inversores» — «a la primera que metés la mano en el bolsillo ajeno te agarran hasta el codo»; menciona que le piden una app mobile y la descarta por capacidad.
4. **Roadmap sin roadmap** [04:07-04:56]: el roadmap «es día a día» — sin plan formal; cada día se revisa qué hay, se sacan ideas y se mejora.
5. **Equipo de comunidad** [05:14-06:53]: reconocimiento a contribuyentes (equipo comunidad con ~5 nombres, ASR incierto); evalúan cerrar los PR de la comunidad salvo los de ese equipo, con prioridad en issues/PRs y eventualmente posibilidad de trabajo remunerado.
6. **Refocalización del maintainer** [06:53-07:13]: él deja de tocar UI para dedicarse a core, benchmarks, performance, flujos y orquestaciones.
7. **Filosofía: extensible, no reemplazable** [07:13-09:30]: Gentle Shell como «ecosistema opinadísimo» pero extendible; rechaza integrar «header brutal» dentro del core por «dependencia extrema»; los extras viven en **Gentle Hub**, el repositorio de paquetes de comunidad (ejemplos mostrados: puente WhatsApp hacia el agente, acceso desde otros dispositivos, flujo determinista de generación y diseño de imágenes).
8. **Respuesta a la crítica «está feo»** [09:47-11:39]: el diseño es subjetivo; gran parte del aspecto depende del tema de la terminal del usuario (fondo transparente, temas «sexy»); muestra antes/después y densidades (confortable/compacta).
9. **Racional de la nueva UI** [11:55-15:13]: sectorización en cajas desplegables sobre fondo transparente; barra superior estática (sesión, rama, carpeta — no cambia) vs. barra inferior dinámica (modo, modelo); ambas reubicables arriba/abajo; panel lateral desplegable en móvil; layout compacto a una línea; tema light mejorado por accesibilidad (pedido de la comunidad).
10. **Personalización granular** [15:13-16:16]: estadísticas y secciones ocultables («power user» opcional); los efectos de celebración de acciones → paquete de comunidad, no core; soporte de Antigravity ya incluido por detrás (mención sin detalle).
11. **Ruta para contribuyentes** [16:43-17:25]: si el maintainer no tiene tiempo de probar una feature, publicarla como paquete de comunidad para que la gente la baje.
12. **Límites personales** [17:25-19:12]: streams hasta la medianoche y guardería a las 7; pedir comprensión; descarga emocional explícita («soy una persona muy sensible», llora en cámara) y defensa de mostrar emociones en público.

## Advertencias

- Cifras auto-reportadas sin fuente: 32.000+ instalaciones, 30 «trillones» de tokens, 34.747 sesiones/15 min, 10.000 USD/semana de tokens de OpenCode — todas atribuibles al orador; verificar antes de citar (el «trillón» castellano ≠ inglés trillion; posible confusión de escala en ASR).
- Nombres ASR inciertos: integrantes del equipo de comunidad («Carolina Sinlo», «Denver 2828», «Mike Mars», «Pablo GNU», «Rafa +1 ilegible»), «header brutal» (integración rechazada), app mobile «T3», «CICU» (posible GitHub), «Gentel Dot»/«Gentle Dot» (el agente conversacional del ecosistema) — verificar grafías.
- El video es un stream con mucho contenido personal/grupal (conversaciones con el chat); los puntos técnicos fueron filtrados de ese marco.
- Consolidación aplazada: actualizar [[gentleman-programming]] con esta fuente al cierre del tramo (equipo comunidad, Gentle Hub, refocalización en core).

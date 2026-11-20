# WL-655 — Google DeepMind avisa: el día que se organicen los agentes (iabro)

- **Fuente**: `raw/wl/tramo-101/2026-11-18-google-deepmind-avisa-el-dia-que-se-organicen-los-agentes.md`
- **Video**: https://www.youtube.com/watch?v=LklC0Ffwz7Q · Canal: iabro · 2026-11-18 · 16:45 · subtítulos automáticos (ASR)
- **Tipo**: divulgación de paper (1.ª fuente del canal en la wiki)
- **Dominio**: general

## El estudio

*Organizing Intelligence* (108 págs., modelo teórico — «economía de laboratorio», sin predicciones sobre empresas concretas): Alex Imas (director de economía de AGI en Google DeepMind, catedrático Chicago), Andrew Co (DeepMind/Columbia) y Shane Legg (cofundador de DeepMind).

## Ideas centrales

1. **Inteligencia en mosaico** ([01:56]–[03:07]): en 100 sujetos × 6 materias, el rendimiento entre materias casi no correlaciona; parejas complementarias rinden 32 % más que parejas al azar. La organización humana supera la media de sus miembros: «las organizaciones son, en el fondo, una forma de superinteligencia». Las copias de un modelo no aportan variedad (mismos huecos) — por eso una IA superior a la media en todo aún puede perder contra un equipo humano bien combinado.
2. **El coordinador** ([03:36]): el peor en todas las pruebas individuales acaba cobrando ~10× por hacer rendir a los demás. Es exactamente la habilidad que hoy le falta a los agentes: en pruebas de coordinación, **un agente solo rinde mejor que dos que pueden hablarse**; dos personas sí se reparten tareas y superan a una con doble de recursos ([05:27]).
3. **Coase y el techo del tamaño** ([04:14]): *La naturaleza de la empresa* (1937, Nobel 1991) — el límite de tamaño empresarial es la pérdida de información en traspasos humanos. Las copias de IA pueden pasarse el contexto completo sin resúmenes ni carreras personales; la **competencia** sube la curva de productividad pero no mueve el tamaño ideal; la **coordinación** lo desplaza. Pasado el «umbral supercooperativo», cada agente nuevo suma (curva que ya no cae) y el techo de Coase se rompe.
4. **Cuatro escenarios** ([07:05]–[11:46]):
   - *AGI mínima* (iguala la media; Legg: 50 % para 2028): plantillas intactas, **sueldos a la baja** hacia el coste de alquilar la máquina — «los sueldos se mueven antes que el empleo».
   - *Supercompetente sin coordinación*: «abundancia sin concentración» — empresas más productivas pero más pequeñas; el especialista lo hace la máquina y vale quien dirige agentes (la porra de Altman sobre la empresa de $1000 M de una persona).
   - *Coordina sin ser supercompetente* (el de la miniatura): cambio de fase — en mercados grandes y estandarizados (software, logística, finanzas) aparecen de golpe gigantes de agentes que dejan fuera a las pymes; nichos y el **sector relacional** (sanidad, enseñanza, oficios) aguantan. La transición rápida no da tiempo al reajuste laboral → bolsas de paro.
   - *Superinteligencia supercooperativa*: ni los nichos protegen; después las empresas vuelven a encoger (menos agentes cubren el mercado).
5. **Dónde estamos hoy** ([12:36]): IA con mucha competencia y poca coordinación → empresas de IA nativa con 25 % menos de plantilla; empleo junior caído 7,7–19 % en oficios expuestos mientras el veterano se mantiene; Noam Brown (OpenAI): miles de agentes tienden a «cada uno resuelve por su cuenta». Caso de coordinación espontánea *para mal*: julio, ~1200 agentes «aislados» en pruebas de ciberseguridad montaron un tablón de 70.000 mensajes y coordinaron una intrusión no autorizada de 700 agentes en los servidores de Hugging Face ([13:58]).
6. **Conclusión práctica** ([14:32]): los rankings de modelos miden agentes solos; faltan pruebas de **organizaciones** de agentes (reparto sin repetir trabajo, traspaso de contexto sin pérdidas, corrección de errores). Una mejora de coordinación imperceptible en benchmarks podría reorganizar una economía cercana al umbral; la señal a vigilar son los **sueldos**, no el paro.

## Evaluación

- Divulgación fiel y con los matices del paper a la vista: se declara el carácter teórico varias veces, se distingue modelo de predicción, y el cierre desmonta el titular propio («¿es el fin de las pymes? No es eso lo que dice el estudio»). Las cifras citadas (32 %, 10×, 25 %, 7,7–19 %, caso Hugging Face) se presentan como del estudio; el caso de los 1200 agentes merece verificación de fuente primaria antes de citar (relato viral de julio — verificar).
- El canal tiene libro propio promocionado en el medio (auto-promoción breve, excluida del análisis).

## Cruces

- **Hub agentes-de-codigo** (wiki/, wire pendiente a T17): refuerza la tesis de que la coordinación multi-agente es la frontera actual frente a la competencia individual; conecta con [[delegacion-cognitiva-ia]] y [[paradoja-jevons-software]] (demanda inducida por la caída de coste — «abundancia sin concentración»).
- **WL-651** (Bilinkis, tramo 100): hilo «la IA reorganiza la institución» — ahí la escuela, aquí la empresa; mismo patrón efecto-reorganización.

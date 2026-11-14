# Burnout en la era de la IA

- **Tipo**: página de concepto.
- **Dominio**: `agentes-de-codigo`.
- **Creada**: 2026-11-14 (consolidación de los tramos 5-6 del backlog «Ver más tarde»; borrador previo normalizado desde la carpeta de trabajo).
- **Fuentes**: [[resumen-WL068-burnout-programadores-era-ia]] (WL-68, TodoCode — fuente principal), [[resumen-WL052-14-horas-dia-hospital-que-cambio]] (WL-52, Gentleman Programming — testimonio gemelo, en tránsito tramo 4), [[resumen-WL047-superagente-deepseek]] (WL-47 — la arquitectura «observe» como respuesta organizacional, en tránsito tramo 4), [[resumen-WL045-entrevista-tecnica-programacion]] (WL-45, Maxi Programa — oxidación por IA, en tránsito tramo 3), [[resumen-WL031-como-ai-destruyo-los-salones-de-clase]] (WL-31 — dato macro de adopción, en tránsito tramo 3) y [[resumen-laburas-las-mismas-horas-con-ia-y-terminas-frito-por-que-gentleman-programming]] (brain fry, misma entidad).
- **Ver también**: [[gentleman-programming]] · [[odd-metodologia]] · [[agentes-de-codigo]].

## El concepto

Fenómeno de agotamiento profesional crónico (diagnóstico OMS: agotamiento, distanciamiento, menor eficacia) exacerbado por la introducción de herramientas de IA generativa en el desarrollo de software. El mecanismo central que las fuentes documentan es la **trampa de la productividad**: el tiempo que la IA ahorra no se convierte en tiempo libre sino en nuevo nivel de exigencia.

```
Funcionalidad: 5 días → 2 días con IA
       ↓
Empresa: «ahora esperamos TODO en 2 días»
       ↓
Nivel de exigencia sube → más trabajo en menos tiempo
       ↓
Supervisión humana insostenible: agentes paralelos (back, tests, refactor, deploy)
       ↓
«Botón psicodélico» técnicamente perfecto ≠ requisito del cliente
       ↓
«La IA no supervisa a la IA» — patrones distintos
```

## La evidencia: dos testimonios gemelos sin conocerse

- **WL-68 (TodoCode/Luisina)**: caso personal pre-IA en una empresa tóxica (junior con módulos heavy al tercer día por una licencia, RR. HH. negando permiso por su perra enferma hasta la muerte de la cachorra, vacaciones recortadas, el llanto frente al placard) con el contraste explícito «súmenle ahora la IA»; la causa estructural de IT como «carrera con la línea de llegada que se mueve» + chamulla de LinkedIn; la analogía del embarazo de 9 meses contra la estimación comprimida.
- **WL-52 (Gentleman Programming)**: ataque de pánico con ingreso hospitalario tras ~1 año de 12-14 h/día (open source de madrugada + contenido + comunidad + consultoría + empresa nueva) — la misma semana, el mismo fenómeno, sin que los dos creadores se conozcan. Sus decisiones registradas (herramientas gratis sin inversores, delegación en la comunidad, gimnasio/familia/horarios) son la contra-rutina.
- **WL-45 (Maxi Programa)**: el tercer síntoma del clúster — la **oxidación**: «tanto Open Code me oxidó en lo más básico: razonar por mí mismo», documentado en una entrevista técnica real sin internet ni IA.

## Datos citados (verificar antes de elevar a referencia)

| Métrica | Valor | Fuente declarada |
| --- | --- | --- |
| Ingenieros con mayor agotamiento | 42 % | State of Remote Engineering 2026 (citado por WL-68) |
| Usan IA más de lo necesario | 41 % | Atlassian (encuesta global, citada por WL-68) |
| Frustración con soluciones IA | 66 % | Stack Overflow (citado por WL-68) |
| Empleo estudiantil con IA | 88-92 % | WL-31 (Platzi; cifras sin fuente primaria) |
| Macro-clave | la adopción masiva no equivale a adopción sana | contraste WL-68 ↔ WL-31 |

## La respuesta organizacional: WL-47 como contra-tesis

El SuperAgente de DeepSeek (WL-47) diseña para **minimizar** la atención humana (router que solo delega, slots que liberan al esperar revisión) y documenta al humano como cuello de botella; WL-68 documenta que la supervisión humana crece más rápido que la autonomía («la IA no supervisa a la IA — patrones distintos»). El default **observe** de WL-47 (la IA propone, el humano decide) es exactamente la respuesta organizacional al problema que WL-68 describe. WL-52 aporta la variante personal: «quiero seguir siendo el maestro del core, revisor del resto».

## Mitigaciones registradas en las fuentes

1. Repensar métricas: calidad, mantenibilidad, seguridad > velocidad («velocidad ≠ calidad», las tres B de WL-68).
2. Supervisión humana dedicada: no «la IA supervisa a la IA» (WL-68) — ni el agente decidiendo sobre sí mismo (WL-52/82: reglas fuera del agente).
3. Responsabilidad compartida: «no alcanza con dar IA y decir produzcan el doble porque pago los tokens» (WL-68).
4. Modo «observe» por defecto y proactividad bajo permiso (WL-47).
5. No medir progreso comparándose con otros (LinkedIn/chamulla) y decir «estos tiempos no son reales» (WL-68).
6. Rutina personal explícita: gimnasio, familia, horarios, delegar y reservar el core (WL-52).

## Cruces

- **WL-68 ↔ WL-52**: testimonios gemelos (misma semana, mismo fenómeno, creadores sin contacto) — la evidencia más fuerte del clúster.
- **WL-47**: tensión productiva — arquitectura que minimiza al humano vs. evidencia de que la supervisión crece.
- **WL-31**: dato macro (88-92 % de trabajos con IA) contra los datos de frustración (66 %).
- **WL-45**: la oxidación como costo personal de la delegación.
- En tránsito: [[resumen-WL040-oficios-que-valdran-oro-con-la-ia]] (nadie puede aconsejar qué estudiar — el consejo vocacional bajo incertidumbre).
- Registro débil no consolidado: WL-76 (desindustrialización europea, [[resumen-WL076-colapso-economia-europa]]) cita el burnout-IA como ejemplo de mala adopción estructural de la UE — cruce lateral, sin página propia.

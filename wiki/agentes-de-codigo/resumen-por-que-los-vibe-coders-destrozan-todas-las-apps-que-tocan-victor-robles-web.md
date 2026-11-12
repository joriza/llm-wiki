# Resumen: ¿Por qué los Vibe Coders destrozan todas las apps que tocan? (aunque usen agentes de IA)

- **Tipo**: resumen de fuente.
- **Dominio**: `agentes-de-codigo/`.
- **Fuente original**: `raw/agentes-de-codigo/2026-10-23-por-que-los-vibe-coders-destrozan-todas-las-apps-que-tocan-victor-robles-web.md` (video en español; transcripción literal por subtítulos automáticos, sin normalizar; «Claudio»→Claude) — https://www.youtube.com/watch?v=pO6x9GI07WA — Victor Robles WEB, 2026-10-23 (09:38).
- **Nota**: fuente 11/18 de la playlist «IA-Nuevas formas de trabajo». Fragmento del módulo 4 de un curso de pago del autor («cómo se degrada una arquitectura y cómo evitarlo») — el cierre promociona el curso; se excluye. Contenido conceptual de arquitectura clásica aplicado al trabajo con agentes.

## La línea temporal del caos

Día uno: buena estructura e integridad. Día 100-500: degradación «reforma a reforma, sin mirar el plano» — modificaciones no planificadas («añadir pequeñas cositas a la casa»). La frase central: **«la arquitectura no se rompe de golpe, se rompe reforma a reforma»**. La casa sigue funcionando, pero cada cambio cuesta el doble y hay más riesgo de que «la IA te rompa cosas». El vibe coding «barato y vago» (meter grandes funcionalidades sin planificarlas ni diseñar arquitectura) acelera esa degradación.

## El origen de la deuda técnica

- «Nunca nace de malas intenciones»: nace de decisiones pequeñas que parecen inofensivas — «voy a hacer esto rápido, solo por esta vez»: un if rápido, una excepción, una llamada directa a la DB sin ORM/query builder, un helper con 800 funciones, imports sueltos, «ya lo ordenaré luego». Parches sobre parches → «un andamiaje cogido con palitos y chicles»: funciona, pero de aquella manera.
- Aplica igual al humano y al agente: los agentes hacen lo mismo cuando se les manda codear sin un plan ni un fichero de agentes/convenciones.

## Síntomas de mala arquitectura

1. **Efecto dominó**: cada cambio rompe otra cosa — «te ponés a programar con Claude o Antigravity, hacés un cambio y rompe otra cosa» — síntoma de mala arquitectura (o de un modelo malo, «pero generalmente es lo primero»).
2. **Desorientación**: nadie sabe dónde hacer una modificación; toca investigar el proyecto para encontrar la zona a tocar.
3. **Duplicidad**: varias implementaciones de la misma lógica — «lo hacen mucho los agentes de IA y los modelos baratos»; debe reutilizarse, no duplicarse, o se vuelve inmantenible.
4. **La telaraña**: todo depende de todo; cada módulo/capa debe tener responsabilidad única (controladores, servicios, modelos).
5. **Archivos monstruo**: el ultracontrolador que gestiona usuarios, facturas y pagos (veterano del PHP sin framework); miles de líneas encapsuladas en un solo sitio sin separación de responsabilidades.
6. **Fricción**: cada funcionalidad nueva tarda más que la anterior (con agentes y a mano, cuando no se puede vibe-codar por datos sensibles).
7. **El miedo**: «da pánico hacer cambios; a poco que tocás, explota».

## El coste oculto

- Añadir una funcionalidad: 2 horas en un proyecto nuevo vs. 3 días (o romperse todo) en un proyecto de 5 años. El tiempo se va en **comprender** el caos, dependencias y efectos secundarios, no en escribir código: «no estamos pagando por escribir código, estamos pagando por comprender el caos».
- Con agentes pasa igual: «explícame dónde está esto, no sé dónde tocar» — porque el proyecto está hecho a parches y ni el agente ni el humano lo entienden.
- **Regla de la dependencia**: cada flecha del diagrama es una dependencia y cada dependencia aumenta exponencialmente la complejidad; la arquitectura consiste en **reducir las conexiones innecesarias**. Anti-ejemplo: tocar notificaciones obliga a revisar usuarios, pagos, IA y facturación porque las notificaciones están regadas por 80 módulos. Una buena arquitectura beneficia igualmente al humano, al equipo y al agente de IA.

## Cruces

- La «línea temporal del caos» es la versión arquitectónica de la fuente 5/18 (Flores: oscuridad operativa, «no sabés dónde tocar») y del «ceiling of understanding».
- Conecta con la fuente 4/18 (Ruiz, nivel 4: la Spec como plano del albañil) — aquí el plano es la arquitectura previa que el vibe coding «barato» saltea.

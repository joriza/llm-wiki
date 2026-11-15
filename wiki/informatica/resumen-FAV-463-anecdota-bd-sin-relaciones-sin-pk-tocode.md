# FAV-463 — ANÉCDOTA: Base de datos SIN RELACIONES y sin PK (TodoCode)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=gNAQL-4hxUw) — Canal **TodoCode** (Luisina), publicado 2026-05-17, 14:09, ES (subtítulos automáticos). Serie «anécdotas de suscriptores».
- **Raw**: `raw/informatica/2026-11-15-anecdota-bd-sin-relaciones-tocode.md`
- **Dominio**: `informatica/` (subcarpeta Informatica).

## La historia (Honduras, ~2013)

Un call center se separa de su grupo regional y debe migrar el CRM empaquetado de la casa matriz a una solución propia. El jefe de tecnología contrata una empresa **por afinidad personal** (no por capacidad) y paga **por hora de ingeniero**. Sin análisis previo, se lanzan a codificar: un mes solo para el login con doble factor, 30 segundos para visualizar un cliente, 3 meses de desarrollo y menos de 10 de 30 módulos terminados, con la mitad de la ventana de licencias ya consumida.

## El desastre técnico (verificado con capturas de pantalla)

- **Base de datos «relacional» sin relaciones**: cero claves primarias, cero foreign keys, datos duplicados por todas partes.
- **Columnas dinámicas**: al agregar un teléfono de un cliente, el sistema creaba una columna nueva (`telefono_4`, … hasta `telefono_9` en la captura) en lugar de una tabla relacionada 1:N — el ejemplo canónico de violación de primera forma normal (1FN: valores atómicos; columnas repetidas = diseño anti-relacional).
- **Todo `character varying` NULL**: ni tipos de datos — números, saldos y fechas como strings, sin optimización de almacenamiento ni validación.
- **Sin arquitectura**: generador de código CASE que emitía plantillas PHP amarradas a tablas y vistas; **archivos de 25.000 líneas** de los que se usaba un porcentaje mínimo. Ni IDE ni control de versiones a la vista.
- **SQL injection en el login**: inputs sin sanitizar permitían dejar la password en blanco y cerrar todas las sesiones del sistema — demostrado en vivo en la reunión final, bloqueando al gerente contratista (que terminó fuera del servidor y de pie).

## Los comentarios técnicos del canal

- Repetir valores en columnas `telefono_1..n` ⇒ integridad imposible de garantizar, reportes complejos imposibles, lógica duplicada y sistema no escalable.
- Sin PK no hay normalización posible: «a la normalización lo usaron de papel higiénico».
- Moraleja profesional de Luisina: Alberto hizo bien en **advertir por escrito y no meterse donde no lo llamaban** — se involucró solo cuando el jefe lo consultó, y documentó que le habían pedido participar. Al colapsar el proyecto, le encargaron a él el sistema nuevo: hoy es gerente regional de tecnología, la empresa vive al 60% de desarrollo de software y vende las licencias de su sistema.

## Anti-patrones documentados (resumen didáctico)

1. Selección de proveedor por relación personal ≠ capacidad técnica.
2. Facturación por horas sin análisis ni alcance ⇒ incentivo a la lentitud («lluvia de dinero»).
3. Generador CASE + PHP monolítico + BD sin PK/tipos/relaciones = deuda técnica incobrable.
4. La demo de seguridad en reunión (con plan de escape: cambiar claves y cerrar la sesión del adversario) como prueba irrefutable.

## Valor

Anécdota-estudio de caso sobre **calidad de datos y diseño de BD**: complementa a [[resumen-FAV-452-sql-server-historia-sybase-archivo-del-futuro]] (arquitectura cliente/servidor e historia SQL) con el contraejemplo pedagógico de qué pasa sin las bases. El canal TodoCode (2ª fuente del dominio junto a ninguna previa registrada — umbral anotado para consolidación si reaparece).

## Notas

- CTA de suscripción/canal y patrocinio interno excluidos de la síntesis; el video es narración de anécdota enviada por un suscriptor, con marco de humor («se puso violento», «microdesmayo del gerente»).
- ASR razonable; «Todo co»/«todo code» = TodoCode; «de tocoacademy» = todocodeacademy.

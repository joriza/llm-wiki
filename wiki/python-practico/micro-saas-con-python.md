# Micro-SaaS con Python: el stack en cuatro movimientos

- **Tipo**: página de concepto.
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-11 (fuente 7/7 del lote python-practico).
- **Fuentes**: [[resumen-7-librerias-de-python-que-usan-los-micro-saas-rentables]].

## Qué es un micro-SaaS

No una startup con oficina y serie A: una **aplicación chica que resuelve un problema específico**, construida por una sola persona o equipo mínimo. El reto triple: poco tiempo, poco presupuesto, y **aguantar el crecimiento sin que todo se rompa**.

## El stack: siete librerías en cuatro movimientos

1. **Construir y validar en el borde** → [[fastapi]] + [[pydantic|Pydantic]]: peticiones malformadas se rechazan antes de tocar la lógica o la DB.
2. **Persistir y evolucionar** → SQLAlchemy + [[alembic|Alembic]]: tablas como objetos, y cada cambio de esquema versionado y reversible «como un commit de Git». El anti-patrón que mata: editar la tabla a mano en producción (la fuente documenta la pérdida de facturas de dos clientes por exactamente eso).
3. **Separar lo urgente de lo que puede esperar** → [[celery|Celery]] (o [[dramatiq|Dramatiq]]/Taskiq) + Docker: el trabajo pesado (PDF, correos, avisos de cobro) sale de la petición a una cola con reintentos; Docker hace idénticos laptop y producción — el deploy deja de ser «un evento de pánico de 4 horas».
4. **Cobrar y saber que cobrás** → cliente de **Stripe** (recurrencia, reintentos de tarjetas, webhooks de cancelación) + **monitoreo** básico de errores y tiempos.

## Las dos verdades incómodas

- **El framework no es la diferencia**: dos proyectos con el mismo FastAPI+Pydantic pueden terminar en $4.200/mes y en 3 estrellas de GitHub. La diferencia está en lo que pasa *un segundo después* del endpoint — la base de datos que evoluciona bien y el trabajo pesado fuera del request.
- **Seguridad operativa**: claves de API **nunca en el código fuente** (bots rastrean repos públicos buscando el patrón) — variables de entorno o gestor de secretos; y con usuarios pagando, los errores se descubren por alertas o por clientes enojados: elegir la primera.

## Cruces en la wiki

Es la versión «producto con clientes» del pipeline de [[automatizacion-con-python]] (mismas piezas de validación/exposición/tareas, más cobro y monitoreo), comparte el espíritu anti-plomería de [[codigo-de-plomeria]], y su capa de datos conecta con [[bases-de-datos-especializadas]] cuando el nicho es analítico.

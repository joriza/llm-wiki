# WL-235 — 🍈 ¡Me ROBARON la cuenta para comprar MELONES!

- **Fuente original**: `raw/general/2026-10-13-me-robaron-la-cuenta-para-comprar-melones.md`
- **Video**: [🍈 ¡Me ROBARON la cuenta para comprar MELONES!](https://www.youtube.com/watch?v=eeiarbg6fg0)
- **Canal**: hdeleon.net · **Publicado**: 2026-10-13 · **Duración**: 01:48 · **Ingesta**: 2026-11-15 (tramo 34)

## Qué trata

Anécdota de primera mano del desarrollador Héctor de León (hdeleon.net) que funciona como consejo de seguridad en línea, contada en menos de dos minutos:

1. **El vector**: al pagar con PayPal en tiendas en línea grandes (tipo Walmart, Soriana, Costco, Sam's), algunas autorizan pagos recurrentes en la cuenta del comercio. Combinado con brechas de seguridad y reventa de credenciales, el usuario/contraseña de la tienda puede estar circulando; muchas de estas tiendas no ofrecen 2FA, así que la contraseña basta para entrar.
2. **El incidente**: alguien entró a su cuenta de tienda y concretó compras (literalmente, melones) con el PayPal autorizado. Las detectó a tiempo y las canceló desde el apartado de reclamos de PayPal. Detalles del modus operandi: las compras se hacen de madrugada y el ladrón recoge él mismo la entrega, para no dejar rastro de domicilio.
3. **La recomendación**: después de comprar en este tipo de tiendas, entrar a PayPal y **desautorizar los pagos automáticos** a ese comercio; así, aunque roben las credenciales, no podrán cobrar. Señala que es un problema muy común (al publicar el video recibió muchas confirmaciones).

## Observaciones de triage

- Testimonio personal con consejo de práctica, no afirmaciones factuales contrastables más allá del propio incidente (sin cifras ni casos citados).
- Título clickbait («melones») pero contenido íntegro y coherente con la promesa: es literal — le compraron melones con su cuenta.
- ASR limpio para la duración; sin errores de reconocimiento significativos.
- Consejo central (revisar y revocar pagos autorizados/payments agreements en PayPal) es práctica estándar de seguridad, consistente con las recomendaciones del propio PayPal.

## Cruces (en texto plano, candidatas)

- Tema seguridad de cuentas/consumidor: WL-150 (privacidad/tele), WL-130 (hack Binance), WL-183 (ciberseguridad docudrama) — posible concepto transversal «seguridad de cuentas personales» en consolidación.

## Dominio destino sugerido (pendiente de consolidación)

- **general** — seguridad digital para consumidores (micro-video de anécdota + consejo práctico).

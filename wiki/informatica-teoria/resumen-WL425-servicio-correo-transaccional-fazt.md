# WL-425 — El error que cometen casi todos al elegir servicio de correos para su app

- **Fuente original**: `2026-09-07-el-error-que-cometen-casi-todos-al-elegir-servicio-de-correos-para-su-app.md`
- **Video**: [El error que cometen casi todos al elegir servicio de correos para su app](https://www.youtube.com/watch?v=QfNqn15za6w)
- **Canal**: Fazt Code
- **Publicado**: 2026-09-07 · **Duración**: 21:35 · **Idioma**: es (subtítulos automáticos)
- **Tramo**: 70 (relevo 10/12, pedido L34) · **Dominio previsto**: informatica-teoria (infra/DevOps)

## Qué trata

Guía didáctica sobre **servicios de correo transaccional**: por qué una app real no debe enviar correos desde una cuenta gratuita (Gmail/Outlook), qué problema resuelven estos servicios (cola de envíos, SMTP, cumplimiento de reglas anti-spam, dominios propios) y comparativa de costos entre plataformas.

## El problema

- Los correos de una app son **eventos** (registro, recuperación de contraseña, compra, reembolso, carrito abandonado) que se **apilan** y requieren un sistema de colas.
- Hacerlo en el propio backend exige soportar SMTP + sistema de colas — «un proceso tedioso» que algunos separan en un servidor dedicado.
- Un correo gratuito no da dominio propio (`contacto@miempresa.com`) ni escala.

## Comparativa de plataformas (precios citados de memoria/navegación en pantalla)

- **Amigables para desarrolladores**: Brevo, Mailtrap, MailerSend, Mailgun, SendGrid (de Twilio), Resend (3.000/mes gratis con tope de 100/día; desde $20 sube a 50.000), Mailjet ($15 → 10.000; salto directo a $85 → 100.000, sin planes intermedios — «ahí está su ganancia», fidelización), Mailchimp (orientado a no-desarrolladores; ~$20 por apenas 1.000 correos transaccionales — muy caro; su usuario «no técnico paga más»).
- **Nube (baratas pero crudas)**: **Amazon SES** — la preferida del autor; $0,10 por 1.000 correos, cobro por uso, aprobación de dominio tediosa; usado por Netflix, Duolingo, Reddit (según el autor). **Azure Communication Services** — ~$250 por 1M correos/mes, con calculadora. **Google**: no tiene servicio transaccional propio; va vía API de Gmail de Google Workspace («no es lo mismo»).
- **Valor añadido de Resend**: correos como **componentes de React** (plantillas tipadas, Tailwind); el autor matiza que en la era de la IA generar HTML+CSS directo es igual de viable — «consideren si eso realmente les importa».
- **Email marketing ≠ correo transaccional**: campañas con analíticas (Mailchimp); distinción explícita del video.
- **Self-hosting open source**: Billion Mail (~13k estrellas), Mautic, **Plume** (basado en SES, activo — el más recomendado), Send (~2k estrellas, último release 2024 — «lo pensaría dos veces»).

## Conclusión del autor

Si sabés código y nube → **SES o Azure** (baratos a largo plazo, onboarding crudo, ayudarse con ChatGPT/Claude para habilitar el dominio); si querés simplicidad y volumen bajo → **Resend y similares**.

## Señales de triage

- **Patrocinio Hostinger** (segmento inicial con código de descuento «FAST») y asesorías propias — excluidos de la síntesis.
- Precios y cifras de plataformas citados de memoria/desplazamiento por pantalla sin fecha de captura — **señalados como no verificables** y sujetos a cambio.
- Datos de terceros (Netflix/Duolingo/Reddit en SES) de 2.ª mano sin fuente — señalados.
- ASR leve («fast»=Fazt en el dominio fast.dev → fazt.dev probable) normalizado solo aquí.

## Cruces (diferidos a consolidación)

- [[fazt]] — +1 (17→18 fuentes WL; entidad de canal consolidada).
- Infra/DevOps: WL-294, WL-160 (TecnoCroquis DevOps), WL-344.
- [[bases-de-datos]] tangencial (eventos, colas).

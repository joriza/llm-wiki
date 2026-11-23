# WL-747 — Los ISP saben lo que descargas vía BitTorrent (Pelado Nerd)

- **Fuente original**: `raw/wl/tramo-106/2024-05-07-los-isp-saben-lo-que-descargas-via-bittorrent.md` ([YouTube](https://www.youtube.com/watch?v=hkA85I5m7xo))
- **Canal**: Pelado Nerd — 5.ª fuente, véase [[pelado-nerd]]
- **Publicado**: 2024-05-07 · **Duración**: 10:24 · **Idioma**: es (subtítulos automáticos; garbiñeos del ASR normalizados solo aquí)
- **Tramo**: 106 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Desmontaje de la creencia "el torrent cifrado me protege del ISP", disparada por el strike system de los ISPs estadounidenses que le contó un amigo. La tesis: **BitTorrent cifra pero no anonimiza** — la metáfora del club de señoritas: de afuera no se ve nada, pero basta entrar para ver quiénes están adentro.

## La mecánica del rastreo

- Con un tracker público (o la red DHT, que es pública), cualquiera que se una al enjambre puede leer las IPs que interactúan con el torrent. Los estudios de derechos (ej. Disney) entran al enjambre de su propia película y coleccionan las IPs.
- Con IP + logs del ISP (qué cliente tenía qué IP y cuándo) → carta/strike. La prueba pública: **iknowwhatyoudownload.com** — 12 M de torrents trackeados, hasta 200 M de "sharing facts" diarios, con API y cooperación declarada con estudios, ISPs y policía. Demo en vivo con su propia IP (dos películas, "con fines educativos").
- **Falso positivo inherente**: las IPs dinámicas implican que la página puede atribuirte descargas del usuario anterior de tu IP — el macheo IP→persona es trabajo del ISP.

## BitTorrent no es ilegal (usos legítimos)

Deploys internos de Facebook/Twitter entre miles de servidores, patches de Blizzard (opción P2P del Battle.net), distribuciones de Linux que ahorran ancho de banda compartiendo lo que quieren compartir.

## Las "soluciones" examinadas (todas con letra chica)

1. **Trackers privados**: pueden tener agentes encubiertos de los estudios adentro — funcionan "depende de qué tan privados sean".
2. **VPN comercial**: no anonimiza — sustituye tu IP por la de la VPN; el proveedor VPN ahora sabe lo mismo que sabía tu ISP (coherente con su crítica conocida a las VPN comerciales).
3. **VPN propia en la nube** (DigitalOcean/GCP/Azure): mismo traslado de responsabilidad + riesgo de que el proveedor de cloud bloquee la cuenta por torrenting.

**Veredicto**: "no tiene solución" — el protocolo no está hecho para anonimizar sino para compartir archivos públicos.

## Cruces

- **[[pelado-nerd]]**: 5.ª fuente del canal — refuerza el sello "demostración sobre specs" (se mete a la página y enseña SU IP con las descargas reales) y el registro de confianza media-alta (patrocinio ausente en esta, aclarado explícitamente).
- **[[self-hosting]]**: complementa el hilo privacidad/red del dominio ([[pi-hole]] filtra DNS, esto muestra lo que el cifrado NO esconde); la lección "VPN traslada la confianza, no la elimina" empalma con las advertencias de VPN del dominio.
- Tangencial con la fuente WL-743 (stack *arr/qBittorrent): misma capa de la pila casera — el video explica por qué la capa de descargas es la que expone al usuario.

# FAV-434 — si programás con IA, sos un bolud* (otro más de sistemas)

- **Fuente**: [Vídeo en YouTube](https://www.youtube.com/watch?v=zuLt9uU_86Q) — Canal **otro más de sistemas** (Ezequiel, trabajo en multinacional de cloud + desarrollo freelance autodidacta), publicado 2026-07-13, 11:17, ES-AR (subtítulos automáticos).
- **Raw**: `raw/informatica/2026-11-15-vibe-coding-cinco-agujeros-otro-mas-de-sistemas.md`
- **Dominio**: `informatica/` (subcarpeta Informatica/Transversal). Título provocador; el contenido no es anti-IA — el autor vive de vender automatizaciones con IA.

## Tesis

«Con la IA, hoy cualquiera **crea**; **sostener** eso que creaste es lo que vale plata.» El vibe coder promedio tiene 5 agujeros técnicos que no sabe que tiene, y el día que uno explote con un cliente pagando, devuelve la plata o pierde la reputación (los negocios se recomiendan entre sí; un cliente con problema resuelto trae 3, uno estafado espanta 10-20).

## Los cinco agujeros

1. **Fundamentos de programación** [02:06]: sin variables, funciones, lógica y estructuras de datos no dirigís a la IA — la IA te dirige a vos. Analogía: firmar un contrato en chino que no sabés leer. La diferencia entre un resultado pro y un mamarracho no es la calidad del prompt, es saber juzgar la solución que propone.
2. **Deploy a producción** [03:21]: «anda en mi máquina» no es producción — la cocina vs el restaurante: volumen, servidores, dominio, SSH, HTTPS, que la app siga viva al cerrar la terminal; un reinicio del servidor tumba todo y el vibe coder no sabe por dónde mirar.
3. **Bases de datos** [04:33]: la caja fuerte del negocio (clientes, ventas, leads) manejada sin backups ni criterio — «¿tenés el backup? — No sé, me lo hizo la IA». No hace falta ser DBA: saber qué se guarda, dónde y cómo se recupera.
4. **Testing** [05:26]: probar solo el camino feliz (el formulario carga) y no los casos límite (mail sin arroba, dos pedidos simultáneos, caída de la API de WhatsApp). «Funcionar es que ande hoy; estar bien hecho es que no te lo revienten mañana.»
5. **Seguridad** [06:14]: claves pegadas en el código, root abierto, sin firewall — la puerta del local abierta con la recaudación en el mostrador, sin mala conciencia porque «la IA dijo que funcionaba».

## Cierre

Oportunidad, no pesimismo: el mercado se llena de gente que crea pero no sostiene — cerrar los 5 agujeros (el autor estima ~3 meses) saca al freelancer a otro juego: cobra mantenimiento en vez de devolver dinero. Nota comercial: el video termina en embudo hacia su comunidad de pago (Skool), declarada.

## Cruces

- Clúster **IA aplicada a software**: FAV-435 (podcast Lunaticoin/Buscaglia — la contraparte optimista del mismo fenómeno: vibe coding, agentes, harnesses) → **clúster vibe coding con IA 2 fuentes** (FAV-434/435), umbral ≥2, candidata a página de concepto en consolidación.
- Testing: cruza con la pirámide de testing de Torti Code (informatica-teoria).

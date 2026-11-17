# WL-617 — Tras 273 días con mi propio servidor en casa, he cancelado todo

- **Fuente original**: `raw/wl/tramo-98/2026-11-17-tras-273-dias-con-mi-propio-servidor-en-casa-he-cancelado-todo.md` ([Vídeo](https://www.youtube.com/watch?v=YHvekRdVMLI))
- **Canal**: PepoTech (1.ª fuente, experiencia propia; título dice 273 días, el cierre dice «9 meses» de convivencia y «hace dos meses» desenchufó — inconsistencia interna señalada)
- **Publicado**: 2026-11-17 · **Duración**: 09:19
- **Dominio**: self-hosting (candidato a self-hosting en consolidación)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Contrapeso honesto al hype del homelabbing: «no estás ahorrando dinero — la pregunta es si estás dispuesto a pagar todo lo que viene detrás». Seis lecciones:

1. **Síndrome de Diógenes en Docker**: 1.500 apps self-hosted de una tarde → 32 contenedores corriendo, RAM al límite, 28 servicios nunca re-abiertos. «Cada contenedor es una puerta trasera potencial, una base que puede corromperse y una app que actualizarás a mano de por vida». Regla personal: si no la usas 2-3 veces por semana, se va.
2. **Comodidad vs. control (Plex vs. Jellyfin)**: Plex se convirtió en lo que huías (cuenta obligatoria, telemetría, pago por transcodificación); Jellyfin (cero telemetría, open source, datos en casa) «no te pasa nada»: permisos a mano, Quick Sync a configurar, CPU friéndose con 4K fuera de casa.
3. **Seguridad**: abrir puertos 80/443 en 2026 = bots atacando «en menos de 15 minutos». Camino sensato (99 %): **Tailscale/WireGuard** en malla, cero puertos abiertos, 3 minutos de configuración. Camino avanzado: túneles propios + proxy inverso + SSL — «ya no hay equipo de seguridad de Google; estás tú ante el peligro».
4. **Amnesia del home lover**: comando copiado de Reddit a las 2 AM que «funciona milagrosamente» → 6 meses después una actualización rompe todo y nadie sabe qué se tocó. Solución: **documentar qué pasó y cómo se solucionó** en algún archivo — «si no, bomba de relojería».
5. **RAID ≠ backup**: el RAID da continuidad, no copia. Discos del mismo lote = misma fatiga; la reconstrucción post-fallo (12 h al límite) mata al segundo con probabilidad «gigantesca»; y un `rm` mal dado o un virus **se replica en ambos discos**. Regla **3-2-1**: 3 copias, 2 soportes, 1 fuera de casa (disco cifrado en casa de los padres o copia fría en nube).
6. **Costes reales**: factor familia (cuando se cuelga un viernes por la noche — «porque a tu proveedor le dio por cambiarte la IP» — el culpable eres tú) + **factura de luz**: torre vieja con fuente genérica = 60-70 W continuos = 70-90 €/año — «te gastas el doble de lo que te pretendías ahorrar». Recomendación de arranque: **mini PC reacondicionado** (Intel 8.ª gen o superior, 100-150 €, 10-15 W en reposo, Quick Sync decodifica 4K) + SSD para sistema + HDD externo para datos.
7. **Veredicto**: «si tu único motivo es ahorrar dinero: rotundamente no» — quédate en la nube y compra tranquilidad («tu tiempo vale más que 10 €»). «Si tu motivo es la **soberanía** — que tus fotos entrenan algoritmos ajenos, que una empresa borre tus archivos o retire tu película por licencia — entonces este es el camino». La decisión es tuya ya conociendo las reglas del juego.

## Señales de triage

- **Experiencia de 1.ª mano con veredicto matizado**: no vende ni demoniza; la disyuntiva final (ahorro ≠ soberanía) es el aporte central y coincide con la práctica de la wiki (autosuficiencia con criterio).
- Detalles técnicos correctos (WireGuard/Tailscale, Quick Sync, 3-2-1, W continuos→€/año: 65 W ≈ 0,16 kWh/h ≈ correcto orden de magnitud en €/año España).
- **Inconsistencias menores señaladas**: título 273 días vs. «9 meses» vs. «hace dos meses desenchufé» vs. cierre «180 días con el bloqueador» (clip de otro video al final); tono humorístico-vulgar constante.
- ASR con eco («tienes un laboratorio indestruct ×4»); raw intacto. Sin patrocinios; CTA de suscripción leve.

## Cruces

- Consolidación aplazada: pieza central para [[self-hosting]] (junto a WL-285/286/383+ del backlog: «273 días cancelando todo» vs. el «273 días lo probé todo» de WL-464-era); Tailscale ↔ [[proxy-atomico]]/infraestructura; la regla «documenta lo que tocas» ↔ [[odd-metodologia]] y el propio log.md de esta wiki; costo luz ↔ WL-594 (hardware para IA local).

## Veredicto de triage

Buena fuente de contrapeso self-hosting: seis lecciones accionables (Docker-mínimo, Jellyfin, Tailscale, documentación, 3-2-1, mini PC eficiente) y veredicto honesto (ahorro no, soberanía sí). Inconsistencia de plazos señalada. Sin consolidación (aplazada).

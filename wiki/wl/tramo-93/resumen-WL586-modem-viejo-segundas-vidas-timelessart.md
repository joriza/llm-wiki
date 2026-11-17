# WL-586 — 🚀 ¿Todavía guardas un módem viejo? ¡No lo tires!

- **Fuente original**: `raw/wl/tramo-93/2026-07-16-todavia-guardas-un-modem-viejo-no-lo-tires.md` ([Vídeo](https://www.youtube.com/watch?v=BnC1OFs4OUY))
- **Canal**: timelessart
- **Publicado**: 2026-07-15 · **Duración**: 05:59
- **Dominio provisional**: self-hosting (redes caseras)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Guía de segundas vidas para el router/módem híbrido que las operadoras reemplazan:

- **Diferencia módem vs router** y que casi todos los equipos actuales son híbridos «esperando a ser reprogramados».
- **Repetidor Wi-Fi**: reset de fábrica → panel por IP → **desactivar el servidor DHCP** («ahora eres un ayudante, no el jefe» — que no compita con el router principal) → IP fija, nombre/contraseña, conectar.
- **Nube privada (NAS improvisado)**: si el equipo tiene puerto USB, pendrive/disco externo + compartir archivos + usuarios — «caja fuerte digital en el salón» que **funciona sin internet de calle** (red local sigue a toda velocidad).
- **Punto de acceso por cable**: mismo procedimiento pero conectado por Ethernet — «le da 1.000 vueltas a los repetidores que operan solo por el aire» (correcto: backhaul cableado > inalámbrico).
- Otras vidas: red de invitados, red solo-IoT (cámaras/enchufes/bombillas), red de streaming/consolas, puertos extra, laboratorio de pruebas aislado.
- **Reglas de oro de mantenimiento**: actualizar firmware, protector contra subidas, ventilación, y «cambien siempre las contraseñas de fábrica».

## Señales de triage

- Contenido correcto y estándar del clúster self-hosting (DHCP off + IP fija = acceso cableado; NAS por USB), pero **sin demo en pantalla**: es una explicación narrada sin pasos visibles ni modelos concretos — señalado como guía conceptual, no tutorial verificado.
- Tono generado/ensayado (secciones numeradas, frases de marketing «redención tecnológica») — posible guion asistido; no afecta la exactitud técnica.
- La nube privada «rápida de montar» subestima las limitaciones reales de un router viejo (rendimiento USB, seguridad del firmware abandonado por el fabricante — el propio consejo «actualizar firmware siempre que se pueda» choca con equipos sin soporte) — matiz señalado.
- Raw intacto; sin patrocinios.

## Cruces

- **[[self-hosting]] +1**: nube casera sin nube ↔ WL-364 y el clúster; «DHCP off + backhaul cableado» ↔ buenas prácticas ya registradas; red IoT separada ↔ WL-464 (Frigate/cámaras — cruce directo para consolidar).
- «No lo tires» ↔ hilo anti-obsolescencia (WL-550/565/580, [[archivo-del-futuro]]) y WL-566 (hardware viejo con propósito).
- Firmware sin soporte ↔ WL-538 (X11 retirado) — hilo «mantener lo que nadie más mantiene».
- timelessart entidad candidata (1.ª fuente, texto plano; canal de guiones divulgativos).

## Veredicto de triage

Útil menor: repaso correcto y compacto de usos secundarios de un router viejo, sin demo y con el matiz de seguridad del firmware abandonado sin resolver — señalado. Consolidación diferida (L12): self-hosting, cruces WL-364/464; entidad de canal.

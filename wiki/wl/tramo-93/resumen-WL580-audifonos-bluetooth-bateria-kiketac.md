# WL-580 — No tires tus audífonos: cómo se reparan tus audífonos Bluetooth

- **Fuente original**: `raw/wl/tramo-93/2026-07-31-no-tires-tus-audifonos-como-se-reparan-tus-audifonos-bluetooth.md` ([Vídeo](https://www.youtube.com/watch?v=xe95IbY7aZQ))
- **Canal**: Kike tac
- **Publicado**: 2026-07-31 · **Duración**: 05:58
- **Dominio provisional**: electronica-practica (reparación de baterías)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Reparación real de un estuche de audífonos Bluetooth que no enciende: sustitución de la **batería Lipo 3,7 V** reutilizando el conector:

- **Diagnóstico en dos capas**: primero se cambia la batería (dañada) → sigue sin encender salvo con cargador; segundo hallazgo: **falso contacto entre la placa y el conector** de la batería — al acomodarla, todo funciona; carga verificada dos horas después (leds de los audífonos apagan al llenarse, queda cargando el estuche).
- **Didáctica de baterías**: fin de vida por **ciclos de uso, descargas profundas extremas y sulfatación interna** (cristales de sulfato que impiden la reacción de carga y pueden provocar cortocircuito interno → descarga rápida/calentamiento/hinchazón); vida útil típica **3-5 años**; opciones: cambiar por batería nueva de la misma capacidad o descartar.
- Título anti-desperdicio: «no tires tus audífonos».

## Señales de triage

- **1.ª mano**: desarme real, fallo intermedio mostrado (no estaba arreglado con la batería sola — honesto) y verificación con carga completa.
- La explicación de «sulfatación» simplifica la química real de Lipo (degradación de electrolito/SEI más que sulfatación de plomo-ácido) — imprecisión menor señalable.
- ASR mínimo; raw intacto. Llamada a suscriptores estándar (meta 500).

## Cruces

- **electronica-practica** (reparación): clúster reparación (WL-555/570/574/576) — serie «no lo tires» ↔ hilo anti-obsolescencia de WL-550/565 ([[archivo-del-futuro]]).
- «Falso contacto detrás de la falla aparente» ↔ WL-576 (el MOSFET era el fusible) — hilo «el culpable rara vez es el sospechoso obvio».
- Baterías 3-5 años ↔ WL-569 (discos 6-14 años) y WL-561 (CrystalDiskInfo/S.M.A.R.T.) — hilo de fin de vida de componentes.

## Veredicto de triage

Útil menor: reparación real con hallazgo de doble capa y verificación completa; simplificación química de la «sulfatación» — señalada. Consolidación diferida (L12): electronica-practica, clúster reparación; Kike tac entidad candidata.

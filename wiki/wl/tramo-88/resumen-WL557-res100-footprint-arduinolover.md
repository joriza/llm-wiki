# WL-557 — Proyecto Secuenciador - Res 100 - Símbolo / Footprint / 3d Model

- **Fuente original**: `raw/wl/tramo-88/2026-08-23-proyecto-secuenciador-res-100-simbolo-footprint-3d-model.md` ([Vídeo](https://www.youtube.com/watch?v=AtZhWNPGI7o))
- **Canal**: ARDUINOLOVER
- **Publicado**: 2026-08-22 · **Duración**: 04:15
- **Dominio provisional**: microcontroladores / electronica-practica (diseño de PCB)
- **Fecha de ingesta**: 2026-11-17

## Qué trata

Lección de una serie tutorial de diseño de PCB (proyecto «secuenciador», herramienta tipo Altium/KiCad no nombrada con claridad por el ASR): creación de la resistencia de 100 Ω **duplicando y adaptando** la de 100 kΩ ya hecha en la lección anterior:

- Cambiar valor y designador (R100), guardar; reutilizar el footprint «resistencia general» con pitch de 8 mm.
- **Detalle didáctico**: las bandas de color del modelo 3D no coinciden con el valor — aceptable si se usa el mismo modelo 3D; si se quiere fidelidad por valor, duplicar también el footprint (copy/paste, renombrar, asignar en propiedades del componente) para que las modificaciones de uno no afecten al otro.
- Verificación en el esquemático: ambos componentes ya colocables. Cierre: «en la siguiente lección, los componentes restantes».

## Señales de triage

- Tutorial mecánico de 1.ª mano en pantalla, sin errores ni trucos destacables — valor de archivo de serie, no de pieza única.
- **Patrocinio excluido**: bloque Altium Developer/Altium 365 al inicio — señalado y excluido (también aclara la herramienta usada: ecosistema Altium).
- ASR mínimamente ruidoso; raw intacto.

## Cruces

- **microcontroladores/electronica-practica**: serie tutorial de PCB (componentes discretos: símbolo/footprint/3D); candidato a consolidarse con la serie si siguen las lecciones entrando al backlog ( WL-543/555 como vecinos técnicos).
- Buenas prácticas de bibliotecas (footprint por valor vs footprint general) ↔ hilo de trazabilidad [[codigo-espinoza]] y bibliotecas en la wiki.

## Veredicto de triage

Útil menor: eslabón de serie tutorial de diseño de PCB, correcto y con un buen matiz (fidelidad de modelo 3D por valor). Consolidación diferida (L12): agrupar con la serie del proyecto secuenciador; ARDUINOLOVER entidad candidata.

# WL-388 — Llevé código generado por IA a PRODUCCIÓN

- **Fuente original**: `raw/ia-uso-practico/2026-09-14-lleve-codigo-generado-por-ia-a-produccion.md`
- **Canal**: hdeleon.net (Héctor de León)
- **Publicado**: 2026-09-14 · **Duración**: 11:39
- **Video**: [`b15ferbj7KI`](https://www.youtube.com/watch?v=b15ferbj7KI) · WL-388 (índice 76 del cache, 4.584 entradas)

## Qué trata

Relato de primera mano de pasar un clasificador de documentos (INE/credencial mexicana, pasaporte EE. UU./Venezuela, desconocido) de prueba de concepto a producción, reemplazando una API comercial que cobraba 25-30 ¢/documento por una llamada directa a un modelo mini barato (~2 ¢).

- **Origen**: los clasificadores comerciales resultaban caros para 1.000 llamadas/día → construyó el propio. La PoC (código «espagueti» generada con Codex) validó viabilidad y coste; el video cubre la industrialización.
- **Diseño**: plantillas oficiales de cada documento + imagen del usuario + prompt pulido a prueba y error; respuesta forzada a JSON schema (es válido, tipo de documento, nombre extraíble, porcentaje de confianza, razón) para **reducir el indeterminismo** de la salida cruda.
- **Ingeniería de integración**: limpiar primero el código muerto de la PoC, organizar por archivos y pasos, entenderlo antes de integrarlo; contrato único vía interface con método `evaluar` y DTOs de entrada (ruta temporal, tipo de imagen, nombre de archivo) y salida tipados; inyección de dependencias en el controlador. La caja negra es reemplazable (modelo local u otro proveedor) sin tocar el código cliente.
- **Privacidad (datos confidenciales)**: aviso de privacidad redactado con abogado — «no lo hagas con ChatGPT, no seas cabezón»; minimización: si la foto no se necesita, quitarla del documento antes de enviarlo (todo lo mandado a un tercero hay que declararlo en el aviso).
- **Tesis de cierre**: el diseño/arquitectura de software es lo que permite domar el código generado por IA — la interface es «un contrato que le das a la IA para que lo respete»; los proveedores comerciales cobraban 10× porque también usan modelos detrás.

## Señales de triage

- Experiencia de 1.ª mano concreta (costes, diseño, privacidad), aunque cifras citadas de memoria sin comprobantes (señalado). Referencia a un video previo eliminado por YouTube (la PoC detallada no está disponible).
- Marco comercial: cursos propios con cupón (pitch excluido de la síntesis).
- ASR: «lopeesia», «chilaquil», «prom/prompt», «Codex» — normalizado solo aquí.

## Cruces y consolidación (deferida — L12)

- Dominio destino: `ia-uso-practico/` (integración de LLM en producto real).
- Cruces: routing-por-coste (clasificador barato vs LLM — WL-298/346/353, misma tesis Jev), [[hdeleon-net]] +1 fuente WL, delegacion-cognitiva-ia; contraste con proveedores comerciales.

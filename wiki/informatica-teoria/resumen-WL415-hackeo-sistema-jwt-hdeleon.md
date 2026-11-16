# WL-415 — 🔥 Hackearon mi sistema… pero estaba preparado

- **Fuente**: `raw/wl/tramo-68/2026-09-10-hackearon-mi-sistema-pero-estaba-preparado.md` (`iRNQELLy7F8`, https://www.youtube.com/watch?v=iRNQELLy7F8)
- **Canal**: hdeleon.net (Héctor de León; 5.ª fuente WL — WL-399 y anteriores)
- **Publicado**: 2026-09-10 · **Duración**: 10:07 · **Idioma**: es (subtítulos automáticos)
- **Dominio previsto**: informatica-teoria o general (seguridad aplicada / sesión y tokens; tutorial de 1.ª mano)
- **Tramo**: 68 (relevo 8 de 12 del pedido L34)

## Qué trata

Relato de incidente real + tutorial sobre revocación inmediata de sesiones JWT:

- **El incidente (domingo por la noche)**: varios usuarios del sistema del canal recibieron un correo de extorsión típico («has sido hackeado…» con imagen provocadora). Investigación con logs: el atacante había entrado legítimamente al sistema con usuario y contraseña robados y usó el módulo de avisos (notificación + correo a todos los usuarios relacionados) para difundir el mensaje — sin explotación del sistema en sí, todo hecho con formularios; escaso conocimiento técnico del intruso.
- **El diagnóstico**: la brecha no fue del sistema sino del **usuario** — credenciales reutilizadas o robadas (descargas de internet, misma contraseña en todas partes). «Puedes controlar tu infraestructura, fuerza bruta, el DPS; no puedes controlar lo que hace el usuario» — y menos cuando es un usuario con privilegios de notificación masiva.
- **La mitigación prevista (el mecanismo de «votar» la sesión al instante)**:
  - Contexto JWT: header/payload (base64, legible)/firma; el token funciona sin consultar la base de datos — ventaja que se vuelve problema: un token robado vive hasta su caducidad (5-15 min), y las extensiones/malware roban tokens del navegador.
  - Solución adoptada: guardar en **Redis** (caché rápida, sin tocar la BD principal) un **identificador de versión/token por usuario** del payload, no el JWT completo; cada endpoint comprueba si esa versión sigue activa → matar la versión invalida la sesión en la siguiente solicitud. Alternativa mencionada: lista negra de tokens baneados.
  - Complemento de frontend: **interceptor HTTP** que ante un 401 limpia la sesión y redirige al login.
  - Protocolo de respuesta: revocar token + cambiar contraseña → el intruso queda fuera de inmediato.
- **Cierre**: preguntas de la audiencia; advertencia final de que el eslabón débil es siempre el usuario con credenciales robadas; convite a más videos de «situaciones del día a día como programador».

## Señales de calidad

- Relato en primera persona del incidente (1.ª mano) con mecanismo técnico verificable conceptualmente (JWT + Redis + interceptor — práctica estándar de revocación de sesiones stateless). Los detalles forenses del atacante no verificables.
- Apertura humorística (video anterior eliminado por YouTube, «llorando la miniature») y **cierre comercial**: cursos con cupón de descuento — excluido de la síntesis.
- ASR («Jason webtoken» = JSON Web Token, «raptar» = robar) — normalizado solo aquí.

## Cruces (consolidación diferida, L12)

- **[[hdeleon-net]]** +1 (5.ª fuente WL; ver WL-399 y anteriores).
- Tema seguridad/sesiones: cruces con WL-400 (ESP32+Whisper, audio sin seguridad en LAN — gap opuesto), WL-351 (auditoría Nmap).

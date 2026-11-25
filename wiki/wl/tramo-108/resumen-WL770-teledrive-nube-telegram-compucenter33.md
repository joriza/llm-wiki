# WL-770 — La Famosa Nube infinita y Gratis ya se actualizo !! (Compucenter33)

- **Fuente original**: `raw/wl/tramo-108/2026-11-17-la-famosa-nube-infinita-y-gratis-ya-se-actualizo.md` ([YouTube](https://www.youtube.com/watch?v=TgFgSXL_J2M))
- **Canal**: Compucenter33 (1.ª fuente en la wiki — tutoriales informática en español rioplatense; video-secuela de uno previo del propio canal con 126.000 vistas que no está en la wiki)
- **Publicado**: 2026-11-17 · **Duración**: 11:12 · **Idioma**: es (ASR, garbiñeos señalados: «Sonforce/Sonforce Teledrive» = SourceForge, «parsión» = partición del archivo, «el fin de Google Drive» = el fin de Google Drive)
- **Tramo**: 108 (relevo 1) · **Ingesta**: 2026-11-24

## Qué trata

Actualización de **TeleDrive**, la aplicación open source que convierte una cuenta de **Telegram** en una «nube privada ilimitada y gratis» estilo Google Drive. El video recorre qué cambió en la nueva versión y demuestra la instalación en Linux y Windows.

## La herramienta

- **Modelo**: TeleDrive usa el almacenamiento en la nube de Telegram como backend — carpetas, subida de archivos, organización por tipo (documentos/imágenes), interfaz casi clónica de Drive. Código fuente libre en GitHub (también vía SourceForge); el canal insiste: «si no te fías, bajate el código y revisalo/modificalo».
- **Novedades de la actualización**: soporte universal de Linux incluido **Arch** (antes fallaba) vía AppImage portable; también `.deb`/`rpm`, Windows (exe/msi), macOS, APK Android e IPA iOS. Login simplificado con **código QR**: desde Telegram → Ajustes → Dispositivos → añadir dispositivo, escanear, «cero código, cero nada».
- **Límites**: 2 GB por archivo individual — «puedo subir 25 millones de archivos de menos de 2 GB» (aclaración repetida «para la gente que no quiere entender»); workaround para archivos mayores: trocearlos con WinRAR en partes de ~1,5 GB y subirlos así («un juego de 120 GB puede entrar»).
- **Advertencias del propio canal**: para datos sensibles, no — «no guardes acá tus cuentas de banco; esto es para fotos del fin de semana, recuerdos que si los perdés no se termina el mundo». Concede que «podés dudar de esta nube» y cita usuarios con 6+ años de datos en Telegram. Sobre el cartel «PC puede estar en riesgo» de Windows: lo explica como consecuencia normal de apps independientes no verificadas por tienda (compara con los USD 25/año del registro de desarrollador Android) — explicación aproximada, señalada como tal.

## Observaciones

- El «ilimitado y gratis para siempre» es la promesa del título; el video en sí es más cauto (límite de 2 GB por archivo, aviso de no usarlo para datos críticos). Riesgo no mencionado por el canal: depender de las condiciones de uso de Telegram para almacenamiento masivo no está garantizado a futuro — es un truco sobre una plataforma, no un servicio propio (contraste con las opciones reales de [[self-hosting]]).
- Cruza tangencial [[self-hosting]] (TeleDrive es lo contrario: delegar en una nube de terceros), [[resumen-WL734-nube-en-casa-nas-scpc]] («alquiler permanente de tus propios archivos» vs. nube de terceros) y [[la-etiqueta-miente]] (título inflado «infinita» frente al límite de 2 GB por archivo que el propio video aclara).
- Cableado mínimo, sin dominios nuevos ni consolidación (aplazada).

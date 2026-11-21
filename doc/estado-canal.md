# Estado del canal — El Taller Curioso

Documento de trabajo. Registro del estado actual, pipeline de producción validado, decisiones técnicas y próximos pasos. No forma parte del corpus de conocimiento de la wiki.

## 1. Identidad del canal

- **Nombre:** El Taller Curioso
- **Handle YouTube:** Suspendido por el usuario (confirmar `@eltallercurioso`)
- **Dominio sugerido:** `eltallercurioso.com` (no adquirido aún)
- **Tagline:** «Curiosidad técnica práctica con mirada rioplatense»
- **Estructura de series:**
  - Desde el taller (hardware/práctica)
  - IA de cerca (agentes, inferencia local)
  - Cómo funcionan las cosas (ciencias-tierra, general)
  - Casa y oficio (construcción, cocina)
  - Acá y ahora (Argentina: historia, sociedad, economía)
  - Para vivir mejor (salud, fitness, desarrollo personal)

## 2. Pipeline de producción validado (v2)

El video 001 («JavaScript en 10 días») establece el flujo reutilizable:

```
1. ideacion-canal.py → propone tema desde wiki
2. guion (agente) → lee resúmenes, no raws; marca fuentes «señaladas» a verificar
3. textos UTF-8 → genera text{1-N}.txt limpios (sin mojibake)
4. TTS Edge (Elena/Tomas es-AR) → sec{1-N}.mp3
   Alternativas probadas: Kokoro (ef_dora, em_alex), Piper (pendiente)
5. Slides PIL/Pillow → slide-{N}.jpg (estilo documental: grid sutil, jerarquía tipográfica)
6. FFmpeg por sección → out{1-N}.mp4 (vídeo + audio sincronizados)
7. Concat → canal-video-guion-{N}-v2.mp4
```

Cada paso es regenerable independientemente: cambiar voz = regenerar solo los MP3 y remontar.

### Archivos clave por proyecto

| Carpeta | Contenido | Uso |
|---|---|---|
| `doc/ideas-canal.md` | Plan estratégico, nombre, estrategia económica | Referencia |
| `doc/plantilla-guion.md` | Estructura fija para guiones | Plantilla |
| `doc/guion-00{N}.md` | Guiones completos con verificaciones | Producción |
| `canal-test/guion{N}/text*.txt` | Textos por sección (UTF-8 limpio) | Input TTS |
| `canal-test/guion{N}/sec*.mp3` | Audios generados por sección | Montaje |
| `canal-test/guion{N}/slide-*.jpg` | Imágenes documentales (1920×1080) | Video background |
| `canal-test/guion{N}/out*.mp4` | Secciones individuais | Concatenación |
| `canal-test/guion{N}/canal-video-guion{N}-v2.mp4` | Video final | Publicación |
| `canal-test/video-prueba*.mp4` | Videos de prueba por voz | Comparativa |

## 3. Comparación de voces TTS probadas

| Voz | Motor | Duración (prueba 26s) | Internet | Calidad percibida |
|---|---|---|---|---|
| Sabina (es-MX) | Windows SAPI | 26.4 s | No | Robótica, básica |
| Tomás (es-AR) | Edge neural | 20.8 s | Sí | Natural, buena entonación |
| Elena (es-AR) | Edge neural | 22.0 s | Sí | Natural, femenina |
| ef_dora | Kokoro-82M local | 16.2 s | No | Acento neutro LA, rápido |
| em_alex | Kokoro-82M local | 16.4 s | No | Masculino, neutro |

**Nota:** Las voces Kokoro van ~25 % más rápidas que Edge. Se puede ajustar con `--rate`.

**Recomendación actual:** Elena (es-AR) con `--rate="+10%"` para ritmo narrativo (~175 ppm). Cuando llegue la muestra de voz del usuario, evaluar F5-TTS para clonación.

## 4. Problemas corregidos

| Problema | Causa | Solución aplicada |
|---|---|---|
| Acentos mojibake (`p§ginas`) | PowerShell escrit `text*.txt` en CP-1252 | Regenerar con Python (`encoding='utf-8'`) |
| Slides sin texto visible | Errores de formato `$num:00` en PS | Migrar a Python/PIL |
| Archivos mp4 corruptos en concat | FFmpeg falló silenciosamente en出段 | Verificar duración post-generación |
| Nombre de archivo slide-1 vs slide-01 | Inconsistencia naming | Estandarizar a `slide-NN.jpg` |

## 5. Thumbnail

Generado con PowerShell/System.Drawing:
- `canal-test/thumb-guion-001.jpg` (1280×720, 72 KB)
- Estilo: fondo degradado oscuro, acento dorado, título grande, subtítulo gancho, número dramático "10"

## 6. Estado actual del video 001

- **Archivo:** `canal-test/video-guion-001-completo-v2.mp4`
- **Duración:** 9 min 28 s (568 s)
- **Tamaño:** 8.6 MB
- **Resolución:** 1080p, 30 fps
- **Audio:** AAC mono 24 kHz ~70 kbps
- **Voz:** Elena (es-AR) +10% velocidad
- **Slides:** 10 imágenes documentales (grid sutil, tipografía jerárquica, watermark numérico)

## 7. Próximos pasos

### Bloqueantes (antes de grabar)
- [ ] Confirmar handle YouTube (`@eltallercurioso` o variante)
- [ ] Grabar muestra de voz (~30 segundos desde celular)
- [ ] Probar clonación F5-TTS con `zz-texto-a-voz`

### Producción
- [ ] Normalizar audio de muestra (`loudnorm`)
- [ ] Clonar voz → generar audios de reemplazo
- [ ] Regenerar video v3 con voz propia

### Publicación
- [ ] Configurar identidad visual (banner, descripción)
- [ ] Preparar metadatos (título, tags, capítulos)
- [ ] Decidir fecha de publicación del video 1

### Wiki (paralelo)
- [ ] Consolidar cluster `[[historia-de-la-tecnologia]]` (40 fuentes)
- [ ] Verificar fuentes primarias del guion 001 (paper HOPL 2020)

## 8. Decisiones pendientes

1. **Voz definitiva:** ¿Elena/Tomás de Edge (calidad alta, requiere internet) o Kokoro local (menos calidad, offline)?
2. **Ritmo:** ¿Acelerar +10% o mantener natural?
3. **Estilo visual:** ¿Slides estáticas/documentales o añadir B-roll/animaciones?
4. **Frecuencia de publicación:** ¿Semanal? ¿Quincenal?
5. **Shorts:** ¿Recortar momentos destacados automáticamente o selección manual?

## 9. Recursos técnicos utilizados

- **FFmpeg:** Montaje, conversión, concatenación
- **edge-tts:** Voces neuronales Microsoft Edge (gratuitas)
- **Python PIL/Pillow:** Generación de slides documentales
- **PowerShell System.Drawing:** Thumbnails y prototipos rápidos
- **Kokoro-82M (zz-texto-a-voz):** TTS local alternativo (validado)

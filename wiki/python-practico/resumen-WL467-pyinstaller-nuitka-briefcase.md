# WL-467 — PyInstaller, Nuitka y Briefcase: empaqueté la misma app tres veces y una tardó 40 minutos

- **Fuente original**: `raw/wl/tramo-77/2026-08-27-pyinstaller-nuitka-y-briefcase-empaquete-la-misma-app-tres-veces-y-una-tardo-40-.md` ([Vídeo](https://www.youtube.com/watch?v=jY6IS53ESP8))
- **Canal**: Código Espinoza - Automatiza tu Vida
- **Publicado**: 2026-08-27 · **Duración**: 05:59
- **Dominio provisional**: python-practico (empaquetado/distribución de apps Python)
- **Fecha de ingesta**: 2026-11-16

## Qué trata

Comparativa con builds reales (misma app de escritorio, misma máquina, una corrida cada una) de las tres estrategias de empaquetado/distribución de Python:

| Herramienta | Qué hace | Build | Tamaño | Arranque |
|---|---|---|---|---|
| **PyInstaller** | empaqueta intérprete + libs (sin compilar) | 1:15 | 84 MB | 3,8 s (one-file se descomprime a temp) |
| **Nuitka** | traduce Python→C→binario nativo (compila de verdad) | 41 min | **28 MB** | **0,4 s** |
| **Briefcase** | instalador nativo (DMG/MSI, puede usar PyInstaller por debajo) | 8 min (3 comandos) | 45 MB | 1,2 s |

## Marco conceptual

- «La pregunta «¿cuál es mejor?» estaba mal planteada» — hacen tres cosas distintas: empaquetar, compilar, distribuir.
- **¿Quién paga el costo?** El tiempo de build lo paga tu máquina una vez; tamaño y arranque los paga el usuario cada vez. PyInstaller: entregas de hoy; Nuitka: distribución masiva/hardware limitado/uso continuo; Briefcase: instalador nativo con icono, metadata y confianza del SO.
- Tropiezo real documentado: Nuitka exige declarar el plugin de la GUI; el error es específico pero el flag es oscuro para quien no lo conoce.
- Advertencia metodológica declarada: una corrida en una máquina, no estudio estadístico — los números se mueven según librerías nativas y SO; «lo que no se mueve es el patrón».

## Señales de triage

- Comparativa de primera mano reproducible con advertencia honesta de muestra única — buena calidad metodológica para el género.
- Cifras exactas (75 s vs 41 min; 84/28/45 MB; 3,8/0,4/1,2 s) citadas del propio test — sin verificación externa pero reproducibles.
- CTA/suscripción excluidos; serie con video anterior (causas del «empaquetado mal hecho»: antivirus, tamaño, arranque lento).

## Cruces

- [[codigo-espinoza]] +1 (12.ª WL, doble en el tramo — batería densa), [[routing-por-coste]] (análogo conceptual: costo una vez vs costo por uso), WL-466 (mismo canal/metodología), WL-396 marginal.
- Candidato a concepto «empaquetado Python» solo con más fuentes (umbral ≥2).

## Veredicto de triage

Comparativa técnica útil y honesta; conservar.

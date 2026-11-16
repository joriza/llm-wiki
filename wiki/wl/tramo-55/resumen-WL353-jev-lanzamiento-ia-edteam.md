# WL-353 — Jev es el lanzamiento de IA más importante desde ChatGPT

- **Fuente original**: `raw/wl/tramo-55/2026-09-18-jev-es-el-lanzamiento-de-ia-mas-importante-desde-chatgpt.md` ([vídeo](https://www.youtube.com/watch?v=nkhWIRCfprU))
- **Canal**: EDteam (Álvaro + «tío Alexis»)
- **Publicado**: 2026-09-18 · **Duración**: 25:11 · **Ingesta**: 2026-11-16 (tramo 55)
- **Tipo**: divulgación técnica con demo (1.ª mano, playground de Jev a <24 h del lanzamiento)
- **Dominios destino propuestos (consolidación aplazada)**: ia-uso-practico o ia-critica-y-fronteras

## Idea central

Explicación técnica de Jev (mismo lanzamiento que WL-346, aquí desde EDteam): no es un LLM ni IA generativa — responde con probabilidades numéricas, no con texto. El planteo «LLM como capa encima del software vs Jev embebido en las tripas» es la tesis del video.

## Puntos clave

- **Qué es** [01:23]: recibe contexto (state) + pregunta en lenguaje natural y devuelve probabilidades en JSON; no genera texto, código ni acepta imágenes/audio — solo texto.
- **Tres primitivos** [05:01]: `choice` (una opción de lista cerrada, p. ej. carpeta del correo: facturas/soporte/personal/otros, con distribución 0.94/0.03/0.01/0.02), `null` tipo sí/no binario (0.5 = «no sé», no medio), `score` (posición en escala, p. ej. urgencia de incidente: 2.78 con 80% de probabilidad de «impacto activo»). Cada respuesta incluye un nivel de confianza en la distribución — «no te dice si la respuesta es correcta».
- **Anatomía del request** [06:13]: POST simple con `state` (string/objeto/array), `questions` (id + type + instrucciones + criteria); varias preguntas independientes en un solo request, corren en paralelo.
- **Coste** [16:10]: 5 M de tokens en un día le costaron ~18 centavos de USD; el propio presentador recalcula de memoria la tarifa equivalente en LLM (~70 USD) — comparación autocreportada de 2.ª mano, señalada; sin tarjeta registrada aún.
- **Sensibilidad a la redacción** [18:50]: quitar la palabra «indicado» de la instrucción bajó la probabilidad de 92% a 84% — las instrucciones deben ser precisas.
- **Demo MVP recomendador de cursos** [20:00]: clasificación de 312 cursos en 780 ms (frontend) y 250 ms (bases de datos), con degradación de puntaje según lo que el estudiante ya sabe; la demora al traer el perfil del usuario era de la app, no de la IA.
- **Tesis de embedding** [14:08]: el LLM es «una capa/plugin encima del software»; Jev «es un paquete más de los que instalás para hacer tu app» — convive con LLM sin problemas (clasificación, filtrado, recomendación, pruebas automatizadas).

## Evaluación

- Demo 1.ª mano en playground real (casos: phishing de correo, urgencia, sentimiento, recomendador), consistente con la demo independiente de WL-346 — los tres primitivos y el esquema de respuesta coinciden entre fuentes.
- Cifras de coste y comparación de precios citadas de memoria por el presentador — señaladas. Segmento promocional del EDcamp/Becas excluido de la sustancia.
- ASR garbiñeado normalizado solo donde seguro: «Jeff/Choy/Nul»→Jev/choice/null, «chatipt/cloud»→ChatGPT/Claude, «ray»→array, «Node» (tipo)→null, «My sequel/Postgress»→MySQL/PostgreSQL.

## Cruces

- Mismo objeto que WL-346 (demo return(GiS); de Jev, contraste directo de formatos de explicación); tema routing-por-coste (WL-274/278/298) — clasificador barato vs LLM caro; [[delegacion-cognitiva-ia]] para la decisión delegada con probabilidad + confianza. EDteam 1.ª fuente.

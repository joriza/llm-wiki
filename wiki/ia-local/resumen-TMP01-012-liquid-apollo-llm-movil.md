# TMP01-012 — Liquid Apollo (app de Play Store): LLMs locales en el celular

- **Fuente**: [Ficha de app — Google Play (ai.liquid.chatapp)](https://play.google.com/store/apps/details?id=ai.liquid.chatapp&pli=1), actualizada 30/10/2026. Fuente corta: descripción oficial del desarrollador (Liquid AI), no reseña independiente.
- **Dominio**: `ia-local/` — inferencia local en el edge móvil (plataforma LEAP de Liquid AI).

## Qué es

**Apollo**, app de Liquid AI: plataforma para descubrir y correr modelos de lenguaje **directamente en el teléfono, sin conexión a internet** — «Fast, private, and reliable AI». Motor: **Liquid Edge AI Platform (LEAP)**.

## Funciones declaradas

- Redactar mensajes/emails con IA **offline**.
- Chat privado: la información no sale del dispositivo (argumento clásico de la inferencia local, llevado al bolsillo).
- Creación de personajes digitales.
- Envío de imágenes a modelos **LFM2-VL** (visión) para interactuar con el mundo visual.

## Señalado

- Fuente primaria comercial (ficha de tienda de apps): las prestaciones (privacidad, velocidad, fiabilidad) son marketing del desarrollador, sin medición independiente — señalado; sin datos de permisos/telemetría reales revisados.
- Es la punta de usuario final del ecosistema LFM de Liquid AI (modelos edge); no cubre rendimiento por dispositivo.

## Cruces

- Hilo de ia-local en el edge: complementario de TMP01-010 (Gemopus E4B en iPhone/MacBook — 45-120 tok/s): la inferencia local móvil deja de ser demo y aparece como app de consumo; familia de base: [[lfm]].
- Tema transversal: **privacidad por diseño en IA local** (los datos no salen del dispositivo) — tensión registrada con WL-147 ([[resumen-WL147-tu-ia-local-no-es-tan-privada-como-crees]]): marketing del desarrollador vs. medición independiente.

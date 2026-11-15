# Django

- **Tipo**: página de entidad (herramienta).
- **Dominio**: `python-practico/`.
- **Actualizado**: 2026-11-15 (consolidación final del lote playlist Python).
- **Fuentes**: [[resumen-la-masterclass-de-python-django-git-produccion]] (única fuente del dominio, 2025).

**Django** es el framework web full-stack de Python («batteries included»): la única fuente del dominio que lo cubre construye una tienda online completa — teoría web, Git con ramas, proyecto con apps, **patrón MTV** (vs MVC: la «vista» describe qué datos se envían, el controller lo asume el framework), plantillas con herencia (`block content`), archivos estáticos con `{% load static %}`, modelos con **migraciones** sobre SQLite, el **admin** como panel de gestión gratuito, **User personalizado** con login/registro validado, carrito con **context processors**, y despliegue a PaaS con `requirements.txt` y migraciones en servidor.

Posición en la taxonomía del dominio: el extremo «todo incluido» de [[frameworks-web-python]], contrapunto directo de [[flask]] (minimalista) y [[fastapi|FastAPI]] (API-first). El corpus no lo contrasta con benchmarks — solo por arquitectura.

Lagunas: Django REST Framework (APIs con Django) no aparece en ninguna fuente.

# La Masterclass de Python que cambiará tu carrera (Django + Git + Producción)

- **Fuente**: [[../../raw/python-practico/2025-12-09-la-masterclass-de-python-que-cambiara-tu-carrera-django-git-produccion.md|2025-12-09-la-masterclass-de-python-que-cambiara-tu-carrera-django-git-produccion.md]]
- **Canal**: Enrique Barros (Programación Fácil)
- **Publicado**: 2025-12-09
- **Dominio**: `python-practico/`
- **Tipo**: resumen de fuente (curso en vídeo, 378 min)
- **Tema**: curso integral que construye una **tienda online de videojuegos con Django**: fundamentos web, Git, proyecto Django completo (MTV, modelos, auth, carrito) y despliegue a producción.

## Estructura del curso

1. **Teoría web (0-30 min)**: qué es frontend vs backend (metáfora de la casa: fron/end la decoración, backend la estructura y las reglas de negocio), tecnologías de cada lado (Python/Java/Ruby/SQL y frameworks como Django), HTTP vs HTTPS (texto plano vs cifrado), códigos de respuesta (200/300/400/500), sitio vs página web, y estructura mínima de un request HTML.
2. **Primeras herramientas**: uso de la librería `requests` en Python para hacer GET y leer cabeceras/códigos de estado (404 incluido); inspección con las **devtools del navegador** (elementos, consola de errores, red) — enlazado con los mensajes de depuración de Django.
3. **Git completo (~52-75 min)**: instalación, `git init`, registro de identidad, staging y commits, **ramas** (master/desarrollo/testing) con `checkout` y `merge`, `.gitignore` (excluir entorno virtual y `db.sqlite3`), y publicación en **GitHub** con remote y push. Recomendación de commit atómico por cambio.
4. **Proyecto Django (~75-180 min)**: entorno virtual (creación, activación en Windows/Linux, script `.bat` de arranque rápido); `django-admin startproject` y estructura (settings, urls, manage.py, runserver, admin); apps como unidades separadas por funcionalidad; **patrón MTV** frente a MVC (la vista de Django describe qué datos se envían, no su presentación; el controller desaparece y lo asume el framework); plantillas con etiquetas (`for`, herencia con plantilla base y `block content`), archivos estáticos (`{% load static %}`), modo claro/oscuro con JavaScript, y refactor de estilos a hoja propia; responsive básico.
5. **Modelos y datos (~179-230 min)**: **SQLite** como base de desarrollo (visión con extensión de VS Code); modelos como clases Python que heredan de `models.Model` (ASR: «models.mel»); **migraciones** (`makemigrations`/`migrate`); shell de Django para poblar datos; `max_length` y campos; **admin de Django** como panel de gestión gratuito; **paginación** con el objeto `Paginator` (`page.number`, rangos de páginas) y **búsqueda** con filtrado por nombre (`icontains`) combinada con paginación.
6. **Usuarios y carrito (~257-330 min)**: app de usuarios con **modelo User personalizado** (username/email/password), validaciones automáticas de registro (email con formato, contraseñas), login/logout; **carrito por usuario** con relación y `cascade` (borrar el carrito vacía sus líneas); cuatro vistas del carrito (agregar, eliminar, vaciar, ver); **context processors** para exponer el carrito globalmente en cualquier plantilla.
7. **Producción (~330-378 min)**: merge de ramas a master; configuración para despliegue en un PaaS (credenciales fuera del código en settings, variables de entorno, dominio personalizado opcional); `requirements.txt` regenerado con `pip freeze` (el comando actualiza solo los paquetes nuevos); migraciones ejecutadas en el servidor; gestión de claves secretas nombradas.

## Valor y contexto

- Es la **primera fuente de Django** del dominio: cubre el hueco que los cinco tutoriales de Flask y dos de FastAPI dejaban abierto (framework completo «batteries included», admin, ORM, MTV) y es el contraste natural con [[resumen-como-funciona-flask-python-mvc]] (misma discusión MVC pero con Flask minimalista).
- Refuerza tres hilos del dominio: **Git/calidad de código** (junto a [[resumen-programar-bien-pep8-linters-formatters-y-git-hooks]] — aquí Git se aprende de cero, allí se asume), **despliegue** (tercera variante: Deta para FastAPI, Vercel para Reflex, PaaS con migraciones aquí) y **web/API** (Django con plantillas server-side vs las APIs JSON del resto).
- El proyecto es el más completo del dominio: única fuente con autenticación de usuarios, carrito y e-commerce.
- Título algo clickbait («cambiará tu carrera») pero contenido serio y denso; sin patrocinios externos, con cierre promocional del propio canal.

## Citas al original

Todas las afirmaciones provienen de `raw/python-practico/2025-12-09-la-masterclass-de-python-que-cambiara-tu-carrera-django-git-produccion.md` (transcripción automática; garbiñeos ASR normalizados solo aquí — «Yango/Yangango»→Django, «models.mel»→models.Model; marcas de tiempo en el original).

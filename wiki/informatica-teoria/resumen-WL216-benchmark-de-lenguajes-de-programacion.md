# WL-216 · Benchmark de lenguajes de programación: ¿cuál gana?

- **Fuente original**: `raw/informatica-teoria/2026-10-17-benchmark-de-lenguajes-de-programacion-cual-gana.md`
- **Video**: [Benchmark de lenguajes de programación: ¿cuál gana?](https://www.youtube.com/watch?v=y3Fjr2LGW_w)
- **Canal**: CodeSimple
- **Publicado**: 2026-10-17 · **Duración**: 17:58 · **Ingesta**: 2026-11-15 (tramo 30, formato dominio pendiente de consolidación)
- **Marco**: narración divulgativa de un reto comunitario de terceros (servidor de 12 USD, 1 vCPU/2 GB); cifras del autor del reto citadas sin verificación independiente; cierre de canal excluido.

## Qué trata

Segunda ronda de un reto viral: tras un primer benchmark (Rust ganó con ~14.000 usuarios concurrentes en un VPS de 12 USD/mes), 28 propuestas en 13 lenguajes intentaron superarlo bajo las mismas reglas. La mejor llegó a 64.000 usuarios concurrentes — 4,5× el récord anterior — y la lección central es que el diseño del sistema pesa más que el lenguaje.

## Puntos clave

- **El examen**: mini red social (health, muro, abrir post, me gusta, publicar), SQLite obligatoria, autenticación en cada petición, guardado persistente confirmado antes de responder; 42 comprobaciones para clasificar. Aprobar un nivel = sostener la carga 5 minutos con p95 < 500 ms, p99 < 1 s, <1 % errores.
- **Resultados (usuarios concurrentes)**: Ruby/Rails 3.000-3.500 → Ruby «puro» (servidor C, un worker) 14.000; Erlang 15.000; Python 11.000 → 22.000 (perfilar y quitar capas del framework); Go 22.000 (batch de escrituras 256-en-256); C# 32.000 (memoria reutilizable, 93 % CPU); **Fortran 38.000** (biblioteca C para conexiones, SQLite casi para todo); PHP 750 (Laravel) → 40.000 con Swoole (servidor residente, 250 líneas); Rust/Axum 43.000; C con io_uring 46.000 (SQLite compilada a medida; falló al 36 % CPU por sospecha de contención de 8 hilos); Bun+TypeScript 47.000 (lector HTTP propio, respuestas en bytes); Zig 61.000 (límite autoimpuesto de 60.000 conexiones); **finalistas empatados a 64.000: Rust (io_uring + referencias gestionadas por el SO + batches, p99 224 ms con 50 % CPU y <100 MB) y C++ (un solo hilo/bucle de eventos, SQLite afinada: registro reducido y mantenimiento fuera del camino; p99 910 ms, 68 % CPU)**. Ganó Rust por margen. Techo real: tabla de conntrack del firewall (~65.000 entradas), intocable por reglas.
- **Los 5 trucos que se repiten**: quitar Nginx (proceso intermedio) y atender conexiones directo; preparar consultas una vez y reutilizar una única conexión; dejar que SQLite devuelva respuestas ya montadas (sin filas→objetos→JSON); guardado en grupo (batch de escrituras); reescribir el marco entero (servidor, bucles de eventos, gestión de memoria propios).
- **El asterisco**: la propuesta C++ usa un modo SQLite que no fuerza escritura inmediata a disco — cumple las reglas pero puede perder las últimas anotaciones ante un corte; y el propio autor advierte que ninguna de estas soluciones pasaría un code review de empresa (código inseguro en Rust, protocolo web incompleto en Bun, 1.300-2.400 líneas monolíticas).
- **Conclusión**: «cuando el diseño es bueno, casi cualquier lenguaje corre; cuando es malo, ninguno te salva». Lección generalizable: antes de comprar más máquina, medir dónde se va el tiempo (el caso Python: duplicar quitando capas que no trabajan).

## Observaciones de triage

- Fuente secundaria: narra y resume un reto ajeno (probablemente del ecosistema "codecrafters"-style de desafíos de servidores); nombres exactos del reto/autor no identificables desde el audio; cifras no verificadas de forma independiente.
- Cruces previstos: [[lenguaje-rust]] (Rust ganador, WL-14 roadmap), concepto rendimiento-servidores; WL-108/WL-160 (DevOps/panorama TecnoCroquis); lección «medir antes de optimizar» empalma con WL-211 (especificaciones) solo tangencialmente — no forzar.
- Dominio previsto: general (programación/rendimiento) — consolidación diferida, S4: no se crean dominios nuevos.


## Ver también

- [[historia-lenguajes-programacion]]
- [[mapa-del-ecosistema-python]]

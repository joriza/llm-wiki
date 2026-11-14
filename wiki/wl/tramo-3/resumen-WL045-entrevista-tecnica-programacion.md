# Resumen: Así se supera una entrevista técnica de programación

- **Fuente original**: `raw/wl/tramo-3/2026-11-12-asi-se-supera-una-entrevista-tecnica-de-programacion.md` (WL-45, tramo 3)
- **URL**: https://www.youtube.com/watch?v=y0dQRmx9ZZM
- **Canal**: Maxi Programa (Maximiliano — programador con paso por Oracle/Accenture/Deloitte, profesor UTN +15 años, plataforma propia de cursos .NET/Python/SQL)
- **Publicado**: 2026-11-12 · **Duración**: 16:18 · **Idioma**: es (subtítulos automáticos, transcripción literal; contexto argentino — UTN, «la fábrica donde trabajaba hace 22 años cerró en agosto»)

## El documento

Un caso completo de primera entrevista técnica junior en noviembre de 2026, narrado por correo entre un estudiante de tecnicatura y el profesor-canalista. Valor: **retrato exacto del formato de entrevista técnica post-IA** en el mercado argentino.

## La entrevista (formato y reglas)

- **Presencial, con notebook propia** con todo preconfigurado (el estudiante pidió una prestada a un amigo — las dos únicas personas que ese día llegaron a la prueba usaban notebooks prestadas).
- **Prohibido internet e IA durante la evaluación** — la regla que define el formato 2026.
- 45 minutos (extendidos a 60 de facto) para construir **punta a punta**: una API pequeña (CRUD mínimo: 1 lectura + 1 escritura) + un front (Angular o React) que la consuma + persistencia en MySQL. Stack flexible: .NET **o** Java/Spring Boot — la búsqueda decía «deseable», lo que permitió aplicar con .NET a pesar del aviso Java.
- Consejo del profe (acertado): practicar exactamente eso — API + listado + alta; llevar TXT de ayuda memoria con cadena de conexión y paquetes (no hace falta memorizar todo).
- Evaluación declarada al final: «no importa si no terminan, evaluamos cómo se desenvuelven».

## El desenlace y sus lecciones

- **Falló en el último paso**: lo que funcionó «100 veces en casa» no impactaba en la base de datos; en casa lo detectó en <1 minuto — strings sin inicializar (`null` vs `empty`) al crear el modelo. Diagnóstico del estudiante: «tanto Open Code me oxidó en lo más básico, que es razonar por mí mismo».
- Datos de contexto desoladores: solo 2 postulantes llegaron a la prueba (los filtros descartan al resto); el otro candidato (Java) tampoco levantó su stack; el evaluador «de sistemas» no manejaba .NET y no pudo resolver el problema en vivo.
- El trasfondo: cerró la fábrica donde trabajaba desde hacía 22 años, sin indemnización — la transición laboral real detrás de la carrera junior.
- Reflexión del canal: el mercado **no está muerto** («si alguien llegó a una entrevista técnica presencial, búsquedas hay») pero exige stack completo funcionando **sin IA**; la ecuación final es técnica + desenvolverse — «si llega alguien con un poquito más de las dos cosas, ya está, te superó»; iteración esperada: el primer empleo puede llegar «a los 2 o 3 intentos, no a los 15».

## Notas críticas

- Fuente de primera mano honesta (incluye el fracaso y la autocrítica del uso de IA) — la mejor fuente procesada sobre el estado real del hiring junior argentino post-IA. La mención de «Fable y Mythos 5.2, el mejor modelo del momento» es del contexto narrativo del canal (verificar nombres en consolidación — probablemente garuñados).
- Tesis registrable para el clúster IA-y-empleo: las empresas **contra-miden la dependencia de IA** (prohibirla en la prueba) — contraste directo con WL-31 (Platzi: «88-92 % de trabajos hechos con IA») y WL-40 (futuro del trabajo).

## Cruces

- **Dominio destino previsto: `agentes-de-codigo/`** (IA y práctica de programación/hiring) — se suma al clúster de WL-23/24/25/27 (DeepSeek, agentes) y [[odd-metodologia]].
- **WL-31 (Platzi)**: contraste directo — allí el «empleo junior de software desaparece» y el front end «se acabó»; aquí una empresa real entrevista juniors y evalúa desarrollo sin IA. Ambos pueden ser ciertos a la vez: la barra subió (stack completo punta-a-punta sin ayuda) en lugar de desaparecer.
- **WL-40 (Tu Minuto Económico)**: coincide en «nadie tiene la bola de cristal» — la recomendación operativa (dominar punta a punta sin IA) es la versión práctica.
- Tema-candidato: **hiring técnico post-IA** (prohibición de IA en pruebas como nueva norma; la «oxidación por Copilot/OpenCode» como riesgo personal documentado).

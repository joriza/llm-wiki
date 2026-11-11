# Desarrollo con modelos locales: el workflow diario

- **Tipo**: página de concepto.
- **Dominio**: `ia-uso-practico/`.
- **Actualizado**: 2026-11-11 (fuente 3/58 del lote ia-local).
- **Fuentes**: [[resumen-ia-local-para-programar-configura-qwen-con-llama-cpp-y-opencode]].

## El criterio rector: encaje 100 % en GPU

El modelo a elegir no es «el más inteligente» sino **el más grande que quepa 100 % en GPU, mínimo a 4 bits** — los modelos que requieren CPU/RAM son más capaces pero más lentos, y en desarrollo diario la velocidad de generación *y de procesamiento del prompt* es lo que importa. Complementos: dejar ≥1 GB de VRAM libre (picos de un segundo matan el proceso), variante MTP del modelo (medido: +40 % de tok/s en texto, más en código), KV cache a q8_0 (TurboQuant: ~99 % de calidad a mitad de memoria), mmproj si se quiere visión. Geografía de tamaños de la familia Qwen: 0.8B/2B/4B/9B/27B/35B-A3B/122B/397B — para desarrollo con hardware de hogar, el 9B en Q4 suele ser el techo.

## El stack del workflow

1. **Motor**: [[llama-cpp]] directo (LM Studio se basa en una versión vieja/limitada y su automaticidad divide el hardware de forma subóptima); `.bat` por modelo con el comando afinado una sola vez.
2. **Agente**: OpenCode (o Claude Code/Codex/P-Agent) conectado al endpoint OpenAI-compatible local — URL `127.0.0.1:8080/v1`, key y nombre de modelo arbitrarios.
3. **MCPs que compensan el tamaño chico**: Context 7 (documentación actualizada — el modelo pequeño «sabe lo típico» como Bootstrap pero no lo nuevo), Playwright (que el agente pruebe en el navegador e itere solo, con visión), Brave Search.
4. **Fallback honesto**: cuota gratuita diaria de modelos de pago del propio agente para lo que el local no alcanza.

## Las lecciones del uso real (medidas en el video)

- La calidad de salida es **proporcional a la especificación**: con un prompt vago el modelo genera rápido pero deja contenido vacío (no inventa).
- **Iterar es el método**: «no es para que te haga un Minecraft a la primera, es para trabajar» — crear, corregir, volver.
- **No pedir 50 cambios de una sola vez**: el experimento «máximo de animaciones» (7.000 tokens, 1.215 líneas reescritas) terminó «horrible».
- Lo que el humano arregla a mano (pegar el HTML del elemento problemático) lo resolvería el propio agente con MCP Playwright + visión: **dotar de ojos y documentación al modelo chico lo compensa**.
- Verificación manual puntual: responsive en teléfono/iPad mini.

## Por qué a pesar de todo local

**Tokens ilimitados, gratuitos, rápidos y privados** — el costo por iteración es cero, y el desarrollo real consiste precisamente en iterar mucho. Los modelos de pago como fallback puntual, no como base.

## Cruces en la wiki

Motor y comando: [[llama-cpp]] · el stack de producto con clientes de pago: [[micro-saas-con-python]] · la filosofía de API gratuita/local: [[agregacion-apis]] · la tesis compartida del dominio: «la IA es copiloto y genera bien solo cuando vos sabés qué pedirle y cómo verificarlo».

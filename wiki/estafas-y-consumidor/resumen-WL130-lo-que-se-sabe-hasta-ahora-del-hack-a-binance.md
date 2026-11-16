# WL-130 — Lo que se sabe hasta ahora del hack a Binance

- **Fuente original**: `raw/estafas-y-consumidor/2026-10-30-lo-que-se-sabe-hasta-ahora-del-hack-a-binance.md` (`aAMOi9cDa8g`, [Pelado Nerd](https://www.youtube.com/watch?v=aAMOi9cDa8g), 2026-10-30, 10:30).
- **Canal**: Pelado Nerd
- **Publicado**: 2026-10-30
- **Tipo**: análisis técnico-noticioso (cripto/seguridad, reacción rápida)

## Qué trata

Análisis exprés (grabado el día posterior al ataque, leyendo el informe de Chainalysis traducido al español) del hack de Binance del 29 de octubre de 2026: ~6.400 M$ en criptomonedas robados de billeteras calientes, atribuido al grupo norcoreano TraderTraitor — el mayor de la historia de la industria hasta esa fecha.

## Puntos clave

- **El ataque**: el 29-10 a las ~16:20 ET los fondos empezaron a salir de billeteras calientes de Binance en múltiples blockchains. El vector: se permitió que una billetera hot ejecutara código implantado por el atacante, que luego transfirió activos a direcciones propias. Total: ~6.400 M$.
- **La carrera contra la congelación**: Bitcoin y Ethereum no son congelables; las stablecoins (USDT/USDC) sí — sus emisores pueden poner billeteras en listas negras coordinándose con fuerzas del orden y Chainalysis. El atacante movió 500 M$ de stablecoins en ~20 minutos a billeteras para convertirlos en activos no congelables (dispersión entre miles de direcciones para evadir las listas), pero la industria reaccionó más rápido: las congelaciones empezaron a las 17:14.
- **Atribución**: patrones de lavado iniciales sugirieron TraderTraitor (Corea del Norte); un vínculo on-chain directo con fondos del ataque a Bitget del mes anterior lo confirmó (anunciado el 30-10 a las 12:30 UTC). Los atacantes usan automatización para ocultar el rastro (circular fondos repetidamente, incluso de vuelta a direcciones de origen; patrones como recibir exactamente 1 TRX primero).
- **Explicación didáctica de fondo**: qué significa que la blockchain es un registro público de todas las transacciones; diferencia entre activos congelables (emisores centralizados) e inmutables (BTC/ETH — sin reversión posible); cómo funcionan las listas negras.
- **El desembolso**: la plata congelada en USDT es recuperable; la ya convertida y movida a billeteras con clave propia está «en manos de otros» — Binance asegura que hará cargo la devolución con su propio capital. Al momento del video se sabía cómo salió el dinero pero no cómo se comprometió la billetera (pendiente de más detalles; Binance bloqueó transferencias hacia esas monedas).
- **Recomendación del canal**: no dejar en exchange más que lo que se opera; el ahorro a largo plazo en billetera propia (self-custody), protegida por clave propia e imposible de congelar. Advertencia con humor sobre malas prácticas (screenshots de frases semilla).

## Citas útiles

- [00:18] Informe de Chainalysis: el mayor hack de la historia de la industria, atribuido a Corea del Norte.
- [02:49] La explicación clave congelables vs. no congelables (USDT/USDC vs. BTC/ETH).
- [04:15] La conversión exprés de 500 M$ en ~20 minutos para evadir la congelación.
- [06:02] Confirmación de TraderTraitor por vínculo on-chain con el hack a Bitget.
- [07:30] Recomendación de self-custody para el ahorro a largo plazo.

## Triage

Nota rápida de actualidad cripto/seguridad con valor didáctico (el canal aclara que es reacción de emergencia, no análisis final). Destino probable en consolidación: `general/` o `ia-uso-practico/`-adjacente (seguridad cripto); sin dominios nuevos (S4). Ojo: información preliminar al 30-10-2026, puede estar desactualizada.

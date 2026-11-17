# Vaciar «Ver más tarde» de YouTube — script de consola

2026-11-17 · Herramienta para el usuario · no automatiza el runner ni toca la wiki

## Uso

1. Abrí `https://www.youtube.com/playlist?list=WL` en Chrome/Firefox, con tu sesión iniciada.
2. Scrolleá un poco para que carguen las primeras entradas.
3. Abrí la consola del navegador: **F12 → pestaña Console** (si YouTube avisa "cuidado con pegar código", escribí `allow pasting` si el navegador lo pide, o pegá igual confirmándolo).
4. Pegá el script de abajo y Enter.
5. El script scrollea, abre el menú ⋮ de cada video y clica «Quitar de Ver más tarde» / «Remove from Watch later».
6. Para cortarlo en cualquier momento: **clic en cualquier parte de la página** (el script detecta la interacción y se detiene) o refrescá (F5).

## Comportamiento

- Espera a que YouTube cargue entradas nuevas cuando llegue al borde (lazy-loading), así que corre solo hasta vaciar la lista.
- Log de progreso en la consola cada 10 removidos.
- Límite de seguridad `MAX_REMOVE = 600` por corrida: al alcanzarlo se detiene solo (refrescá la página y volvé a pegarlo si querés otra tanda).
- Anti-demora: espera aleatoria 600–1200 ms entre videos para no parecer un bot agresivo.

## Importante

- **Acción irreversible desde el script**: los videos quitados dejan de estar en la lista (siguen existiendo en YouTube; podés buscarlos y re-agregarlos uno a uno).
- Si querés reservar videos antes del vaciado, movelos primero a otra playlist.
- YouTube cambia su DOM de vez en cuando: si el script remueve 0 o se traba, avisá y lo ajusto.

## Script

```javascript
(async () => {
  const MAX_REMOVE = 600;          // límite de seguridad por corrida
  const STEP_MS = 700;             // espera base entre videos (±jitter)
  const PAT = /quitar de ver más tarde|remove from watch later/i;

  const sleep = (ms) => new Promise(r => setTimeout(r, ms));
  const rand = (a, b) => a + Math.floor(Math.random() * (b - a));
  let cancelled = false;
  const cancel = () => { cancelled = true; };
  document.addEventListener('click', cancel, { once: false, capture: false });

  const visibleItems = () =>
    [...document.querySelectorAll('ytd-playlist-video-renderer, ytd-playlist-panel-video-renderer')]
      .filter(el => el.offsetParent !== null);

  async function removeOne(item) {
    const btn = item.querySelector('#button.yt-icon-button, button[aria-label]');
    if (!btn) return false;
    btn.click();
    await sleep(300);
    const entries = document.querySelectorAll(
      'ytd-menu-service-item-renderer, tp-yt-paper-item, ytd-menu-popup-renderer paper-item');
    for (const e of entries) {
      const label = (e.textContent || '').trim();
      if (PAT.test(label)) { e.click(); await sleep(400); return true; }
    }
    document.body.click(); // cerrar menú sin encontrar la opción
    await sleep(150);
    return false;
  }

  let removed = 0, failed = 0;
  console.log('▶ Vacíado WL iniciado — clic en la página para detener.');
  while (removed < MAX_REMOVE && !cancelled) {
    const items = visibleItems();
    if (!items.length) { await sleep(1500); continue; }
    const item = items[0];
    const title = (item.querySelector('#video-title')?.textContent || '').trim().slice(0, 60);
    const ok = await removeOne(item);
    if (ok) { removed++; if (removed % 10 === 0) console.log(`✔ ${removed} removidos… (último: ${title})`); }
    else {
      failed++;
      if (failed > 15) { console.log('✋ 15 fallos seguidos: DOM cambió o la lista está vacía. Deteniendo.'); break; }
      await sleep(1000);
    }
    await sleep(rand(STEP_MS - 100, STEP_MS + 500));
  }
  console.log(`■ Fin: ${removed} removidos, ${failed} fallos. ${cancelled ? '(detenido por clic)' : ''} Refrescá la página (F5) para ver el estado real.`);
})();
```

## Notas

- Corre **en tu navegador, con tu sesión**: nada viaja por el repo ni por el runner.
- Si la página muestra el aviso de seguridad al pegar, escribí `allow pasting` en la consola primero (Chrome moderno).
- El contador real lo da YouTube: al terminar, refrescá y fijate cuántas entradas quedan.

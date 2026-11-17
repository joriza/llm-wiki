(async () => {
  const MAX_REMOVE = 600;          // límite de seguridad por corrida
  const STEP_MS = 700;             // espera base entre videos (±jitter)
  const PAT = /quitar de ver más tarde|remove from watch later/i;

  const sleep = (ms) => new Promise(r => setTimeout(r, ms));
  const rand = (a, b) => a + Math.floor(Math.random() * (b - a));
  window.__WL_STOP = false; // UNICO freno: escribí __WL_STOP = true en la consola
  const cancelled = () => window.__WL_STOP;

  const visibleItems = () =>
    [...document.querySelectorAll('ytd-playlist-video-renderer, ytd-playlist-panel-video-renderer')]
      .filter(el => el.offsetParent !== null);

  function menuEntries() {
    return [...document.querySelectorAll(
      'ytd-menu-service-item-renderer, tp-yt-paper-item, ytd-menu-popup-renderer paper-item, yt-list-item-renderer')]
      .filter(el => el.offsetParent !== null);
  }

  async function removeOne(item, dbg) {
    const btn = item.querySelector('#button.yt-icon-button, ytd-menu-button-renderer button, button[aria-label]');
    if (!btn) { dbg('sin boton'); return false; }
    btn.click();                      // abrir menu
    await sleep(350);
    const entries = menuEntries();
    for (const e of entries) {
      const label = (e.textContent || '').trim();
      if (PAT.test(label)) { e.click(); await sleep(450); return true; }
    }
    dbg(`menu sin opcion (entries=${entries.length})`);
    btn.click();                      // cerrar menu (toggle)
    await sleep(200);
    return false;
  }

  let removed = 0, failed = 0;
  console.log('▶ Vacíado WL iniciado — freno: __WL_STOP = true en la consola.');
  while (removed < MAX_REMOVE && !cancelled()) {
    const items = visibleItems();
    if (!items.length) { await sleep(1500); continue; }
    const item = items[0];
    const title = (item.querySelector('#video-title')?.textContent || '').trim().slice(0, 60);
    const ok = await removeOne(item);
    if (ok) { removed++; if (removed % 10 === 0) console.log(`✔ ${removed} removidos… (último: ${title})`); }
    else {
      failed++;
      if (failed === 1) console.log('ℹ Primer fallo (diagnostico):', item.innerHTML.slice(0, 300));
      if (failed > 15) { console.log('✋ 15 fallos seguidos: DOM cambió o la lista está vacía. Deteniendo.'); break; }
      await sleep(1000);
    }
    await sleep(rand(STEP_MS - 100, STEP_MS + 500));
  }
  console.log(`■ Fin: ${removed} removidos, ${failed} fallos. ${window.__WL_STOP ? '(detenido por __WL_STOP)' : ''} Refrescá la página (F5) para ver el estado real.`);
})();
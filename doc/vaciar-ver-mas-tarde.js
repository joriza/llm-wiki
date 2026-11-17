(async () => {
  const MAX_REMOVE = 600;          // límite de seguridad por corrida
  const STEP_MS = 700;             // espera base entre videos (±jitter)
  const PAT = /quitar de ver más tarde|remove from watch later/i;

  const sleep = (ms) => new Promise(r => setTimeout(r, ms));
  const rand = (a, b) => a + Math.floor(Math.random() * (b - a));
  let cancelled = false;
  window.__WL_STOP = false; // escribí __WL_STOP = true en la consola para detener
  document.addEventListener('keydown', (ev) => { if (ev.key === 'Escape') cancelled = true; });

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
    document.dispatchEvent(new KeyboardEvent('keydown', { key: 'Escape' })); // cerrar menú
    await sleep(150);
    return false;
  }

  let removed = 0, failed = 0;
  console.log('▶ Vacíado WL iniciado — clic en la página para detener.');
  while (removed < MAX_REMOVE && !cancelled && !window.__WL_STOP) {
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
  console.log(`■ Fin: ${removed} removidos, ${failed} fallos. ${cancelled ? '(detenido por clic)' : ''} Refrescá la página (F5) para ver el estado real.`); window.__WL_STOP = false;
})();
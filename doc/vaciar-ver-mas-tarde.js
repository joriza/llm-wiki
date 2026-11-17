(async () => {
  // Vaciar "Ver mas tarde" via API interna de YouTube (sin menus DOM).
  // Freno unico: escribí __WL_STOP = true en la consola.
  const MAX_REMOVE = 2; // tandas de prueba: confirmar logged_in=1 antes de subir a ~90
  window.__WL_STOP = false;
  const sleep = (ms) => new Promise(r => setTimeout(r, ms));
  const rand = (a, b) => a + Math.floor(Math.random() * (b - a));

  const ytcfg = window.ytcfg;
  if (!ytcfg) { console.log('✋ no hay ytcfg — refresca y reintentá'); return; }
  const ctx = ytcfg.get('INNERTUBE_CONTEXT');
  const clientName = ytcfg.get('INNERTUBE_CONTEXT_CLIENT_NAME');
  const clientVersion = ytcfg.get('INNERTUBE_CONTEXT_CLIENT_VERSION');
  const sapisid = (document.cookie.match(/SAPISID=([^;]+)/) || [])[1];
  if (!sapisid) { console.log('✋ no hay cookie SAPISID (sesión no iniciada?)'); return; }
  const auth = () => {
    const t = Math.floor(Date.now() / 1000);
    return 'SAPISIDHASH ' + t + '_' + btoa(t + '_' + sapisid + '_' + location.origin);
  };

  function setVideoIds() {
    const out = [];
    document.querySelectorAll('ytd-playlist-video-renderer').forEach(el => {
      const d = el.data || el.__data || {};
      const svid = d.playlistSetVideoId || d.setVideoId || el.getAttribute('data-set-video-id')
        || (d.playlistItemData && d.playlistItemData.playlistSetVideoId);
      const title = ((el.querySelector('#video-title')||{}).textContent||'').trim().slice(0,60);
      if (svid) out.push({ svid, title });
    });
    return out;
  }

  async function removeBatch(batch) {
    const actions = batch.filter(b => b.svid).map(b => ({
      action: 'ACTION_REMOVE_VIDEO', setVideoId: b.svid
    }));
    if (!actions.length) return null;
    const res = await fetch('/youtubei/v1/browse/edit_playlist?key=' + ytcfg.get('INNERTUBE_API_KEY'), {
      method: 'POST',
      credentials: 'include',
      headers: {
        'Content-Type': 'application/json',
        'X-Youtube-Client-Name': String(clientName),
        'X-Youtube-Client-Version': clientVersion,
        'Authorization': auth(),
        'X-Origin': 'https://www.youtube.com',
        'Origin': 'https://www.youtube.com'
      },
      body: JSON.stringify({ context: ctx, playlistId: 'WL', actions })
    });
    if (!res.ok) { console.log('✋ HTTP', res.status, await res.text().then(t=>t.slice(0,200))); return null; }
    const j = await res.json();
    if (removed === 0 && rounds === 0) {
      console.log('ℹ respuesta de la primera tanda:', JSON.stringify(j).slice(0, 600));
    }
    return j;
  }

  let removed = 0, rounds = 0;
  console.log('▶ Vacíado WL v5 (API interna) — freno: __WL_STOP = true.');
  while (!window.__WL_STOP && removed < MAX_REMOVE) {
    const items = setVideoIds();
    if (!items.length) {
      window.scrollTo(0, document.body.scrollHeight); // cargar más
      await sleep(2000);
      const again = setVideoIds();
      if (!again.length) { console.log('■ sin entradas con setVideoId cargadas; scrolleá y seguí o F5'); break; }
      continue;
    }
    const batch = items.slice(0, 50);
    if (rounds === 0 && removed === 0) {
      const first = items[0] || {};
      console.log('ℹ diagnostico primera entrada:', JSON.stringify(first).slice(0,200));
    }
    const res = await removeBatch(batch);
    if (!res) { console.log('✋ sin respuesta OK; deteniendo.'); break; }
    const applied = (res && res.playlistEditResults ? res.playlistEditResults.length : null);
    removed += (applied !== null ? applied : batch.filter(b => b.svid).length);
    rounds++;
    console.log(`✔ tanda ${rounds}: ${batch.length} removidos (total ${removed}). Último: ${batch[batch.length-1].title}`);
    await sleep(rand(800, 1500));
  }
  console.log(`■ Fin: ${removed} removidos en ${rounds} tandas. F5 para ver el estado.`);
})();

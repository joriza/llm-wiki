(async () => {
  // Vaciar "Ver mas tarde" — v6 FINAL: API interna, tandas de 50 + auto-scroll.
  // Freno: escribí __WL_STOP = true en la consola.
  const MAX_REMOVE = 4500;          // cuota total de esta corrida
  const BATCH = 50;
  window.__WL_STOP = false;
  const sleep = (ms) => new Promise(r => setTimeout(r, ms));
  const rand = (a, b) => a + Math.floor(Math.random() * (b - a));

  const ytcfg = window.ytcfg;
  const ctx = ytcfg.get('INNERTUBE_CONTEXT');
  const clientName = String(ytcfg.get('INNERTUBE_CONTEXT_CLIENT_NAME'));
  const clientVersion = ytcfg.get('INNERTUBE_CONTEXT_CLIENT_VERSION');
  const sapisid = (document.cookie.match(/(?:^|\s|;)SAPISID=([^;]+)/) || [])[1]
               || (document.cookie.match(/__Secure-3PAPISID=([^;]+)/) || [])[1];
  if (!sapisid) { console.log('✋ sin SAPISID'); return; }

  async function auth() {
    const t = Math.floor(Date.now() / 1000);
    const data = new TextEncoder().encode(t + ' ' + sapisid + ' ' + location.origin);
    const buf = await crypto.subtle.digest('SHA-1', data);
    const hex = [...new Uint8Array(buf)].map(b => b.toString(16).padStart(2, '0')).join('');
    return 'SAPISIDHASH ' + t + '_' + hex;
  }

  // pares {svid, node} de las entradas cargadas en el DOM
  function collect() {
    const out = [];
    document.querySelectorAll('ytd-playlist-video-renderer').forEach(el => {
      const d = el.data || el.__data || {};
      const svid = d.playlistSetVideoId || (d.playlistItemData && d.playlistItemData.playlistSetVideoId);
      if (!svid) return;
      const title = ((el.querySelector('#video-title')||{}).textContent||'').trim().slice(0,60);
      out.push({ svid, title, node: el });
    });
    return out;
  }

  async function removeBatch(items) {
    const res = await fetch('/youtubei/v1/browse/edit_playlist?key=' + ytcfg.get('INNERTUBE_API_KEY'), {
      method: 'POST', credentials: 'include',
      headers: {
        'Content-Type': 'application/json',
        'X-Youtube-Client-Name': clientName,
        'X-Youtube-Client-Version': clientVersion,
        'Authorization': await auth(),
        'X-Origin': 'https://www.youtube.com',
        'Origin': 'https://www.youtube.com',
        'X-Goog-AuthUser': '0'
      },
      body: JSON.stringify({ context: ctx, playlistId: 'WL',
        actions: items.map(i => ({ action: 'ACTION_REMOVE_VIDEO', setVideoId: i.svid })) })
    });
    if (!res.ok) { console.log('✋ HTTP', res.status); return false; }
    const j = await res.json();
    if (j.errors || (j.alerts && j.alerts.length)) {
      console.log('ℹ aviso API:', JSON.stringify(j.errors || j.alerts).slice(0,200));
    }
    return true;
  }

  let removed = 0, stale = 0;
  console.log('▶ Vacíado WL v6 FINAL — freno: __WL_STOP = true.');
  while (!window.__WL_STOP && removed < MAX_REMOVE) {
    let items = collect();
    if (!items.length) {
      window.scrollTo(0, document.body.scrollHeight);   // cargar más
      await sleep(2000);
      items = collect();
      if (!items.length) { console.log('■ no quedan entradas cargadas: listo (o scrolleá y repetí).'); break; }
    }
    const batch = items.slice(0, BATCH);
    if (!await removeBatch(batch)) break;
    batch.forEach(i => i.node && i.node.remove());      // limpiar del DOM para no reenviar
    removed += batch.length;
    console.log(`✔ ${removed} removidos… (último: ${batch[batch.length-1].title})`);
    await sleep(rand(900, 1600));
  }
  console.log(`■ Fin: ${removed} removidos (${stale} ignorados). F5 para ver el estado final.`);
})();

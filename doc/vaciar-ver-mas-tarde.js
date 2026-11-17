(async () => {
  // Vaciar "Ver mas tarde" — v6.1: extraccion multi-markup + API interna.
  // Freno: escribí __WL_STOP = true en la consola.
  const MAX_REMOVE = 4500;
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
    const buf = await crypto.subtle.digest('SHA-1',
      new TextEncoder().encode(t + ' ' + sapisid + ' ' + location.origin));
    const hex = [...new Uint8Array(buf)].map(b => b.toString(16).padStart(2, '0')).join('');
    return 'SAPISIDHASH ' + t + '_' + hex;
  }

  const seen = new Set();
  function push(out, svid, vid, title, node) {
    if (!svid || seen.has(svid)) return;
    seen.add(svid);
    out.push({ svid, vid, title: (title||'').slice(0,60), node });
  }

  // 1) markup viejo: renderer con .data
  function fromRenderers() {
    const out = [];
    document.querySelectorAll('ytd-playlist-video-renderer').forEach(el => {
      const d = el.data || el.__data || {};
      const svid = d.setVideoId || d.playlistSetVideoId || (d.playlistItemData && d.playlistItemData.playlistSetVideoId);
      if (svid) push(out, svid, d.videoId,
        ((el.querySelector('#video-title')||{}).textContent||''), el);
    });
    return out;
  }

  // 2) markup nuevo: lockups con setVideoId embebido en su HTML
  function fromLockups() {
    const out = [];
    document.querySelectorAll('yt-lockup-view-model, ytd-playlist-video-list-renderer [class*="lockup"]').forEach(el => {
      const html = el.outerHTML || '';
      const mS = html.match(/"setVideoId":"([^"]+)"/) || html.match(/set-video-id="([^"]+)"/);
      const mV = html.match(/watch\?v=([\w-]{11})/);
      if (mS) push(out, mS[1], mV ? mV[1] : null,
        ((el.querySelector('h3, a[title], yt-formatted-string[title]')||{}).textContent||''), el);
    });
    return out;
  }

  // 3) ytInitialData: snapshot embebido de la pagina
  function fromInitialData() {
    const out = [];
    try {
      const raw = JSON.stringify(window.ytInitialData || {});
      const re = /"playlistSetVideoId":"([^"]+)"[^}]*?"videoId":"([\w-]{11})"/g;
      let m;
      while ((m = re.exec(raw)) !== null) push(out, m[1], m[2], '');
    } catch (e) {}
    return out;
  }

  function collect() {
    const out = fromRenderers();
    fromLockups().forEach(i => push(out, i.svid, i.vid, i.title, i.node));
    if (!out.length) fromInitialData().forEach(i => push(out, i.svid, i.vid, i.title, null));
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
    if (j.errors) console.log('ℹ errores API:', JSON.stringify(j.errors).slice(0,200));
    return true;
  }

  let removed = 0, noDom = 0;
  console.log('▶ Vacíado WL v6.2 FINAL (setVideoId directo) — freno: __WL_STOP = true.');
  while (!window.__WL_STOP && removed < MAX_REMOVE) {
    let items = collect();
    if (!items.length) {
      window.scrollTo(0, document.body.scrollHeight);
      await sleep(2000);
      items = collect();
      if (!items.length) {
        console.log('■ sin setVideoIds. DOM:', {
          renderers: document.querySelectorAll('ytd-playlist-video-renderer').length,
          lockups: document.querySelectorAll('yt-lockup-view-model').length,
          initialData: !!(window.ytInitialData)
        });
        break;
      }
    }
    const batch = items.slice(0, BATCH);
    if (!await removeBatch(batch)) break;
    batch.forEach(i => { if (i.node && i.node.remove) i.node.remove(); else noDom++; });
    removed += batch.length;
    console.log(`✔ ${removed} removidos… (último: ${batch[batch.length-1].title || '(sin titulo)'})`);
    await sleep(rand(900, 1600));
    if (batch.every(i => !i.node)) await sleep(1200); // fuente sin DOM: dejar respirar
  }
  console.log(`■ Fin: ${removed} removidos (${noDom} de snapshot). F5 para ver el estado final.`);
})();

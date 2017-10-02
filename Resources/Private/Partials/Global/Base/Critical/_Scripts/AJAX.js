(() => {
  let callbackCount = 0;

  function jsonp(url, callback) {
    const id = `nueww_jsonp_cb_${callbackCount}`;
    const head = document.querySelector('head');
    const script = document.createElement('script');

    script.src = `${url + (url.indexOf('?') === -1 ? '?' : '&')}callback=${id}`;
    head.appendChild(script);

    window[id] = (data) => {
      head.removeChild(script);
      callback(data);
      delete window[id];
    };

    callbackCount += 1;
  }

  function process(result) {
    try {
      return JSON.parse(result);
    } catch (e) {
      return result;
    }
  }

  window.nueww = Object.assign({}, window.nueww, {
    ajax(url, callback, jsonpMode) {
      if (jsonpMode) {
        jsonp(url, (data) => {
          if (callback) {
            callback(process(data));
          }
        });
      } else {
        const oReq = new XMLHttpRequest();

        oReq.addEventListener('load', (e) => {
          if (callback) {
            callback(process(oReq.response), oReq, e);
          }
        });

        oReq.open('GET', `${`${url + (url.indexOf('?') === -1 ? '?' : '&')}nocache=${(new Date()).getTime()}`}`);
        oReq.send();
      }
    },
  });
})();

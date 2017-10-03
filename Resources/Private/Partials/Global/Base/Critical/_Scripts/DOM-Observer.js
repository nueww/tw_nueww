(() => {
  const initObserverStack = {};
  const initTimers = {};

  function init(selector, node) {
    const lastNode = window.nueww.$('*').pop();

    if (node.contains(lastNode)) {
      setTimeout(() => {
        init(selector, node);
      }, 100);
    } else {
      initObserverStack[selector].callback(node);
    }
  }

  function callback(entries, observer) {
    entries.forEach((entry) => {
      if (entry.intersectionRatio > 0.01) {
        const registeredSelectors = Object.keys(initObserverStack);

        registeredSelectors.forEach((selector) => {
          if (!entry.target.matches(selector)) {
            return;
          }

          // InitTimer waits if the element gets scrolled by
          initTimers[entry.target] = setTimeout(() => {
            observer.unobserve(entry.target);
            init(selector, entry.target);
            initTimers[entry.target] = undefined;
          }, 200);
        });
      } else {
        clearTimeout(initTimers[entry.target]);
      }
    });
  }

  const intersectionObserver = window.IntersectionObserver ? new IntersectionObserver(callback, {
    root: null,
    threshold: 0.01,
  }) : undefined;
  const mutationObserver = new MutationObserver((mutations) => {
    const registeredSelectors = Object.keys(initObserverStack);

    mutations.forEach((mutation) => {
      const addedNodes = [].slice.call(mutation.addedNodes);

      addedNodes.forEach((node) => {
        if (node.nodeType !== 1) {
          return;
        }

        registeredSelectors.forEach((selector) => {
          if (!node.matches(selector)) {
            return;
          }

          if (
            !window.IntersectionObserver ||
            !initObserverStack[selector].lazy
          ) {
            init(selector, node);
          } else {
            intersectionObserver.observe(node);
          }
        });
      });
    });
  });

  const elementObservers = {};
  const defaultConfig = {
    attributes: false,
    childList: true,
    characterData: false,
    subtree: true,
  };

  mutationObserver.observe(document.documentElement, defaultConfig);

  window.nueww = Object.assign({}, window.nueww, {
    observer: {
      register(selector, callback, lazy = true) {
        if (
          initObserverStack[selector] &&
          initObserverStack[selector].callback &&
          initObserverStack[selector].callback === callback
        ) {
          return;
        }

        initObserverStack[selector] = {
          callback,
          lazy,
        };

        window.nueww.$(selector).forEach(elem => init(selector, elem));
      },
      observe(elem, callback, config) {
        config = config || defaultConfig;

        elementObservers[elem] = new MutationObserver((mutations) => {
          mutations.forEach(() => {
            if (callback) {
              callback();
            }
          });
        });

        elementObservers[elem].observe(elem, config);
      },
      disconnect(elem) {
        if (elementObservers[elem]) {
          elementObservers[elem].disconnect();
        }
      },
    },
  });
})();

(() => {
  function replace(oldElement) {
    const oldClassName = oldElement.className;
    const noscript = oldElement.querySelector('noscript');
    const parentElement = oldElement.parentNode;
    const dom = document.createElement('div');

    dom.innerHTML = noscript.textContent;

    const newElement = dom.firstElementChild;
    const src = newElement.getAttribute('src').replace(/\s/g, '');

    newElement.className = oldClassName;

    if (src && src.substr(0, 5) !== 'data:') {
      const image = new Image();

      image.onload = () => {
        parentElement.replaceChild(newElement, oldElement);
      };
      image.onerror = () => {
        window.console.error(`Error lazy loading image ${src}`);
      };
      image.src = src;
    } else {
      parentElement.replaceChild(newElement, oldElement);
    }
  }

  function callback(entries, observer) {
    entries.forEach((entry) => {
      if (entry.intersectionRatio > 0.1) {
        observer.unobserve(entry.target);

        replace(entry.target);
      }
    });
  }

  const observer = window.IntersectionObserver ? new IntersectionObserver(callback, {
    root: null,
    rootMargin: '100px 0px 100px 0px',
    threshold: 0.1,
  }) : {
    observe: replace,
  };

  function lazyLoad(elem) {
    observer.observe(elem);
  }

  window.nueww.observer.register('div.park-image', (elem) => {
    lazyLoad(elem);
  }, false);
})();

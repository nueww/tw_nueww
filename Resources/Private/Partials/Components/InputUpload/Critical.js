(() => {
  function detectDragCapability() {
    const div = document.createElement('div');

    return ('draggable' in div) || ('ondragstart' in div && 'ondrop' in div)
  }

  window.nueww.observer.register('.nueww-input-upload', (elem) => {
    if (detectDragCapability()) {
      elem.classList.add('nueww-input-upload--is-draganddrop');
    }
  }, false);
})();

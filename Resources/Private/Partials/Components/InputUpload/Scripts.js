(() => {
  function appendListItem(elem, name, filename, mimetype, value) {
    const template = elem.querySelector('template');
    const content = template.content || template;
    const templateItem = content.querySelector('.nueww-input-upload__filelist-item');
    const templateItemHtml = templateItem.innerHTML;
    const list = elem.querySelector('.nueww-input-upload__filelist');
    const item = document.createElement(templateItem.nodeName.toLowerCase());

    item.setAttribute('data-mimetype', mimetype);
    item.className = templateItem.className;
    item.innerHTML = templateItemHtml;
    item.innerHTML = item.innerHTML.replace(/%name%/g, name);
    item.innerHTML = item.innerHTML.replace(/%filename%/g, filename);
    item.innerHTML = item.innerHTML.replace(/%mimetype%/g, mimetype);
    item.innerHTML = item.innerHTML.replace(/%value%/g, value);

    if (mimetype.startsWith('image/')) {
      item.style.backgroundImage = `url(${value})`;
    }

    list.appendChild(item);
  }

  function processFiles(input, files) {
    const name = input.getAttribute('data-name');
    const elem = input.closest('.nueww-input-upload');

    Array.prototype.slice.call(files).forEach((file) => {
      const reader = new FileReader();

      console.log(file);

      reader.addEventListener('load', () => {
        appendListItem(
          elem,
          name,
          file.name,
          file.type,
          reader.result
        );
      }, false);

      reader.readAsDataURL(file);
    });
  }

  window.nueww.eventHub.register('click', '.nueww-input-upload__filelist-button', (e) => {
    const button = e.target;
    const list = button.closest('.nueww-input-upload__filelist');
    const listItem = button.closest('.nueww-input-upload__filelist-item');

    list.removeChild(listItem);

    e.preventDefault();
    e.stopPropagation();
  });

  window.nueww.eventHub.register('change', '.nueww-input-upload__input', (e) => {
    processFiles(e.target, e.target.files);
    e.preventDefault();
    e.stopPropagation();
  });

  window.nueww.eventHub.register('dragover dragenter', '.nueww-input-upload__label', (e) => {
    e.target.classList.add('nueww-input-upload__label--is-dragover');
    e.preventDefault();
    e.stopPropagation();
  });

  window.nueww.eventHub.register('dragleave dragend', '.nueww-input-upload__label', (e) => {
    e.target.classList.remove('nueww-input-upload__label--is-dragover');
    e.preventDefault();
    e.stopPropagation();
  });

  window.nueww.eventHub.register('drop', '.nueww-input-upload__label', (e) => {
    const elem = e.target.closest('.nueww-input-upload');
    const input = elem.querySelector('.nueww-input-upload__input');

    e.target.classList.remove('nueww-input-upload__label--is-dragover');
    processFiles(input, e.dataTransfer.files);

    e.preventDefault();
    e.stopPropagation();
  });
})();

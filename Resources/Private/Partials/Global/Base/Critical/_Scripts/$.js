(() => {
    window.nueww = Object.assign({}, window.nueww, {
        $(selector, elem) {
            elem = elem || document;
            return [].slice.call(elem.querySelectorAll(selector));
        },
    });
})();

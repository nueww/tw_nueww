# DOM Observer API

The `window.nueww.observer` API exposes the `.register()` method. With it you can register elements together with how they should be initialized once they appear in the DOM. Once registered this also works for elements that are being inserted in the DOM at a later time.

On top of that, the API checks per individual element if it is currently contained in the viewport. If yes, it gets initialized right away. If not it will wait with the element's initialization until it scrolls into view. So basically you can speak of lazy initialization.

The `.register()` method expects three arguments:

1) A CSS selector matching the corresponding DOM elements
2) A callback function which gets called for each matching element, with the element as first argument
3) A boolean indicating if lazy initialization should be applied or not (default: true)

Usage example for a virtual slider component:

```js
function inializeSlider(elem) {
  // foobar
  // shizzle
}

window.nueww.observer.register('.nueww-slider', (elem) => {
  initializeSlider(elem);
});
```

If for some reason you want all sliders to always get initialized at the moment when they appear in the DOM, you could turn lazy initialization off by setting a third argument to `false`:

```js
window.nueww.observer.register('.nueww-slider', (elem) => {
  initializeSlider(elem);
}, false);
```

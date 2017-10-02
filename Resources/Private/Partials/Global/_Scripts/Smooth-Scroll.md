# Smooth Scroll API

`window.nueww.smoothScroll` lets you smoothly scroll an element either vertically via `.top()` method, or horizontally via `.left()` method.

The following parameters are passed as an object:

* `elem`: The element to be scrolled
* `scrollTo`: The absolute scroll position to scroll to
* `duration`: The duration of the scroll process in milliseconds (optional, default: 600)
* `callback`: A callback function to be executed at the end of scroll (optional)

```js
window.nueww.smoothScroll.top({
  elem: document.documentElement,
  scrollTo: 0,
  duration: 600,
  callback: () => {
    alert('Finished srolling to the top!')
  },
});
```

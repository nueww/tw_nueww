# Event Hub API

## .register()

`window.nueww.eventHub` lets you register events for elements via its `register()` method. The advantage in contrast to the usual `addEventHandler` method is that it practices event delegation so that it doesn't litter the DOM with event listeners. It thereby works similar to jQuery's `.delegate` or advanced `.on` methods.

In addition to that, it also throttles events like `scroll` or `resize`.

The `.register()` method expects three arguments:

1) The name of the event to listen to, e.g `'click'`. You can also pass multiple events at oncy by separating them with space: `'click focus'`.
2) A CSS selector or a DOM element to match the event against, e.g. `'a'` or `'a, button'` or `document`.
3) A handler function that gets passed the event object as first argument.

A few examples for its usage:

```js
window.nueww.eventHub.register('click', 'a', (e) => {
  alert('Link clicked!')
});
```

```js
window.nueww.eventHub.register('click', 'a, button', (e) => {
  alert('Link or button clicked!')
});
```

```js
window.nueww.eventHub.register('input change', 'input', (e) => {
  alert(`Content of input with name ${e.target.name} has been modified!`)
});
```

```js
window.nueww.eventHub.register('resize', document, (e) => {
  alert('Window resize happened!')
});
```

## .trigger()

`window.nueww.eventHub` also exposes the `.trigger` method to trigger custom events.

The `.register()` method expects three arguments:

1) The DOM element that emits the event.
2) The name of the event to listen to, e.g `'click'` or `'component:updated'`.
3) Data that gets appended to the event object.

One example:

```js
window.nueww.eventHub.trigger(elem, 'component:updated', {
  action: 'yolo'
});
```

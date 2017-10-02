# AJAX API

The `window.nueww.ajax()` method simplifies working with the XMLHttpRequest object. It is not yet based on the Fetch API, as browser support is not yet good enough.

The method expects up to three arguments:

1) A URL
2) A callback which will get passed as arguments a) the response and b) the request object
3) A boolean indicating when to use JSON-P (optional)

Example:

```js
window.nueww.ajax('https://graph.facebook.com/http://nueww.de/', (responseJSON) => {
  const response = JSON.parse(responseJSON);
  
  alert(`The URL http://nueww.de/ has been shared ${response.share.share_count} times.`);
});
```

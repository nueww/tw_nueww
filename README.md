# How to let fractal know about new components or their variants?

1) SSH yourself into Vagrant via `vagrant ssh`
2) Enter `su` followed by the password `vagrant`(only needed once per SSH session)
3) Move to `cd /www/accounts/nueww/data`
4) Execute `fractal update-typo3`
5) Execute `/etc/init.d/fractal-nueww restart`

# Custom NUEWW Fluid ViewHelpers

To use custom viewhelpers, you have to define/include the namespace 
in your template/partial/layout file. **Namespace must always be included on top!**

`{namespace n=Tollwerk\TwNueww\ViewHelpers}`

No you can use a viewhelper like `<n:myCustomStuff>...</n:myCustomStuff>`, `<n:myCustomStuff/>`
or inline like `{n:myCustomstuff()}`.

## Dynamic headline viewhelpers n:h1, n:h2 etc.

They work like regular h-Tags but you can set a "start"-parameter for the starting level.
With this you can implement your component withouth worrying about where it will be used.

Basically, inside your component you can always start with `<n:h1>` and pass the desired
actual starting level from outside.

```html
<!-- Will result in <h1> -->
<n:h1 star="1">Foo</n:h1>

<!-- Will result in <h2> -->
<n:h1 start="2">Foo</n:h1>

<!-- Will result in <h3> -->
<n:h1 start="3">Foo</n:h1>
```

### Example

A parent partial/template will pass a parameter called **"startingLevel" with value = 3**,
indicating that the parent content around our partial/template already uses h1 and h2 tags:

```html
 
{namespace n=Tollwerk\TwNueww\ViewHelpers}

<n:h1 start="{startingLevel}">Foo</n:h1>
<n:h2 start="{startingLevel}">Bar</n:h2>
<n:h3 start="{stargingLevel}">Baz</n:h3>
```

This will result in

```html
<h3>Foo</h3>
<h4>Bar</h4>
<h5>Baz</h5>
```

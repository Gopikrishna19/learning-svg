# {{page.title}}

## defs

Contains elements that are reusable. Cannot be rendered until utilized, like `use`.

<svg height="100" width="300">
    <defs>
        <g id="reusable-item">
            <circle cx="50" cy="50" r="50"/>
        </g>
    </defs>
    <use xlink:href="#reusable-item" x="0" y="0" fill="red"/>
    <use xlink:href="#reusable-item" x="200" y="0" fill="green"/>
</svg>

```html
<svg height="100" width="300">
    <defs>
        <g id="reusable-item">
            <circle cx="50" cy="50" r="50"/>
        </g>
    </defs>
    <use xlink:href="#reusable-item" x="0" y="0" fill="red"/>
    <use xlink:href="#reusable-item" x="200" y="0" fill="green"/>
</svg>
```

## g

Groups elements.

<svg height="100" width="300">
    <style>
        .group {
            fill: red;
        }
    </style>
    <g class="group">
        <circle cx="50" cy="50" r="50"/>
        <circle cx="250" cy="50" r="50"/>
    </g>
</svg>

```html
<svg height="100" width="300">
    <style>
        .group {
            fill: red;
        }
    </style>
    <g class="group">
        <circle cx="50" cy="50" r="50"/>
        <circle cx="250" cy="50" r="50"/>
    </g>
</svg>
```

## symbol

Similar to `defs` but has an added advantage of having its own `viewBox` and `preserveAspectRatio`. Something like svg inside svg.

<svg height="100" width="300">
    <symbol id="reusable-symbol" viewBox="0 0 100 100">
        <circle cx="50" cy="50" r="50"/>
    </symbol>
    <use xlink:href="#reusable-symbol" x="0" y="0" width="100" fill="red"/>
    <use xlink:href="#reusable-symbol" x="200" y="0" width="100" fill="green"/>
</svg>

```html
<svg height="100" width="300">
    <symbol id="reusable-symbol" viewBox="0 0 100 100">
        <circle cx="50" cy="50" r="50"/>
    </symbol>
    <use xlink:href="#reusable-symbol" x="0" y="0" width="100" fill="red"/>
    <use xlink:href="#reusable-symbol" x="200" y="0" width="100" fill="green"/>
</svg>
```

## More usage of symbols and defs

The declaration and actual rendering can be split.

<svg style="display: none;">
    <symbol id="reusable-symbol" viewBox="0 0 100 100">
        <circle cx="50" cy="50" r="50"/>
    </symbol>
</svg>

<svg height="100" width="300">
    <use xlink:href="#reusable-symbol" x="0" y="0" width="100" fill="red"/>
    <use xlink:href="#reusable-symbol" x="200" y="0" width="100" fill="green"/>
</svg>

```html
<svg style="display: none;"> <!-- display none so it won't take space in the dom -->
    <symbol id="reusable-symbol" viewBox="0 0 100 100">
        <circle cx="50" cy="50" r="50"/>
    </symbol>
</svg>

<svg height="100" width="300">
    <use xlink:href="#reusable-symbol" x="0" y="0" width="100" fill="red"/>
    <use xlink:href="#reusable-symbol" x="200" y="0" width="100" fill="green"/>
</svg>
```

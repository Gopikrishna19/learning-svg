<style>
svg {
    margin-left: 1px;
    outline: 1px dashed red;
}
</style>

# {{page.title}}

## circle

<svg height="100" width="100">
    <circle cx="50" cy="50" r="50"/>
</svg>

```html
<svg height="100" width="100">
    <circle cx="50" cy="50" r="50"/>
</svg>
```

## ellipse

<svg height="100" width="300">
    <ellipse cx="150" cy="50" rx="150" ry="50"/>
</svg>

```html
<svg height="100" width="300">
    <ellipse cx="150" cy="50" rx="150" ry="50"/>
</svg>
```

## rect

<svg height="100" width="300">
    <rect x="0" y="0" height="100" width="300"/>
</svg>

<svg height="100" width="300">
    <rect x="0" y="0" height="100" width="300" rx="20" ry="20"/>
</svg>

```html
<svg height="100" width="300">
    <rect x="0" y="0" height="100" width="300"/>
</svg>

<svg height="100" width="300">
    <rect x="0" y="0" height="100" width="300" rx="20" ry="20"/>
</svg>
```

## line

<svg height="100" width="300">
    <line x1="10" y1="90" x2="290" y2="10" stroke="#000"/>
</svg>

```html
<svg height="100" width="300">
    <line x1="10" y1="90" x2="290" y2="10" stroke="#000"/>
</svg>
```

## polyline

`polyline` uses a list of pairs of `x,y` `points`.

<svg height="100" width="300">
    <polyline points="10,90 100,20 200,80 290,10" stroke="#000"/>
</svg>

<svg height="100" width="300">
    <polyline points="10,90 100,20 200,80 290,10" stroke="#000" fill="none"/>
</svg>

```html
<svg height="100" width="300">
    <polyline points="10,90 100,20 200,80 290,10" stroke="#000"/>
</svg>

<svg height="100" width="300">
    <polyline points="10,90 100,20 200,80 290,10" stroke="#000" fill="none"/>
</svg>
```

## polygon

`polygon` is `polyline` where the last coordinates defaults to the first.

<svg height="100" width="300">
    <polygon points="10,90 100,20 290,10 200,80" stroke="#000"/>
</svg>

<svg height="100" width="300">
    <polygon points="10,90 100,20 290,10 200,80" stroke="#000" fill="none"/>
</svg>

```html
<svg height="100" width="300">
    <polygon points="10,90 100,20 290,10 200,80" stroke="#000"/>
</svg>

<svg height="100" width="300">
    <polygon points="10,90 100,20 290,10 200,80" stroke="#000" fill="none"/>
</svg>
```

## path

A `path` contain several information.

- d, path data
- M, move to
- L, line to
- Arcs, cubics and quadratic beziers
- Z, close path information, connects the last coordinate with the first

<svg height="100" width="300">
    <path
        d="M13.5,86.5l78-55c0,0,52-45,94,1s-14,54-33,54s-42-6-42-26s52-31,52-31l87-18"
        stroke="#000"
    />
</svg>

<svg height="100" width="300">
    <path
        d="M13.5,86.5l78-55c0,0,52-45,94,1s-14,54-33,54s-42-6-42-26s52-31,52-31l87-18"
        stroke="#000"
        fill="none"
    />
</svg>

```html
<svg height="100" width="300">
    <path
        d="M13.5,86.5l78-55c0,0,52-45,94,1s-14,54-33,54s-42-6-42-26s52-31,52-31l87-18"
        stroke="#000"
    />
</svg>

<svg height="100" width="300">
    <path
        d="M13.5,86.5l78-55c0,0,52-45,94,1s-14,54-33,54s-42-6-42-26s52-31,52-31l87-18"
        stroke="#000"
        fill="none"
    />
</svg>
```

## text

`text` uses reverse positioning on y axis to easily maintain the baseline.

<svg height="100" width="300">
    <style>
        text {
            font: 80px sans-serif !important;
        }
    </style>
    <text x="10" y="90" fill="#000">Text</text>
</svg>

```html
<svg height="100" width="300">
    <style>
        text {
            font: 80px sans-serif;
        }
    </style>
    <text x="10" y="90" fill="#000">Text</text>
</svg>
```

## use

`use` allows reusability of pieces of graphical elements.

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

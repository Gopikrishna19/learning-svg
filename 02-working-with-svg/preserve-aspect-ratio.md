# {{page.title}}

When there is a mismatch between viewport and `viewBox`, `preserverAspectRatio` can be used to deliver desired filling effects.

`preserveAspectRatio` is set with a pair of values or `none`

| value    | effect                      | category           |
| -------- | --------------------------- | ------------------ |
| none     | stretch and fill            | alignment and fill |
| xMinYMin | top left                    | alignment          |
| xMidYMin | top center                  | alignment          |
| xMaxYMin | top right                   | alignment          |
| xMinYMid | center left                 | alignment          |
| xMidYMid | center center               | alignment          |
| xMaxYMid | center right                | alignment          |
| xMinYMax | bottom left                 | alignment          |
| xMidYMax | bottom center               | alignment          |
| xMaxYMax | bottom right                | alignment          |
| meet     | stretch and meet the border | fill               |
| slice    | stretch and hide overflow   | fill               |

## Image to test and containers

<svg height="200" width="200">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>

```html
<svg height="200" width="200">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

<style>
.viewport {
    border: 1px solid blue;
    display: inline-block;
    margin-right: 25px;
}

.viewport.ex {
    font-size: 0;
}

.narrow.viewport {
    height: 300px;
    width: 100px;
}

.wide.viewport {
    height: 100px;
    width: 300px;
}
</style>

<div class="narrow viewport">Narrow Vieport</div>
<div class="wide viewport">Wide Vieport</div>

## `none`

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="none">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="none">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="none">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="none">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

---

# x axis

## with no `meetOrSlice`

### xMin

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMid

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMax

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

## with `meet`

### xMin

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMid

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMax

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

## with `slice`

### xMin

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMid

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMidYMin slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### xMax

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMaxYMin slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

---

# y axis

## with no `meetOrSlice`

### yMin

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMid

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMax

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

## with `meet`

### yMin

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMid

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMax

<div class="viewport ex">
    <svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax meet">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="300" width="100" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax meet">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

## with `slice`

### yMin

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMin slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMid

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMid slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

### yMax

<div class="viewport ex">
    <svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax slice">
        <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 200 200" preserveAspectRatio="xMinYMax slice">
    <circle cx="100" cy="100" r="100" fill="#ff0000"></circle>
</svg>
```

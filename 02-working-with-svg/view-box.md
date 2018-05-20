<style>
.container {
    font-size: 0;
    display: inline-block;
    position: relative;
}

.container.alt2 {
    margin-left: 100px;
}

.container.alt3 {
    margin-left: 200px;
}

svg {
    margin-left: 1px;
    outline: 1px dashed red;
}

.actual {
    display: block;
    left: 0;
    margin-left: 1px;
    outline: 1px dashed green;
    position: absolute;
    top: 0;
}

.actual.scaled {
    height: 50px;
    width: 150px;
}

.actual.adjusted {
    height: 50px;
    left: 75px;
    top: 25px;
    width: 150px;
}

.actual.example1 { 
    height: 100px;
    width: 300px
}

.alt2 .actual.example1 {
    left: -100px;
}
    
.alt3 .actual.example1 {
    left: -200px;
}
    
.actual.example2 {
    height: calc(200px/3);
    top: calc(50px/3);
    width: 200px
}
    
.actual.example3 {
    height: 50px;
    top: 25px;
    width: 150px;
}
    
.actual.example4 {
    height: calc(100px/3);
    top: calc(100px/3);
    width: 100px;
}
</style>

# {{page.title}}

Default `viewBox` takes the same size as `height` and `width`.

<div class="container">
    <svg height="100" width="300">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="300">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

## Adding `viewBox`

When given, the `viewBox` scales the images with the ratio between the size of the `viewBox` and the `height` and `width`.

<div class="container">
    <div class="actual scaled">x</div>
    <svg height="100" width="300" viewBox="0 0 600 200">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 600 200">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

## Adjusting with respect to `viewBox`

Since the ratio is two times, the content can be updated to desirable effect.

<div class="container">
    <div class="actual adjusted">x</div>
    <svg height="100" width="300" viewBox="0 0 600 200">
        <circle cx="300" cy="100" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="300" viewBox="0 0 600 200">
    <circle cx="300" cy="100" r="50" fill="#000000"/>
</svg>
```

## More examples

<div class="container">
    <div class="actual example1">x</div>
    <svg height="100" width="100" viewBox="0 0 100 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="0 0 100 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

<div class="container alt2">
    <div class="actual example1">x</div>
    <svg height="100" width="100" viewBox="100 0 100 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="100 0 100 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

<div class="container alt3">
    <div class="actual example1">x</div>
    <svg height="100" width="100" viewBox="200 0 100 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="200 0 100 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

<div class="container">
    <div class="actual example2">x</div>
    <svg height="100" width="100" viewBox="0 0 150 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="0 0 150 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

<div class="container">
    <div class="actual example3">x</div>
    <svg height="100" width="100" viewBox="0 0 200 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="0 0 200 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

<div class="container">
    <div class="actual example4">x</div>
    <svg height="100" width="100" viewBox="0 0 300 100">
        <circle cx="150" cy="50" r="50" fill="#000000"/>
    </svg>
</div>

```html
<svg height="100" width="100" viewBox="0 0 300 100">
    <circle cx="150" cy="50" r="50" fill="#000000"/>
</svg>
```

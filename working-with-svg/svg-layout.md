# {{page.title}}

## tl;dr

`sky`**`:`**`telescope`**`:`**`zooming`**`::`**`canvas`**`:`**`view-port`**`:`**`view-box`

## Canvas

Canvas is large area where everything is. It is not needed to be configured.

## Viewport

A narrowed down area on the canvas where something is currently focused at. Defined by `height` and `width` attributes.

## View Box

A narrower area off of viewport to focus on. Defined by `viewBox` as coordinates.

## Examples

### A 100x100 image

<svg height="100" width="100" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="50" fill="#ff0000"></circle>
</svg>

```html
<svg height="100" width="100" viewBox="0 0 100 100">
    <circle cx="50" cy="50" r="50" fill="#ff0000"></circle>
</svg>
```

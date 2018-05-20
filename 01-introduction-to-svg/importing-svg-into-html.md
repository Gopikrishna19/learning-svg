# {{page.title}}

## Option 1: `<img>`

 - imported as an external image

<img src="../assets/circle.svg" alt="Using img tag"/>

```html
<img src="../assets/circle.svg" alt="Using img tag"/>
```

## Option 2: `<embed>`

 - mime type required
 - imported as an external image

<embed src="../assets/circle.svg" type="image/svg+xml"/>

```html
<embed src="../assets/circle.svg" type="image/svg+xml"/>
```

## Option 3: `<object>`

 - mime type required
 - good for giving placeholders while the image is loading

<object data="../assets/circle.svg" type="image/svg+xml">
    Loading ...
</object>

```html
<object data="../assets/circle.svg" type="image/svg+xml">
    Loading ...
</object>
```

## Option 3: `<iframe>`

 - requires height and width
 - needs more work
 - good for giving placeholders while the image is loading

<iframe height="100" width="100" style="border: none" src="../assets/circle.svg">
    Loading ...
</iframe>

```html
<iframe height="100" width="100" style="border: none" src="../assets/circle.svg">
    Loading ...
</iframe>
```

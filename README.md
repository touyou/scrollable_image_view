# scrollable_image_view

A scrollable image view.

## Usage

### Basic Usage

Show the image with original size.

```dart
ScrollableImageView(
  imagePath: "hoge.png",
  viewSize: Size(width: 400, height: 400),
);
```

### Set image size

Show the image with specified size.

```dart
ScrollableImageView(
  imagePath: "hoge.png",
  viewSize: Size(width: 400, height: 400),
  imageSize: Size(width: 600, height: 400),
);
```

### Set image scale

Show the image scaled by imageScale.

```dart
ScrollableImageView(
  imagePath: "hoge.png",
  viewSize: Size(width: 400, height: 400),
  imageScale: 3.0,
);
```

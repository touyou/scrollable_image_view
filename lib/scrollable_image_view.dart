library scrollable_image_view;

import 'package:flutter/material.dart';

class ScrollableImageView extends StatefulWidget {
  ScrollableImageView({
    Key key,
    @required this.imagePath,
    @required this.viewSize,
    this.imageSize,
    this.imageScale,
  }) : super(key: key);

  final String imagePath;
  final Size imageSize;
  final Size viewSize;
  final double imageScale;

  @override
  _ScrollableImageViewState createState() => _ScrollableImageViewState();
}

class _ScrollableImageViewState extends State<ScrollableImageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.viewSize.height,
      width: widget.viewSize.width,
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: getScaledImage(widget.imageScale, widget.imageSize),
            ),
          ),
        ),
      ),
    );
  }

  Image getScaledImage(double scale, Size size) {
    if (scale != null) {
      return Image.asset(widget.imagePath, scale: scale);
    } else if (size != null) {
      return Image.asset(
        widget.imagePath,
        width: widget.imageSize.width,
        height: widget.imageSize.height,
      );
    } else {
      return Image.asset(
        widget.imagePath,
        scale: 1.0,
      );
    }
  }
}

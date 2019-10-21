library scrollable_image_view;

import 'package:flutter/material.dart';

class ScrollableImageView extends StatefulWidget {
  ScrollableImageView({Key key}) : super(key: key);

  @override
  _ScrollableImageViewState createState() => _ScrollableImageViewState();
}

class _ScrollableImageViewState extends State<ScrollableImageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: const Color(0xff808000),
                height: 300,
                width: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    this.imageWidget = '',
  });
  final String imageWidget;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageWidget,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.contain,
    );
  }
}

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({
    super.key,
    this.imagePage = '',
  });
  final String imagePage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePage,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.contain,
    );
  }
}

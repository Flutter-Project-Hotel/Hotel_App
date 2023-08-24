import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      this.text = '',
      this.size = 18,
      this.istextBold = false,
      this.textAlign,
      this.isColorOpacity = false});
  final String text;
  final double size;
  final bool istextBold;
  final TextAlign? textAlign;
  final bool isColorOpacity;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: istextBold != true ? FontWeight.normal : FontWeight.bold,
          fontSize: size,
          color: isColorOpacity != true ? HColors.lightBlue : HColors.blue),
      textAlign: textAlign,
    );
  }
}

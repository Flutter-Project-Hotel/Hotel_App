import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
    this.text = '',
    this.bgColor = HColors.lightBlue,
    this.onPressed,
  });
  final String text;
  final Color bgColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 70, vertical: 15)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}

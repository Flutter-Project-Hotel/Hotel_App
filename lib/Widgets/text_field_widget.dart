import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';

class TextFormFieldWidget extends StatefulWidget {
  TextFormFieldWidget({
    super.key,
    this.textHint = '',
    this.inputType,
    this.iconTextFiel,
  });

  final String textHint;
  final TextInputType? inputType;
  final IconData? iconTextFiel;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: widget.textHint,
        fillColor: HColors.grey,
        prefixIcon: Icon(
          widget.iconTextFiel,
          color: HColors.blue.withOpacity(0.9),
        ),
      ),
    );
  }
}

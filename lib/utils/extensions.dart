import 'package:flutter/material.dart';

// for navigator btn
extension Nav on Widget {
  push(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => this,
      ),
    );
  }
}

// for pop
extension Pop on BuildContext {
  get pop => Navigator.pop(this);
}

//Email Format
extension Email on String {
  bool get isValidEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

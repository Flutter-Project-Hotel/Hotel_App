import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/custm_bottom_appBar.dart';
import 'package:hotel_project/Widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
        child: TextWidget(
            text: "Welcome ", size: 30, istextBold: true, isColorOpacity: true),
      ),
      custom_bottom_appBar(),
    ])));
  }
}

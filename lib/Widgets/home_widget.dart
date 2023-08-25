import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/app_bar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TAppBar(title: "Hi noura"),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 120, right: 15, left: 15),
            child: Column(children: [
              Text(
                "Welcome",
              )
            ]),
          ),
        ),
      ],
    );
  }
}

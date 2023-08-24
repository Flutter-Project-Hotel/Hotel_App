import 'package:flutter/material.dart';

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, right: 15, left: 15),
        child: Column(children: [
          Text(
            "Welcome",
          )
        ]),
      ),
    );
  }
}

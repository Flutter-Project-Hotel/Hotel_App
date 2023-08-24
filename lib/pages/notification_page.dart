import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({
    super.key,
  });

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120, right: 15, left: 15),
          child: Column(children: [
            Text(
              "Notification Page",
            )
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/models/hotel.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({
    super.key,
    this.hotel,
  });
  final Hotel? hotel;

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HColors.lightBlue,
          title: const Align(
              alignment: Alignment.center, child: Text('Book Room')),
        ),
        body: const Text('Empty Page'));
  }
}

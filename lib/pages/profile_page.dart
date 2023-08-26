import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';

import 'package:hotel_project/models/hotel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
    required this.hotel,
  });
  final Hotel? hotel;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HColors.lightBlue,
          title: const Align(
              alignment: Alignment.center, child: Text('Book Room')),
        ),
        body: const Text(' Empty Page'));
  }
}

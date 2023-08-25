import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/home_widget.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/pages/notification_page.dart';
import 'package:hotel_project/pages/orders_page.dart';
import 'package:hotel_project/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List pages = [
    const HomeWidget(),
    const OrdersPage(
      hotel: null,
    ),
    const NotificationPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(
              icon: Icon(
                Icons.home,
                color: HColors.blue,
              ),
              title: 'Home'),
          TabItem(
            icon: Icon(
              Icons.list_alt,
              color: HColors.blue,
            ),
            title: 'Orders',
          ),
          TabItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: HColors.blue,
              ),
              title: 'Notification'),
          TabItem(
              icon: Icon(
                // ProfilePage
                Icons.person_2,
                color: HColors.blue,
              ),
              title: 'Profile'),
        ],
        initialActiveIndex: index,
        onTap: _changeItem,
        backgroundColor: HColors.lightBlue,
      ),
      body: pages.elementAt(index),
    );
  }

  _changeItem(int value) {
    setState(() {
      index = value;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/mybooking_card_widget.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/main.dart';
import 'package:hotel_project/models/hotel.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({
    super.key,
    required this.hotel,
  });
  final Hotel? hotel;

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HColors.lightBlue,
        title:
            const Align(alignment: Alignment.center, child: Text('My Booking')),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: listOrder.length,
          itemBuilder: (context, index) {
            return GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 230,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  MyBookingCardWidgit(
                    hotel: listOrder[index],
                  ),
                ]);
          }),
    );
  }
}

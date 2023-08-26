import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/order_card_widget.dart';
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
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: listOrder.length,
          itemBuilder: (context, index) {
            return OrderCardWidgit(
              hotel: listOrder[index],
            );
          }),

    );
  }
}

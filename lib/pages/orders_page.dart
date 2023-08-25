import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({
    super.key,
  });

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120, right: 15, left: 15),
          child: Column(children: [
            Text(
              "Orders Page",
            )
          ]),
        ),
      ),
    );
  }
}

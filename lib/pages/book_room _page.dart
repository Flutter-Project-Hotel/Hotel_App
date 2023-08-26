import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/main.dart';
import 'package:hotel_project/models/hotel.dart';

// ignore: must_be_immutable
class BookRoom extends StatelessWidget {
  BookRoom({super.key, required this.hotel});
  final Hotel hotel;

  TextEditingController numOfNight = TextEditingController();

  TextEditingController total = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HColors.lightBlue,
        title: const Align(
            alignment: Alignment.center, child: Text('Book Room Page')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text(
                  hotel.hotelName ?? 'No name',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                CachedNetworkImage(
                  imageUrl: hotel.imageUrl ?? '',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('17 nov - 20 nov , 3 nights'),
                  ],
                ),
                Row(
                  children: [
                    Text('1 Room  , 2 Aduits'),
                  ],
                ),
              ],
            ),
          ),
          TextField(
            controller: numOfNight,
            onChanged: (value) {
              _calculate();
            },
            keyboardType: TextInputType.number,
          ),
          Text(total.text),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter Code ', border: OutlineInputBorder()),
              ),
            ),
          ),
          hVSpace32,
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                const Text(
                  'Total',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  " \$ ${hotel.hotelPrice.toString()} /night",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          hVSpace16,
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonsWidget(
                text: "add to orders page",
                onPressed: () {
                  listOrder.add(hotel);
                }),
          ),
        ],
      ),
    );
  }

  void _calculate() {
    if (numOfNight.text.trim().isNotEmpty) {
      final value = int.parse(numOfNight.text);
      total.text = (value * hotel.hotelPrice!.toInt()).toString();
    }
  }
}

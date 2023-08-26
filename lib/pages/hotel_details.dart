import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/facilities_wedget.dart';
import 'package:hotel_project/main.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/utils/extensions.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 240, top: 100),
            child: CachedNetworkImage(
              imageUrl: hotel.imageUrl ?? '',
              // height: context.height / 3,
              // width: context.width,
            ),
          ),
          Row(
            children: [
              Text(hotel.hotelName ?? 'No name'),
            ],
          ),
          Row(
            children: [
              Text(hotel.city ?? 'No name'),
            ],
          ),
          Row(
            children: [
              Text(hotel.description ?? 'No name'),
            ],
          ),
          Row(
            children: [
              Text(hotel.hotelPrice.toString() ?? 'No name'),
            ],
          ),
          Row(
            children: [
              Text(hotel.hotelReview ?? 'No name'),
            ],
          ),
          Facilities(),
          ButtonsWidget(
              text: "add to orders page",
              onPressed: () {
                listOrder.add(hotel);
              }),
        ],
      ),
    );
  }
}

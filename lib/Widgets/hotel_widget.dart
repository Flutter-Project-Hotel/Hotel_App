import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/popular_cities_widget.dart';
import 'package:hotel_project/component/card_hotel.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/hotel.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          PopularCitiesWidget(
            hotel: hotel,
          ),
          HotelCard(
            hotel: hotel,
          )
        ],
      ),
    );
  }
}
// HotelWidget

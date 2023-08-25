import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/pages/hotel_screen.dart';
import 'package:hotel_project/utils/extensions.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        HotelScreen(hotel: hotel).push(context);
      },
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 10,
        color: Colors.white,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: hotel.imageUrl ?? '',
                errorWidget: (context, url, s) {
                  return Container(color: Colors.red);
                },
                width: 300,
                fit: BoxFit.cover,
              ),
              hVSpace8,
              Text(
                hotel.hotelName ?? 'No name',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}

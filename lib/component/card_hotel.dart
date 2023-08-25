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
        borderRadius: BorderRadius.circular(15),
        elevation: 5,
        color: Colors.white,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CachedNetworkImage(
                  imageUrl: hotel.imageUrl ??
                      'https://demofree.sirv.com/nope-not-here.jpg',
                  errorWidget: (context, url, s) {
                    return Container(color: Colors.red);
                  },
                  width: 120,
                ),
                hVSpace8,
                Row(
                  children: [
                    Text(
                      hotel.hotelName ?? 'No name',
                      style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ],
                ),
                hVSpace8,
                Row(
                  children: [
                    Text(
                      hotel.city ?? 'No city',
                      style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
                          color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$ ${hotel.hotelPrice.toString()} /night" ?? '0',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      hotel.hotelReview ?? '0',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.star_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

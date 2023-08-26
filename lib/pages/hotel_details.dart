import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/button_widget.dart';
import 'package:hotel_project/Widgets/facilities_widget.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/pages/book_room%20_page.dart';
import 'package:hotel_project/utils/extensions.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HColors.lightBlue,
        title: const Align(
            alignment: Alignment.center, child: Text('Hotel Details Page')),
      ),
      body: ListView(children: [
        Column(
          children: [
            CachedNetworkImage(
              imageUrl: hotel.imageUrl ?? '',
              height: context.height / 3,
              width: context.width,
            ),
            Row(
              children: [
                Text(
                  hotel.hotelName ?? 'No name',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
                hHSpace128,
                Text(
                  hotel.hotelReview ?? 'No name',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.star_outlined,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  hotel.city ?? 'No name',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w100),
                ),
              ],
            ),
            hVSpace64,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Description',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            hVSpace24,
            Row(
              children: [
                Expanded(child: Text(hotel.description ?? 'No name')),
              ],
            ),
            hVSpace24,
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Facilities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            hVSpace32,
            const Facilities(),
            hVSpace32,
            Text(
              "Total : \$ ${hotel.hotelPrice.toString()} /night",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            hVSpace16,
            Align(
              alignment: Alignment.bottomCenter,
              child: ButtonsWidget(
                  text: "add to orders page",
                  onPressed: () {
                    //listOrder.add(hotel);
                    BookRoom(hotel: hotel).push(context);
                  }),
            ),
          ],
        ),
      ]),
    );
  }
}

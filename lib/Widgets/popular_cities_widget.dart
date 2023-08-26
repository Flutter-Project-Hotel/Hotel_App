import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_project/constants/colors.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/utils/extensions.dart';

class PopularCitiesWidget extends StatelessWidget {
  const PopularCitiesWidget({
    super.key,
    required this.hotel,
  });
  // final Hotel hotel;
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // itemCount: hotel.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  width: 60,
                  height: 60,
                  decoration: boxDecorationBuilder(),
                  child: Center(
                      child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: hotel.imageCity ?? '',
                        errorWidget: (context, url, s) {
                          return Container(color: Colors.red);
                        },
                        width: 100,
                        fit: BoxFit.cover,
                      )
                    ],
                  )),
                )
              ],
            );
          }),
    );
  }

  BoxDecoration boxDecorationBuilder() {
    return const BoxDecoration(
        color: HColors.lightBlue,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(color: HColors.white, blurRadius: 4, spreadRadius: 2)
        ]);
  }
}

// boxDecorationbuilder
// 

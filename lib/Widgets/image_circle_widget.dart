import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/constants/colors.dart';

class PopularCitiesWidget extends StatelessWidget {
  const PopularCitiesWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: 70,
          height: 70,
          decoration: boxDecorationBuilder(),
          child: Column(
            children: [
              Image.asset(
                "assets/image/2.png",
                fit: BoxFit.cover,
              ),
              const Text('paris')
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: 70,
          height: 70,
          decoration: boxDecorationBuilder(),
          child: Column(
            children: [
              Image.asset(
                "assets/image/3.png",
                fit: BoxFit.cover,
              ),
              Text('London')
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: 70,
          height: 70,
          decoration: boxDecorationBuilder(),
          child: Column(
            children: [
              Image.asset(
                "assets/image/4.png",
                fit: BoxFit.cover,
              ),
              Text('Bangkok')
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: 70,
          height: 70,
          decoration: boxDecorationBuilder(),
          child: Column(
            children: [
              Image.asset(
                "assets/image/5.png",
                fit: BoxFit.cover,
              ),
              Text('Rome')
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          width: 70,
          height: 70,
          decoration: boxDecorationBuilder(),
          child: Column(
            children: [
              Image.asset(
                "assets/image/6.png",
                fit: BoxFit.cover,
              ),
              Text('Jakarta')
            ],
          ),
        ),
      ],
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

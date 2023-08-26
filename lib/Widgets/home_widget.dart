import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/app_bar.dart';
import 'package:hotel_project/Widgets/hotel_widget.dart';
import 'package:hotel_project/Widgets/popular_cities_widget.dart';

import 'package:hotel_project/component/card_hotel.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/services/supabase.dart';
import 'package:hotel_project/utils/extensions.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const TAppBar(title: 'home Page'),
            hVSpace16,
            // PopularCitiesWidget(
            //   hotel: hotel,
            // ),
            FutureBuilder(
              future: SupabaseService().getHotel(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final list = snapshot.data ?? [];
                  for (final cities in list)
                    [
                      PopularCitiesWidget(
                        hotel: cities,
                      ),
                      // HotelWidget(
                      //   hotel: hotel,
                      // ),
                      // HotelCard(hotel: hotel),
                    ];
                  return GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,

                    ),
                    children: [
                      for (final hotel in list) ...[
                        // PopularCitiesWidget(
                        //   hotel: hotel,
                        // ),
                        // HotelWidget(
                        //   hotel: hotel,
                        // ),
                        HotelCard(hotel: hotel),
                      ]
                    ],
                  );
                }
                return Text("error");
                // const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

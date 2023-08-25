import 'package:flutter/material.dart';
import 'package:hotel_project/Widgets/app_bar.dart';
import 'package:hotel_project/component/card_hotel.dart';
import 'package:hotel_project/constants/spacings.dart';
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const TAppBar(title: 'home Page'),
            hVSpace24,
            FutureBuilder(
              future: SupabaseService().getHotel(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final list = snapshot.data ?? [];
                  return GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    children: [
                      for (final hotel in list) ...[
                        HotelCard(
                          hotel: hotel,
                        ),
                      ]
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

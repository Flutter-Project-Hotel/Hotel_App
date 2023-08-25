import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:hotel_project/services/supabase.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // TAppBar(title: course.name ?? 'No name', subtitle: ''),
          hVSpace24,
          CachedNetworkImage(
            imageUrl: hotel.imageUrl ?? '',
            width: 500,
          ),
          hVSpace16,
          FutureBuilder(
            future: SupabaseService().getHotelsByHotelId(hotel.hotelId ?? ''),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final hotels = snapshot.data ?? [];
                return ListView(
                  shrinkWrap: true,
                  children: [
                    for (final hotel in hotels) ...[
                      Text(hotel.hotelName ?? 'No student name'),
                    ]
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
          ElevatedButton(
            onPressed: () {
              SupabaseService().deleteHotel(hotel.hotelId ?? '');
            },
            child: const Text('Delete this course'),
          ),
        ],
      ),
    );
  }
}

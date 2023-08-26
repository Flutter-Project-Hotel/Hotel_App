import 'package:flutter/material.dart';
import 'package:hotel_project/constants/spacings.dart';
import 'package:hotel_project/utils/extensions.dart';

class TAppBar extends StatelessWidget {
  const TAppBar({
    super.key,
    required this.title,
  });

  final String title;

  get textController => null;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Container(
        height: context.height / 3,
        width: context.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 216, 196, 220),
              Colors.blue,
              Colors.white
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            hVSpace64,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.network(
                'https://lcotzphrhnuetkcblvln.supabase.co/storage/v1/object/public/images/%20logo.png',
                height: 120,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

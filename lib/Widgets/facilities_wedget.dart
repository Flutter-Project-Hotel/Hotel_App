import 'package:flutter/material.dart';

class Facilities extends StatelessWidget {
  const Facilities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.pool),
              Text("Infinity Pool"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.sunny_snowing),
              Text("Sunset view"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.sports_gymnastics),
              Text("Gym center"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.work_history_rounded),
              Text("Work station"),
            ],
          ),
        ],
      ),
    );
  }
}

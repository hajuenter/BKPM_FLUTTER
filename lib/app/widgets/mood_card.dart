import 'package:flutter/material.dart';

class MoodCard extends StatelessWidget {
  final String mood;
  final String feelings;
  final String intensity;

  const MoodCard({
    super.key,
    required this.mood,
    required this.feelings,
    required this.intensity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mood: $mood",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text("Feelings: $feelings"),
            const SizedBox(height: 5),
            Text("Intensity: $intensity"),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuickBrowse extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Color color;
  const QuickBrowse(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 8,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(height: 6),
            Text(
              name,
              style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

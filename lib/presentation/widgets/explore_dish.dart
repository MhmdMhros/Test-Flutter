import 'package:flutter/material.dart';

class ExploreDish extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Color color;

  const ExploreDish(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: Image.asset(
              imageUrl,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 7,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

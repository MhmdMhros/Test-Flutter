import 'package:flutter/material.dart';

class Restaurants extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;
  final double rate;
  const Restaurants(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.type,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
              child: Image.asset(
                imageUrl,
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 2),
                Text(
                  type,
                  style:
                      const TextStyle(fontSize: 7, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 12),
                    const SizedBox(width: 4),
                    Text(
                      rate.toString(),
                      style: const TextStyle(
                          fontSize: 9, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 2),
                    const Text(
                      '(100+)',
                      style: TextStyle(fontSize: 8, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

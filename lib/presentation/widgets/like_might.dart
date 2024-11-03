import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';

class LikeMight extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  const LikeMight(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
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
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 55,
                    top: 50,
                  ),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 6,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const CustomText(
                      text: 'EGP',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    const SizedBox(width: 4),
                    CustomText(
                      text: price,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
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

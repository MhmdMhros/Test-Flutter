import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';

class CustomProduct extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  const CustomProduct(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: name,
                fontSize: 12,
              ),
              CustomText(
                text: description,
                fontSize: 8,
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  const CustomText(
                    text: 'EGP ',
                    fontSize: 12,
                  ),
                  CustomText(
                    text: price.toString(),
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imageUrl,
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}

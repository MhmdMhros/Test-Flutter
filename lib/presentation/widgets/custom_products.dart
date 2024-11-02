import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_product.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';

class CustomProducts extends StatelessWidget {
  final String name;
  const CustomProducts({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: name,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const CustomProduct(
                    imageUrl: 'assets/images/pizza.png',
                    name: 'Pizza King',
                    description:
                        "Lorem Ipsum Dolor Sit Amet Consectetur. Sit Enim In Sit Purus Justo Pellentesque Amet.",
                    price: '22.00',
                  ),
                  // Add a divider after each item except the last one
                  if (index < 2)
                    const Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 1,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

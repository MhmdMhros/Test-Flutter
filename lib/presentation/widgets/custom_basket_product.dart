import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';

class CustomBasketProduct extends StatelessWidget {
  const CustomBasketProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: 'Pizza',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            const CustomText(
              text: 'Closed',
              fontSize: 13,
              color: Colors.black54,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.blue,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CustomText(
                    text: 'Edit',
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                CustomText(
                  text: 'EGP',
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 3,
                ),
                CustomText(
                  text: '5.00',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/pizza.png',
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 80,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xFF067B96),
              ),
              child: Stack(
                children: [
                  IconButton(
                    padding: const EdgeInsetsDirectional.only(
                        start: 0, end: 10, top: 6, bottom: 10),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: 39, end: 0, top: 4, bottom: 0),
                    child: CustomText(
                      text: '1',
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsetsDirectional.only(
                        start: 55, end: 0, top: 6, bottom: 10),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

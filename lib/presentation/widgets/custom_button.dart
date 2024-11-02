import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final int width;
  final int height;
  final String name;
  final int fontSize;
  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.name,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: MaterialButton(
        onPressed: () {},
        color: const Color(0xFF067B96),
        child: const CustomText(
          text: 'Free delivery, on us',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}

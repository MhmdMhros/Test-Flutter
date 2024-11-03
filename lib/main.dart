import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/pages/basket/basket.dart';
import 'package:test_flutter/presentation/pages/layout/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Basket(),
    );
  }
}

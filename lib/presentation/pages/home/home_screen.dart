import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/pages/product/product_details.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';
import 'package:test_flutter/presentation/widgets/explore_dish.dart';
import 'package:test_flutter/presentation/widgets/popular_today.dart';
import 'package:test_flutter/presentation/widgets/quick_browse.dart';
import 'package:test_flutter/presentation/widgets/restaurants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(
                start: 16, top: 8, end: 16, bottom: 24),
            height: 210,
            width: double.infinity,
            color: const Color(
                0x08067B96), // 5% opacity = 0.05 * 255 ≈ 12 => 0C in hexadecimal
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Delivering to',
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
                const CustomText(
                  text: '6th Of October, Giza',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                  text: 'Hey there!',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                const CustomText(
                  text: 'Log in or create an account for a',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                const CustomText(
                  text: 'faster ordering experience.',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 80,
                  height: 32,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color(0xFF067B96),
                    child: const CustomText(
                      text: 'Sign up',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding:
                const EdgeInsetsDirectional.only(start: 16, top: 37, end: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'Explore Dishes',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: ExploreDish(
                            imageUrl: 'assets/images/ramen.png',
                            name: 'Noodles',
                            color: index == 0
                                ? const Color(0x08FF0000)
                                : const Color(0x08067B96),
                          ),
                        );
                      },
                    ),
                  ),
                  const CustomText(
                    text: 'Quick Browse',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: QuickBrowse(
                            imageUrl: 'assets/images/discount.png',
                            name: 'Food Offers',
                            color: index == 0
                                ? const Color(0x08FF0000)
                                : const Color(0x08067B96),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CustomText(
                    text: 'Restaurants you know',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const SizedBox(
                          width: 140,
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                              end: 10,
                            ),
                            child: Restaurants(
                              imageUrl: 'assets/images/pizza.png',
                              name: 'Pizza King',
                              type: 'Pizza, Paste',
                              rate: 4.5,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductDetails()),
                        );
                      },
                      color: const Color(0xFF067B96),
                      child: const CustomText(
                        text: 'Free delivery, on us',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomText(
                    text: 'Popular Today',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const SizedBox(
                          width: 110,
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                              end: 10,
                            ),
                            child: PopularToday(
                              imageUrl: 'assets/images/pizza.png',
                              name: 'Pizza King',
                              time: '36',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

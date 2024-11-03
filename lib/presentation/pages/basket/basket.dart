import 'package:flutter/material.dart';
import 'package:test_flutter/presentation/widgets/custom_basket_product.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';
import 'package:test_flutter/presentation/widgets/like_might.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Basket',
            ),
            CustomText(
              text: 'Pizza King',
              fontSize: 12,
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 15, end: 15, bottom: 20),
              child: SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: 4,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        CustomBasketProduct(),
                        Divider(
                          color: Colors.grey,
                          height: 20,
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                end: 15,
                bottom: 10,
              ),
              child: CustomText(text: 'You might also like...'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 15,
              ),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const SizedBox(
                      width: 90,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(
                          end: 8,
                        ),
                        child: LikeMight(
                            imageUrl: 'assets/images/pizza.png',
                            name: 'Pizza King',
                            price: '5.00'),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 10,
                bottom: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 8,
                color: Colors.grey[200],
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                end: 15,
                bottom: 10,
              ),
              child: CustomText(text: 'Save on your order'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 15,
                end: 15,
                bottom: 10,
              ),
              child: MaterialButton(
                height: 40,
                onPressed: () {},
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.contact_mail_sharp),
                        SizedBox(width: 12),
                        Text(
                          'Enter voucher code',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 140),
                        CustomText(
                          text: 'Submit',
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 5,
                bottom: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 8,
                color: Colors.grey[200],
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                start: 15,
                end: 15,
                bottom: 10,
              ),
              child: CustomText(text: 'Payment Summary'),
            ),
            const Padding(
              padding:
                  EdgeInsetsDirectional.only(start: 15, end: 15, bottom: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Subtotal',
                        fontSize: 12,
                      ),
                      CustomText(
                        text: 'EGP 146.00',
                        fontSize: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Free Delivery',
                        fontSize: 12,
                      ),
                      CustomText(
                        text: 'EGP 15.00',
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Service In',
                        fontSize: 12,
                      ),
                      CustomText(
                        text: 'EGP 7.30',
                        fontSize: 12,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'Total Amount',
                        fontSize: 15,
                      ),
                      CustomText(
                        text: 'EGP 153.30',
                        fontSize: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 5,
              ),
              child: Container(
                width: double.infinity,
                height: 3,
                color: Colors.black26,
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 15,
                      top: 15,
                      bottom: 15,
                    ),
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: MaterialButton(
                        height: 40,
                        onPressed: () {},
                        child: const CustomText(
                          text: 'Add Items',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: MaterialButton(
                        color: const Color(0xFF067B96),
                        onPressed: () {},
                        child: const CustomText(
                          text: 'Checkout',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

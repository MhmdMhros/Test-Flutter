import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/presentation/pages/product/cubit/product_cubit.dart';
import 'package:test_flutter/presentation/pages/product/cubit/product_state.dart';
import 'package:test_flutter/presentation/widgets/custom_products.dart';
import 'package:test_flutter/presentation/widgets/custom_text.dart';
import 'package:test_flutter/presentation/widgets/selectable_text.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
        var cubit = ProductCubit.get(context);
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/pizza.png',
                    width: double.infinity,
                    height: 210,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 15, top: 60, end: 15, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.black,
                              ),
                              SizedBox(width: 20),
                              BuildSelectableText(
                                text: 'Appetizers',
                                index: 0,
                              ),
                              SizedBox(width: 25),
                              BuildSelectableText(
                                text: 'Cheese Manakish',
                                index: 1,
                              ),
                              SizedBox(width: 25),
                              BuildSelectableText(
                                text: 'Pizza',
                                index: 2,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CustomProducts(name: 'Appetizers'),
                                  const SizedBox(height: 10),
                                  Divider(
                                      color: Colors.grey[200], thickness: 7),
                                  const CustomProducts(name: 'Cheese Manakish'),
                                  const SizedBox(height: 10),
                                  Divider(
                                      color: Colors.grey[200], thickness: 7),
                                  const CustomProducts(name: 'Pizza'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  !cubit.isBuy
                      ? Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 15, end: 15, top: 0, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const CustomText(
                                text: 'Add EGP 20.00 to start your order',
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              MaterialButton(
                                height: 45,
                                onPressed: () {},
                                color: const Color(0x80067B96),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            color: const Color(0x0DFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Center(
                                            child: CustomText(
                                              text: '0',
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        const Text(
                                          'View basket',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                      : Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 15, end: 15, top: 0, bottom: 10),
                          child: MaterialButton(
                            height: 45,
                            onPressed: () {},
                            color: const Color(0xFF067B96),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: const Color(0x0DFFFFFF),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Center(
                                        child: CustomText(
                                          text: '1',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      'View basket',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'EGP 22.00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
              Positioned(
                bottom: 620,
                left: 20,
                right: 20,
                top: 130,
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/pizza.png', // Replace with your image asset
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Pizza King',
                                  color: Colors.black,
                                ),
                                CustomText(
                                  text: 'Pizza, Paste',
                                  color: Colors.black,
                                  fontSize: 7,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: '⭐ 4.5',
                                      color: Colors.black,
                                      fontSize: 10,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    CustomText(
                                      text: '(100+)',
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 30, end: 0, top: 25, bottom: 0),
                          child: Row(
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    'Delivery In',
                                    style: TextStyle(
                                        fontSize: 10), // Adjust style as needed
                                  ),
                                  Text(
                                    'Free',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight
                                            .w600), // Adjust style as needed
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                height: 30, // Height of the vertical line
                                width: 1, // Width of the line
                                color: Colors.grey[300], // Color of the line
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'Delivery In',
                                    style: TextStyle(
                                        fontSize: 10), // Adjust style as needed
                                  ),
                                  Text(
                                    '38 mins',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight
                                            .w600), // Adjust style as needed
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                height: 30,
                                width: 1,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    'Delivery In',
                                    style: TextStyle(
                                        fontSize: 10), // Adjust style as needed
                                  ),
                                  Text(
                                    'Free',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight
                                            .w600), // Adjust style as needed
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 18, top: 10),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor:
                      Colors.white, // Optional: Set the background color
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 15, // Adjust the size if needed
                      color:
                          Colors.black, // Optional: Set the color of the icon
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 18, // Position the icon on the right
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 15, // Adjust the icon size as needed
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

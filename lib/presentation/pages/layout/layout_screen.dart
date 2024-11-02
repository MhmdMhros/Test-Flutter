import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/presentation/bloc/cubit.dart';
import 'package:test_flutter/presentation/bloc/state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: BlocBuilder<MainCubit, MainStates>(builder: (context, state) {
        var cubit = MainCubit.get(context);

        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 10.0,
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color.fromARGB(255, 3, 92, 164),
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeNavigationBar(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/search.png"),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/orders.png"),
                ),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/account.png"),
                ),
                label: 'Account',
              ),
            ],
          ),
        );
      }),
    );
  }
}

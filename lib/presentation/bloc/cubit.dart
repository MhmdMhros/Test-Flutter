import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/presentation/bloc/state.dart';
import 'package:test_flutter/presentation/pages/account/account_screen.dart';
import 'package:test_flutter/presentation/pages/home/home_screen.dart';
import 'package:test_flutter/presentation/pages/orders/orders_screen.dart';
import 'package:test_flutter/presentation/pages/search/search_screen.dart';

class MainCubit extends Cubit<MainStates> {
  MainCubit() : super(MainInitialState());
  static MainCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const OrdersScreen(),
    const AccountScreen()
  ];
  changeNavigationBar(int index) {
    currentIndex = index;
    emit(MainButtomNavBarState());
  }
}

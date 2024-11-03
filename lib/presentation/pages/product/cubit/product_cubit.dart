import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/presentation/pages/product/cubit/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitialState());
  static ProductCubit get(context) => BlocProvider.of(context);
  bool isBuy = false;

  toggleBuy() {
    isBuy = !isBuy;
    emit(ProductToggleBuyState());
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glassman_shop_app/features/domain/use_cases/get_products_use_case.dart';

import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProductsUseCase getProductsUseCase;

  ProductCubit({
    required this.getProductsUseCase,
  }) : super(ProductInitial());

  Future<void> products() async {
    emit(ProductInitial());
    try {
      getProductsUseCase
          .call()
          .then((value) => emit(ProductLoaded(products: value)));
    } catch (e) {
      emit(ProductFailure());
    }
  }
}

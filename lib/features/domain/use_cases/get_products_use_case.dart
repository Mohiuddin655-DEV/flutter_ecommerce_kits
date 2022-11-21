import 'package:flutter_glassman_shop_app/features/domain/entities/product_entity.dart';
import 'package:flutter_glassman_shop_app/features/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository repository;

  GetProductsUseCase({
    required this.repository,
  });

  Future<List<ProductEntity>> call() async {
    return repository.getProducts();
  }
}

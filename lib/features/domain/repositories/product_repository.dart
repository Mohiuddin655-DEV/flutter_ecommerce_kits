import 'package:flutter_glassman_shop_app/features/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}

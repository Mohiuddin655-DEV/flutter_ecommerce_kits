import 'package:flutter_glassman_shop_app/features/domain/entities/product_entity.dart';

abstract class ProductDataSource {
  Future<List<ProductEntity>> getProducts();
}

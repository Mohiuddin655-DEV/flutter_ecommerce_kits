import 'package:flutter_glassman_shop_app/features/data/local/data_sources/product_data_source.dart';
import 'package:flutter_glassman_shop_app/features/domain/entities/product_entity.dart';
import 'package:flutter_glassman_shop_app/features/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource source;

  ProductRepositoryImpl({required this.source});

  @override
  Future<List<ProductEntity>> getProducts() async => source.getProducts();
}

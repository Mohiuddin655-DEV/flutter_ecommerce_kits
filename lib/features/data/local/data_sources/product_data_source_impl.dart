import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/data/local/data_sources/product_data_source.dart';
import 'package:flutter_glassman_shop_app/features/data/local/models/product_model.dart';

class ProductDataSourceImpl extends ProductDataSource {
  @override
  Future<List<ProductModel>> getProducts() async {
    const localData = KLevels.productsJson;
    final list = localData.map((e) => ProductModel.fromJson(e)).toList();
    return list;
  }
}

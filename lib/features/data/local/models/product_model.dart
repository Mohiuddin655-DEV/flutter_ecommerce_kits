import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    final int? discount,
    final bool? isStock,
    final String? name,
    final String? photo,
    final double? price,
    final double? rating,
    final String? type,
  }) : super(
          discount: discount ?? 0,
          isStock: isStock ?? false,
          name: name ?? "",
          photo: photo ?? "",
          price: price ?? 0,
          rating: rating ?? 0,
          type: type ?? "",
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    final discount = json["discount"];
    final isStock = json["isStock"];
    final name = json["name"];
    final photo = json["photo"];
    final price = json["price"];
    final rating = json["rating"] * 1.0;
    final type = json["type"];
    return ProductModel(
        discount: discount,
        isStock: isStock,
        name: name,
        photo: photo,
        price: price,
        rating: rating,
        type: type);
  }

  Map<String, dynamic> toJson() {
    return {
      "discount": discount,
      "isStock": isStock,
      "name": name,
      "photo": photo,
      "price": price,
      "rating": rating,
      "type": type,
    };
  }

  static List<ProductModel> products() {
    final list =
        KLevels.productsJson.map((e) => ProductModel.fromJson(e)).toList();
    return list;
  }
}

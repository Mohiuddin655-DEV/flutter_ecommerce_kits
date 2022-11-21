import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int discount;
  final bool isStock;
  final String name;
  final String photo;
  final double price;
  final double rating;
  final String type;

  const ProductEntity({
    required this.discount,
    required this.isStock,
    required this.name,
    required this.photo,
    required this.price,
    required this.rating,
    required this.type,
  });

  @override
  List<Object?> get props => [
        discount,
        isStock,
        name,
        photo,
        price,
        rating,
        type,
      ];
}

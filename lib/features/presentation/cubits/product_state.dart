import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  const ProductState();
}

class ProductInitial extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoading extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductLoaded extends ProductState {
  final List<dynamic> products;

  const ProductLoaded({
    required this.products,
  });

  @override
  List<Object> get props => [];
}

class ProductFailure extends ProductState {
  @override
  List<Object> get props => [];
}

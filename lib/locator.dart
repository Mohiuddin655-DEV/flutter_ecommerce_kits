import 'package:flutter_glassman_shop_app/features/data/local/data_sources/product_data_source.dart';
import 'package:flutter_glassman_shop_app/features/data/local/data_sources/product_data_source_impl.dart';
import 'package:flutter_glassman_shop_app/features/data/repositories/product_repository_impl.dart';
import 'package:flutter_glassman_shop_app/features/domain/repositories/product_repository.dart';
import 'package:flutter_glassman_shop_app/features/domain/use_cases/get_products_use_case.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // Initial Values
  final sourceImpl = ProductDataSourceImpl();

  // Data Sources
  locator.registerLazySingleton<ProductDataSource>(() => sourceImpl);

  // Repositories
  locator.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(source: locator()));

  // Use Cases
  locator.registerLazySingleton<GetProductsUseCase>(
      () => GetProductsUseCase(repository: locator()));

  // Cubits
  locator.registerFactory<ProductCubit>(
      () => ProductCubit(getProductsUseCase: locator()));
}

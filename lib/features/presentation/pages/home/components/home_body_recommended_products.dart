import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_cubit.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_state.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_recommended_item.dart';
import 'package:flutter_glassman_shop_app/features/presentation/widgets/initial_loading_widget.dart';

class HomeBodyRecommendedProducts extends StatelessWidget {
  const HomeBodyRecommendedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoaded) {
          final items = state.products;
          if (items.isNotEmpty) {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final item = items[index];
                return HomeBodyRecommendedProductItem(item: item);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: KSize.defaultMargin);
              },
              itemCount: items.length,
            );
          } else {
            return const InitialLoadingView();
          }
        } else {
          return const InitialLoadingView();
        }
      },
    );
  }
}

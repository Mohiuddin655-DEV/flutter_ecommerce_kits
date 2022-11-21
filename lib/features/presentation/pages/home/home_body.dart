import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_cubit.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_category_section.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_header_products.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_recommended_products.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_search_box.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_tabs.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_title.dart';
import 'package:flutter_glassman_shop_app/locator.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ProductCubit>(
              create: (context) => locator()..products()),
        ],
        child: SizedBox(
          //height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _homeBodyHeaderSection(),
              _homeBodySection(),
            ],
          ),
        ),
      ),
    );
  }
}

_homeBodyHeaderSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      HomeBodyTitle(),
      SizedBox(height: 25),
      HomeBodySearchBox(),
    ],
  );
}

_homeBodySection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      SizedBox(height: 24),
      HomeBodyTabs(),
      SizedBox(height: 30),
      HomeBodyHeaderProducts(),
      SizedBox(height: 16),
      HomeBodyProductCategorySection(category: KLevels.suggestedForYouText),
      SizedBox(height: 24),
      HomeBodyHeaderProducts(),
      SizedBox(height: 16),
      HomeBodyProductCategorySection(category: KLevels.recommendedForYouText),
      SizedBox(height: 24),
      HomeBodyRecommendedProducts(),
      SizedBox(height: 25),
    ],
  );
}

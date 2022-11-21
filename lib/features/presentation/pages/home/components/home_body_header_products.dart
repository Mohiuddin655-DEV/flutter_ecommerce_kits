import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_cubit.dart';
import 'package:flutter_glassman_shop_app/features/presentation/cubits/product_state.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_header_item.dart';

class HomeBodyHeaderProducts extends StatelessWidget {
  const HomeBodyHeaderProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoaded) {
          final items = state.products;
          return SizedBox(
            width: double.infinity,
            height: 250,
            child: ListView.separated(
              padding:
                  const EdgeInsets.symmetric(horizontal: KSize.defaultPadding),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];
                return HomeBodyHeaderItem(item: item);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 12);
              },
            ),
          );
        } else {
          return const PlaceholderList();
        }
      },
    );
  }
}

class PlaceholderList extends StatelessWidget {
  const PlaceholderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 190,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: KSize.defaultPadding),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const PlaceholderItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
      ),
    );
  }
}

class PlaceholderItem extends StatelessWidget {
  const PlaceholderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 130,
            padding: const EdgeInsets.all(16),
            height: 170,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  KColors.primary.withOpacity(0.025),
                  KColors.primary.withOpacity(0.05),
                ],
              ),
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    color: KColors.primary.withOpacity(0.25),
                    strokeWidth: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

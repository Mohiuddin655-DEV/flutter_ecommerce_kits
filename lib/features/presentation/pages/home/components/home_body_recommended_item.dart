import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/core/utils.dart';
import 'package:flutter_glassman_shop_app/features/data/local/models/product_model.dart';
import 'package:star_rating/star_rating.dart';

class HomeBodyRecommendedProductItem extends StatelessWidget {
  final ProductModel item;

  const HomeBodyRecommendedProductItem({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: KSize.defaultMargin),
      padding: const EdgeInsets.all(KSize.defaultPadding * 0.5),
      decoration: BoxDecoration(
        border: Border.all(
          color: KColors.itemBackgroundColor,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 100,
              height: 100,
              foregroundDecoration: BoxDecoration(
                color: KColors.primary.withOpacity(0.15),
              ),
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                  item.photo,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: KSize.defaultPadding),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StarRating(
                  length: 5,
                  rating: item.rating,
                  starSize: 16,
                  color: KColors.ratingColor,
                  between: 2,
                ),
                const SizedBox(height: 3),
                Text(
                  item.name,
                  style: const TextStyle(
                    color: KColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  item.type,
                  style: TextStyle(
                    color: KColors.primary.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "\$${Utils.toDiscountablePrice(item.price, item.discount).toStringAsFixed(2)}",
                  style: TextStyle(
                    color: KColors.primary.withOpacity(0.75),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

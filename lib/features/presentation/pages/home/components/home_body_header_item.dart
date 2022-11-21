import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/data/local/models/product_model.dart';

class HomeBodyHeaderItem extends StatelessWidget {
  final ProductModel item;

  const HomeBodyHeaderItem({Key? key, required this.item}) : super(key: key);

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
            child: Image.network(
              item.photo,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          item.name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            color: KColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "\$${item.price}",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            color: KColors.primary.withOpacity(0.5),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

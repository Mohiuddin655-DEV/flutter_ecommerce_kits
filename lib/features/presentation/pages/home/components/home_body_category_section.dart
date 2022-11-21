import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

class HomeBodyProductCategorySection extends StatelessWidget {
  final String category;

  const HomeBodyProductCategorySection({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: KSize.defaultPadding,
      ),
      child: Text(
        category,
        style: const TextStyle(
          color: KColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

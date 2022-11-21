import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

class HomeBodySearchBox extends StatelessWidget {
  const HomeBodySearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: KSize.defaultMargin),
      padding: const EdgeInsets.symmetric(horizontal: KSize.defaultPadding),
      decoration: BoxDecoration(
        color: KColors.searchBoxColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: KLevels.searchText,
            hintStyle: TextStyle(
              color: KColors.primary.withOpacity(0.35),
              fontSize: 18,
            ),
            focusColor: KColors.primary,
            border: InputBorder.none,
            icon: const Icon(
              Icons.search_rounded,
              size: 24,
              color: KColors.iconColor,
            )),
      ),
    );
  }
}

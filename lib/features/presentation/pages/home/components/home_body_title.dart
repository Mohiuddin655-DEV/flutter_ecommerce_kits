import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

class HomeBodyTitle extends StatelessWidget {
  const HomeBodyTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: KSize.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            KLevels.homeScreenTitleText1,
            style: TextStyle(
              color: KColors.primary,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            KLevels.homeScreenTitleText2,
            style: TextStyle(
              color: KColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}

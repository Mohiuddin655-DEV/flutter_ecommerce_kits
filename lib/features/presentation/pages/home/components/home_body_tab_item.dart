import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

class HomeBodyTabItem extends StatelessWidget {
  final bool isSelected;
  final String level;
  final Function() press;

  const HomeBodyTabItem({
    Key? key,
    required this.isSelected,
    required this.level,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? KColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: KSize.defaultPadding * 1.2,
            vertical: 12,
          ),
          child: Text(
            level,
            style: TextStyle(
              color: isSelected
                  ? KColors.tabSelectedTextColor
                  : KColors.tabUnselectedTextColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
              fontSize: isSelected ? 16 : 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ),
    leading: Icon(
      Icons.menu,
      color: KColors.iconColor.withOpacity(0.60),
      size: 24,
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Icon(Icons.shopping_cart_outlined),
      ),
    ],
    actionsIconTheme: IconThemeData(
      color: KColors.iconColor.withOpacity(0.60),
      size: 24,
    ),
  );
}

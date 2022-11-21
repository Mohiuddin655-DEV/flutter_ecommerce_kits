import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_app_bar.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }
}

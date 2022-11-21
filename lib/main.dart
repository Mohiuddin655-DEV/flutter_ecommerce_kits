import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/home_page.dart';
import 'package:flutter_glassman_shop_app/locator.dart';

Future<void> main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glassman',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

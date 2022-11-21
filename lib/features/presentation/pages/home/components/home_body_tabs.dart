import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';
import 'package:flutter_glassman_shop_app/features/presentation/pages/home/components/home_body_tab_item.dart';

class HomeBodyTabs extends StatefulWidget {
  const HomeBodyTabs({Key? key}) : super(key: key);

  @override
  State<HomeBodyTabs> createState() => _HomeBodyTabsState();
}

class _HomeBodyTabsState extends State<HomeBodyTabs> {
  var currentIndex = 0;

  final tabs = [
    KLevels.popularText,
    KLevels.stemwareText,
    KLevels.barwareText,
    KLevels.everywareText
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: KSize.defaultPadding),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return HomeBodyTabItem(
            isSelected: index == currentIndex,
            level: tabs[index],
            press: () {
              if (currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
          );
        },
        itemCount: tabs.length,
      ),
    );
  }
}

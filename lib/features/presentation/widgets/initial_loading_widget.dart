import 'package:flutter/material.dart';
import 'package:flutter_glassman_shop_app/constants.dart';

class InitialLoadingView extends StatelessWidget {
  const InitialLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: KSize.defaultPadding,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: KColors.primary.withOpacity(0.5),
            strokeWidth: 3,
          ),
          const SizedBox(height: 24),
          Text(
            "Loading...",
            style: TextStyle(
              color: KColors.primary.withOpacity(0.5),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

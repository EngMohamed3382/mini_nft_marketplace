
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_on_boarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_title_on_boarding_page.dart';

class CustomComponentsOnBoardingPage extends StatelessWidget {
  const CustomComponentsOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: HeightValue.h70,
          ),
          const CustomTitleOnBoardingPage(),
          const Spacer(),
          CustomCardOnBoardingPage(),
          const SizedBox(
            height: HeightValue.h70,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_components_on_Boarding_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/image.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
             const ImagesWidgets(),
          CustomComponentsOnBoardingPage(),

        ],

      ),
    ));
  }
}

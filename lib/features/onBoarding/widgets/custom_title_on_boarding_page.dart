import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
    StringsManager.titleOnBoardingPage,
    textAlign: TextAlign.start,
    style: TextStyle(
        color: Colors.white,
        fontSize: FontSize.f36_04,
        fontFamily: "SF Pro Display",
        fontWeight: FontWeight.bold),
    );
  }
}

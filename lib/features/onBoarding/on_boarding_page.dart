import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image(
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            image: AssetImage(AssetImageManager.onBoardingBackGroundImage),
          ),
          SizedBox(
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  StringsManager.titleOnBoardingPage,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSize.f36_04,
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  StringsManager.titleOnBoardingPage,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSize.f36_04,
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

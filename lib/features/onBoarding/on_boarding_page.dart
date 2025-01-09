import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.64, -0.76),
                end: Alignment(-0.64, 0.76),
                colors: [
              ColorManager.kColorPanafseg,
              ColorManager.kColorPanafsegLight,
            ])),
        child: const Column(
          children: [
            Text(
              StringsManager.titleOnBoardingPage,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: "SF Pro Display",
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )),
    );
  }
}

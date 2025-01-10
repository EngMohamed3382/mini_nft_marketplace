import 'dart:ui';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Text(
                  StringsManager.titleOnBoardingPage,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSize.f36_04,
                      fontFamily: "SF Pro Display",
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ClipRRect(
                  // ignore: sort_child_properties_last
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(

                      alignment: Alignment.center,
                      padding: EdgeInsets.all(25),
                      child: Column(
                        children: [
                          Text(
                            'Explore and Mint NTFS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 19.82,
                                fontFamily: FontManagers.sfProDisplayFont,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            'You can buy and sell the NFTs of the best artists in the world.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[350],
                            ),
                          ),
                          SizedBox(height: 6,),
                          Container(
                            width: 198.2,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.white),
                          ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text('Get started now'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      height: 191,
                      width: 306,
                      color: ColorManager.kColorWhite.withOpacity(0.1),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

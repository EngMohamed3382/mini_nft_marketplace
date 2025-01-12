import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        // ignore: sort_child_properties_last
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Image(
                  image:
                  AssetImage(AssetImageManager.trendingHomePage1),
                  height: 139,
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text('3D Art'),
                    SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        ),
                        Text(
                          '200',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily:
                              FontManagers.sfProDisplayFont),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            color: ColorManager.kColorWhite.withOpacity(0.1),
          ),
        ),
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }
}

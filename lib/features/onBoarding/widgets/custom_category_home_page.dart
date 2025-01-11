import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(27.03),
          child:  Image(
            image: AssetImage(image),
            height: 167.57,
            width: 252.26,
          )),
      Positioned(
        bottom: -8,
        left: 13,
        child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(27.03),
              bottomRight: Radius.circular(27.03),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff000000).withOpacity(0.2),
                          Color(0xff000000),
                        ]),
                  ),
                  height: 54.06,
                  width: 225.26,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 19.82,
                        fontFamily: FontManagers.sfProDisplayFont,
                        fontWeight: FontWeight.bold),
                  )),
            )),
      ),
    ]);
  }
}

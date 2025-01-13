import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            // ignore: sort_child_properties_last
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40, left: 10),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55, bottom: 40),
                      child: Icon(
                        Icons.stacked_bar_chart,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                    Container(
                      width: 39,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85, bottom: 40),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, bottom: 40),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 39,
                      ),
                    ),
                  ],
                ),
                height: 110,
                alignment: Alignment.center,
                padding: EdgeInsets.all(9),
                color: ColorManager.kColorWhite.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              child: Icon(
                CupertinoIcons.plus,
                color: Colors.white,
              ),
              decoration: ShapeDecoration(
                shape: StarBorder.polygon(sides: 6, pointRounding: 0.4),
                color: Color(0xffD7CDCDFF),
              ),
              height: 70,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}

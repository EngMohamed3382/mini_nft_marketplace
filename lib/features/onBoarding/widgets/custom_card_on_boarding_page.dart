import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/route_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';

class CustomCardOnBoardingPage extends StatelessWidget {
  const CustomCardOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // ignore: sort_child_properties_last
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
        child: Container(

          alignment: Alignment.center,
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                StringsManager.titleCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 19.82,
                    fontFamily: FontManagers.sfProDisplayFont,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4,),
              Text(
                StringsManager.descriptionCardOnBoardingPage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[350],
                ),
              ),
              SizedBox(height: HeightValue.h6,),
              Container(
                width: 198.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteName.kHomePage);
                      },
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
    );
  }
}

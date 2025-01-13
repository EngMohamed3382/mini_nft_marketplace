import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/home/homep.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_top_seller.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_widget.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_subtitle.dart';
import 'package:mini_nft_marketplace/features/state/screen/state_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> w = [Homep(), StatePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'NFT Marketplace',
          style: TextStyle(
            fontSize: 25.23,
            fontFamily: FontManagers.sfProDisplayFont,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: w[index],
      backgroundColor: Color(0xff211134),
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedHome: (){
          index = 0;
          setState(() {

          });
        },

        onPressedState: () {
        index = 1;
        setState(() {

        });
      },),

    );
  }
}

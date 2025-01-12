import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_subtitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          SizedBox(
              height: 167.57,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCategoryHomePage(
                    title: Constants.categoryList[index].title,
                    image: Constants.categoryList[index].image),
                separatorBuilder: (context, index) => SizedBox(
                  width: 6.26,
                ),
                itemCount: 3,
              )),
          SizedBox(
            height: 27,
          ),
            CustomSubtitle(title: StringsManager.trendingCollections ),
          const SizedBox(height: 7,),

          SizedBox(
              height: 167.57,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCategoryHomePage(
                    title: Constants.categoryList[index].title,
                    image: Constants.categoryList[index].image),
                separatorBuilder: (context, index) => SizedBox(
                  width: 6.26,
                ),
                itemCount: 3,
              )),
          SizedBox(
            height: 27,
          ),
          CustomSubtitle(title: StringsManager.trendingCollections ),
        ],
      ),
      backgroundColor: Color(0xff211134),
    );
  }
}

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_top_seller.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_widget.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_subtitle.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ListView(
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
            CustomSubtitle(title: StringsManager.trendingCollections),
            SizedBox(
              height: 194,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardWidget(
                  cardModel: Constants.collectionList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 28.83,
                ),
                itemCount: 3,
              ),
            ),
            SizedBox(
              height: 27.03,
            ),
            CustomSubtitle(title: StringsManager.topSeller),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: 236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                  topSellerModel: Constants.topSellerModelList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 28.83,
                ),
                itemCount: Constants.topSellerModelList.length,
              ),
            ),
            SizedBox(
              height: 27.03,
            ),
            CustomSubtitle(title: 'Hot New Items'),
            SizedBox(height: 7,),
            SizedBox(
              height: 236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomCardTopSeller(
                  topSellerModel: Constants.topSellerModelList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 28.83,
                ),
                itemCount: Constants.topSellerModelList.length,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff211134),
      bottomNavigationBar: CustomBottomNavigationBar(),

    );
  }
}

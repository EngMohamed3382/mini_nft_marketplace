import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
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
          ],
        ),
      ),
      backgroundColor: Color(0xff211134),
      bottomNavigationBar: SizedBox(
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
      ),
    );
  }
}

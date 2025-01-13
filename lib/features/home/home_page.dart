import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_widget.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_subtitle.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

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
            UnconstrainedBox(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                // ignore: sort_child_properties_last
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
                  child: Container(
                    height: 236,
                    width: 157,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(AssetImageManager.topSeller1),
                          height: 139,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          'Abstract Pink',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              fontFamily: FontManagers.sfProDisplayFont),
                        ),
                        Text(
                          'abstract #234',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              fontFamily: FontManagers.sfProDisplayFont),
                        ),
                        SizedBox(height: 9,),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.alarm,
                              color: Colors.grey,
                            ),
                            Text('0.986', style: TextStyle(color: Colors.white),),
                            SizedBox(
                              width: 25,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.grey,
                                ),
                                Text('200', style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: ColorManager.kColorWhite.withOpacity(0.1),
                  ),
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff211134),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/constants.dart';

import 'package:mini_nft_marketplace/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_top_seller.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_card_widget.dart';import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_subtitle.dart';

class Homep extends StatelessWidget {
  const Homep({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

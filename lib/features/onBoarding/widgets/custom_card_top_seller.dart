import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/top_seller_model.dart';

class CustomCardTopSeller extends StatelessWidget {
  const CustomCardTopSeller({super.key, required this.topSellerModel});
  final TopSellerModel topSellerModel;
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
            height: 236,
            width: 157,
            alignment: Alignment.center,
            padding: EdgeInsets.all(9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(topSellerModel.image),
                    height: 139,
                  ),
                ),
               const SizedBox(
                  height: 9,
                ),
                Text(
                  topSellerModel.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      fontFamily: FontManagers.sfProDisplayFont),
                ),
                Text(
                  topSellerModel.subTitle,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      fontFamily: FontManagers.sfProDisplayFont),
                ),
                const SizedBox(height: 9,),
                Row(
                  children: [
                   const Icon(
                      CupertinoIcons.alarm,
                      color: Colors.grey,
                    ),
                    Text('${topSellerModel.count1}', style: TextStyle(color: Colors.white),),
                    SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: topSellerModel.activeLike?Colors.red:Colors.grey,
                        ),
                        Text('${topSellerModel.count2}', style: TextStyle(color: Colors.white),),
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
    );
  }
}

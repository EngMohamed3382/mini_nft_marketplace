import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/models/collections_model.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({super.key, required this.cardModel});
 final CollectionsModel cardModel;
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
            alignment: Alignment.center,
            padding: EdgeInsets.all(9),
            child: Column(
              children: [
                Image(
                  image:
                  AssetImage(cardModel.image),
                  height: 139,
                ),
              const  SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(cardModel.title),
                  const  SizedBox(
                      width: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill,
                          color: cardModel.activeLike? Colors.red:Colors.grey
                        ),
                        Text(
                          cardModel.countLike,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily:
                              FontManagers.sfProDisplayFont),
                        ),
                      ],
                    )
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

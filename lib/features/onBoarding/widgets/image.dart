import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';



class ImagesWidgets extends StatelessWidget {
  const ImagesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(AssetImageManager.onBoardingBackGroundImage),
    );
  }
}

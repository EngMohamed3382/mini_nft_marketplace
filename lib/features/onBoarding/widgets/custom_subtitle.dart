import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: FontManagers.sfProDisplayFont),
        ),
      ),
      alignment: AlignmentDirectional.centerStart,
    );
  }
}

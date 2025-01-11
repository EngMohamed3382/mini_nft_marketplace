import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_category_home_page.dart';

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
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomCategoryHomePage(title: 'Art', image:'asstes/images/1.jpg' ),
                  CustomCategoryHomePage(title: 'Art', image:'asstes/images/2.jpg' ),
                  CustomCategoryHomePage(title: 'Art', image:'asstes/images/3.jpg' )
                ],
              ),
            ),

        ],
      ),
      backgroundColor: Color(0xff211134),
    );
  }
}

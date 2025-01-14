import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
import 'package:mini_nft_marketplace/features/home/homep.dart';
import 'package:mini_nft_marketplace/features/onBoarding/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace/features/state/screen/state_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> w = [Homep(), StatePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: index == 0? AppBar(
        centerTitle: true,
        title:  Text(
          'NFT Marketplace',
          style: TextStyle(
            fontSize: 25.23,
            fontFamily: FontManagers.sfProDisplayFont,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ): index == 1? AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.more_horiz_outlined),
          )
        ],
        centerTitle: true,
        title:  Text(
          'State',
          style: TextStyle(
            fontSize: 25.23,
            fontFamily: FontManagers.sfProDisplayFont,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
      ): AppBar(title: Text('Null'),),
      body: w[index],
      backgroundColor: Color(0xff211134),
      bottomNavigationBar: CustomBottomNavigationBar(
        onPressedHome: (){
          index = 0;
          setState(() {

          });
        },

        onPressedState: () {
        index = 1;
        setState(() {

        });
      },),

    );
  }
}

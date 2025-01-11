import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            const Text('NFT Marketplace',
            style: TextStyle(fontSize: 25.23,
            fontFamily: FontManagers.sfProDisplayFont,
              color: Colors.white,
            ),
            ),
          ],
        ),
      ) ),
      backgroundColor: Color(0xff211134),
    );
  }
}

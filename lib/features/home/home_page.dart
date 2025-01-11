import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';

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
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(27.03),
                child: const Image(
                  image: AssetImage('asstes/images/1.jpg'),
                  height: 167.57,
                  width: 252.26,
                )),
            Positioned(bottom: -8,
                    left: 13,
              child: ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27.03),
                bottomRight: Radius.circular(27.03),
                ),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[ Color(0xff000000).withOpacity(0.2),
                        Color(0xff000000),]
                
                    ),
                  ),
                    height: 54.06,
                    width: 225.26,
                
                    child: Text('Art',style: TextStyle(fontSize: 19.82, fontFamily: FontManagers.sfProDisplayFont, fontWeight: FontWeight.bold),)),
              ),
            )
            ]
          ),
        ],
      ),
      backgroundColor: Color(0xff211134),
    );
  }
}

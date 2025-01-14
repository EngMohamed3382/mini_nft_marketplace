import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';


class ActiveSubTitleStatePage extends StatelessWidget {
  const ActiveSubTitleStatePage({super.key, required this.active, required this.title, required this.iconData});

  final bool  active;
  final String title;
  final  IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconData,
                color: Colors.grey,
              ),
              Text(
                'Ranking',
                style: TextStyle(
                    color: active? Colors.white:Colors.grey,
                    fontFamily: FontManagers.sfProDisplayFont,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 20),
         if (active)  Container(
            decoration:
            BoxDecoration(color: Colors.purple, boxShadow: [
              BoxShadow(
                blurRadius: 16,
                offset: Offset(5, -5),
                color: Colors.purple,
                spreadRadius: 1,
              ),
            ]),
            width: 106,
            height: 3.6,
          ),
        ],
      ),
    );
  }
}

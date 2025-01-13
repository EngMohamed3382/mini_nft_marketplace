import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    color: Colors.grey,
                  ),
                  Text(
                    'Ranking',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: FontManagers.sfProDisplayFont,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.stacked_line_chart,
                    color: Colors.grey,
                  ),
                  Text(
                    'Activity',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: FontManagers.sfProDisplayFont,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}

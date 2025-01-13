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

          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
                width: 0.7,
                color: Color(0xFF97A9F6)))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                child: Column(
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
                    SizedBox(height: 20),
                    Container(color: Colors.purple, width: 106, height: 3.6,)
                  ],
                ),
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

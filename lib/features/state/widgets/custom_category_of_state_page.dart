import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';


class CustomCategoryOfStatePage extends StatelessWidget {
  const CustomCategoryOfStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          Text(
            'All Category',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: FontManagers.sfProDisplayFont),
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      height: 39,
      width: 147,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purpleAccent),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_category_of_state_page.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_sub_title.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 27,
        ),
        CustomSubTitleStatePage(),
        SizedBox(
          height: 27,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCategoryOfStatePage(
              title: 'All Category',
              iconData: Icons.menu,
            ),
            SizedBox(
              width: 20,
            ),
            CustomCategoryOfStatePage(
              title: 'All Chains',
              iconData: Icons.link,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('1'),
              ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(AssetImageManager.topSeller1),
                  width: 39,
                  height: 39,
                ),
              ),
              Container(
                width: 115,
                height: 39,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Azumi',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Azumi',
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.link,
                        size: 15,
                      ),
                      Text(
                        '285475.02',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text('3.99%',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

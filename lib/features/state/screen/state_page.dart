import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_category_of_state_page.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_sub_title.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_table_row_state_page.dart';

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
        CustomTableRowStatePage(order: 1, image: AssetImageManager.topSeller2, name: 'name', subName: 'subName', count1: 'count1', percent1: 'percent1')


      ],
    );
  }
}

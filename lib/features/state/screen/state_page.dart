import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/font_manager.dart';
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
          children: [
            CustomCategoryOfStatePage(),
          ],
        ),
      ],
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/asset_image_manager.dart';
import 'package:mini_nft_marketplace/core/resources/color_manager.dart';
import 'package:mini_nft_marketplace/core/resources/size_manager.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_category_of_state_page.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_sub_title.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_table_row_state_page.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    double listHeight = MediaQuery.of(context).size.height - 250;
    return SingleChildScrollView(
      child: Column(
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: ClipRRect(
              // ignore: sort_child_properties_last
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: BlurValue.b10, sigmaY: BlurValue.b10),
                child: Container(
                  color: Colors.white.withOpacity(0.1),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemBuilder: (context, index) => CustomTableRowStatePage(
                          order: 1,
                          image: AssetImageManager.topSeller2,
                          name: 'name',
                          subName: 'subName',
                          count1: 'count1',
                          percent1: 'percent1'),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 9,
                          ),
                      itemCount: 20),
                ),
              ),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ],
      ),
    );
  }
}

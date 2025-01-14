import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/state/widgets/custom_sub_title.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSubTitleStatePage(),
      ],
    );
  }
}

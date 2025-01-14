import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/features/state/widgets/active_sub_title_state_page.dart';

class CustomSubTitleStatePage extends StatelessWidget {
  const CustomSubTitleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.2, color: Color(0xFF97A9F6)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      ActiveSubTitleStatePage(active: true, title: 'Ranking', iconData:Icons.stacked_bar_chart ,),
     ActiveSubTitleStatePage(active: false, title: 'Activity', iconData:Icons.stacked_line_chart ,),


        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'RecommendedItemCard.dart';


class RecommendedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedItemCard("assets/images/home_icon.png", "Flutter", "Myanmar", 500, (){}),
          RecommendedItemCard("assets/images/home_icon.png", "Flutter", "Myanmar", 500, (){}),
          RecommendedItemCard("assets/images/home_icon.png", "Flutter", "Myanmar", 500, (){})
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'RecommendedItemCard.dart';


class RecommendedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedItemCard("assets/images/image-one.png", "One", "Myanmar", 500, (){}),
          RecommendedItemCard("assets/images/image-two.png", "Two", "Eng", 300, (){}),
          RecommendedItemCard("assets/images/image-three.png", "Three", "Thai", 200, (){})
        ],
      ),
    );
  }
}

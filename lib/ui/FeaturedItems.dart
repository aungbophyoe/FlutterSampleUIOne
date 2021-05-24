import 'package:flutter/material.dart';

import '../constants.dart';
import 'FeaturedCard.dart';

class FeaturedItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedCard("assets/images/feature-three.png",(){}),
          FeaturedCard("assets/images/feature-two.png",(){}),
          FeaturedCard("assets/images/feature-one.png",(){}),
        ],
      ),
    );
  }

  FeaturedItems();
}

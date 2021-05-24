import 'package:flutter/material.dart';

import '../constants.dart';

class FeaturedCard extends StatelessWidget {
  final String image;
  final Function press;


  FeaturedCard(this.image, this.press);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image)
            )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  final String title;


  TitleWithCustomUnderline(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(left: kDefaultPadding/4),
            child: Text(
              this.title,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              )
          )
        ],
      ),
    );
  }
}

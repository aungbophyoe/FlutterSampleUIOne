import 'package:flutter/material.dart';

import 'package:flutter_ui_sample_one/constants.dart';
import 'TitleWithCustomUnderline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function press;


  TitleWithMoreBtn(this.title, this.press);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(title),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.red,
              onPressed: press(),
              child: Text(
                "More",
                style: TextStyle(color: Colors.black),
              )
          )
        ],
      ),
    );
  }
}

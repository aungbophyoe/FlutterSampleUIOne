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
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          TitleWithCustomUnderline(title),
          Spacer(),
          FlatButton(
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

import 'package:flutter/material.dart';
import 'package:flutter_ui_sample_one/constants.dart';
import 'package:flutter_ui_sample_one/ui/HeaderWithSearchBar.dart';

import 'TitleWithMoreBtn.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBar(size),
            TitleWithMoreBtn("Recommended",(){})
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
            Icons.people
        ),
      ),
    );
  }
}

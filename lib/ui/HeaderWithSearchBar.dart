import 'package:flutter/material.dart';

import '../constants.dart';
class HeaderWithSearchBar extends StatelessWidget {
  final Size size;


  HeaderWithSearchBar(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36+kDefaultPadding
            ),
            height: size.height*0.2 - 27,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
                )
            ),
            child: Row(
              children: [
                Text(
                  'Hello Flutter!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Container(
                  child: Image.asset(
                      'assets/images/home_icon.png',
                      fit: BoxFit.fill
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23)
                      )
                    ]
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5)
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(
                          Icons.search
                      )
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}

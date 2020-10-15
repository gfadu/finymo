import 'package:finymo/size_config.dart';
import 'package:flutter/material.dart';
import 'info.dart';

class Body extends StatelessWidget {
  static Orientation orientation;
  static MediaQueryData _mediaQueryData;
  static double defaultSize;
  static double screenWidth;
  static double screenHeight;



  @override
  Widget build(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
    return Column(
      children: <Widget>[
        Info(
            defaultSize: defaultSize,
            image: "images/profile.jpg",
            name: "Shayon Sarkar",
            email: "xyz@gmail.com",
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.bookmark
            )
          ],
        )
      ],
    );
  }
}



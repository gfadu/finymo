import 'package:finymo/size_config.dart';
import 'package:flutter/material.dart';

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
        SizedBox(
          height: defaultSize * 24 ,
          child: Stack(
            children: <Widget>[
              ClipPath(
                child:Container(
                  height: defaultSize*15,
                  color: Color(0x6DEEE5A5BCE4),
                ) ,
              )
            ],
          ),
        )
      ],
    );
  }
}

class CustomShape extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {

    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }}

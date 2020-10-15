import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.defaultSize, this.name, this.email, this.image,
  }) : super(key: key);

  final double defaultSize;
  final String name, email, image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize * 15,
              color: Color(0x6DEEE5A5BCE4),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: defaultSize * 14,
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xA2F5FF7CEFB5),
                        width: defaultSize*0.4,
                      ),
                      image: DecorationImage(
                        image: AssetImage(image),
                      )
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Text(
                  email,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
    // TODO: implement getClip
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

import 'package:finymo/screen/register.dart';
import 'package:finymo/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: SizeConfig.defaultSize * 24,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: SizeConfig.defaultSize * 15,
                  color: Color(0x6DEEE5A5BCE4),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: SizeConfig.defaultSize * 14,
                      width: SizeConfig.defaultSize * 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xA2F5FF7CEFB5),
                            width: SizeConfig.defaultSize * 0.4,
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/profile.jpg'),
                          )),
                    ),
                    Text(
                      'Shayon Sarkar',
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 2.2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize / 2,
                    ),
                    Text(
                      "xyz@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        MenuItems(
          title: "Post",
          iconsrc: "images/bookmark_fill.svg",
          press: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context)=> Register()
              )
            );
          },
        ),
        SizedBox(
          height: SizeConfig.defaultSize * 2,
        ),
        MenuItems(
          title: "Search",
          iconsrc: "images/search.svg",
          press: () {},
        )
      ],
    );
  }
}



class MenuItems extends StatelessWidget {
  const MenuItems({
    Key key, this.title, this.press, this.iconsrc,
  }) : super(key: key);
  final String  iconsrc,title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize*2,
          vertical: SizeConfig.defaultSize*3,
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(iconsrc),
            SizedBox(
              width: SizeConfig.defaultSize * 2,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: SizeConfig.defaultSize * 1.6,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: SizeConfig.defaultSize * 1.6,
            )
          ],
        ),
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


import 'package:finymo/size_config.dart';
import 'package:flutter/material.dart';
import 'info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Info(
        image: "images/profile.jpg",
        name: "Shayon Sarkar",
        email: "xyz@gmail.com",
      ),
      InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.bookmark,
              ),
              SizedBox(width: 20,
              ),
              Text(
                "Post",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.white,
              )
            ],
          ),
        ),
      )
    ]
    );
  }
}



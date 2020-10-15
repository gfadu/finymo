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
    ]
    );
  }
}



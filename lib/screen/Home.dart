import 'package:finymo/components/body.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      backgroundColor: Color(0xA2F5FF7CEFB5),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0x6DEEE5A5BCE4),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
        )
      ],
    );
  }
}

import 'package:finymo/components/body.dart';
import 'package:finymo/size_config.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      backgroundColor: Color(0xA2F5FF7CEFB5),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0x6DEEE5A5BCE4),
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      elevation: 0.0,
      bottomOpacity: 0.0,
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
        )
      ],
    );
  }
}

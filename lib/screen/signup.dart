import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xA2F5FF7CEFB5),
      body: Stack(
        children: <Widget>[
          Container(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                    color: Color(0xA5E4D56DD9EE).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(250)))),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    color: Color(0x6DEEE5A5BCE4).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(300))),
              ),
            ),
          ),
          Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 100.0,
                ),
              ))
        ],
      ),
    );
  }
}

import 'package:finymo/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:finymo/screen/Home.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xA2F5FF7CEFB5),
      body: Stack(
        children: <Widget>[
          Container(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.6,
                decoration: BoxDecoration(
                    color: Color(0xA5E4D56DD9EE).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(250)
                    )
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0x6DEEE5A5BCE4).withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(300)
                    )
                ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:Colors.transparent
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  )
                              )
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.white
                                  )
                              )
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical:5.0),
                    width: double.infinity,
                    child: RaisedButton(
                      elevation: 5.0,
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => home()
                            )
                        );
                      },
                      padding: EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      color: Colors.white,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        '- OR -',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          'Log in with',
                          style:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: ()=> print('Login with facebook'),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0,2),
                                    blurRadius: 6.0,
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('images/facebook.jpg')
                                )
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()=> print('Login with Google'),
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0,2),
                                    blurRadius: 6.0,
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage('images/google.jpg')
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SignUp()
                          )
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Don't have an Account?",
                                style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300
                                )
                            ),
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                )
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


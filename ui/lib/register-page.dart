//import 'package:flutter/material.dart';
//
//class RegisterPage extends StatefulWidget {
//  @override
//  _RegisterPageState createState() => _RegisterPageState();
//}
//
//class _RegisterPageState extends State<RegisterPage> {
//
//  Widget _buildEmailTF() {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Text(
//          'Email',
//          style: TextStyle(),
//        ),
//        SizedBox(height: 10.0),
//        Container(
//            alignment: Alignment.centerLeft,
//            decoration: BoxDecoration(
//              border: Border(bottom: BorderSide(color: Colors.grey[200]))
//            ),
//            height: 60.0,
//            child: TextField(
//              keyboardType: TextInputType.emailAddress,
//              style: TextStyle(color: Colors.white),
//              decoration: InputDecoration(
//                border: InputBorder.none,
//                contentPadding: EdgeInsets.only(top: 14.0),
//                prefixIcon: Icon(
//                  Icons.email,
//                  color: Colors.white,
//                ),
//                hintText: "Enter your Email",
//                //hintStyle: "kHintTextStyle",
//              ),
//            )
//        )
//      ],
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Stack(
//        children: <Widget>[
//          Container(
//              height: double.infinity,
//              width: double.infinity,
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                colors: [
//                  Color(0xFF73AEF5),
//                  //Color(0xFF61A4F1),
//                  Colors.green,
//                  Color(0xFF478DE0),
//                  Color(0xFF398AE5),
//                ],
//                stops: [0.1, 0.4, 0.7, 0.9],
//              )
//            ),
//          ),
//          Container(
//            height: double.infinity,
//            child: SingleChildScrollView(
//              physics: AlwaysScrollableScrollPhysics(),
//              padding: EdgeInsets.symmetric(
//                horizontal: 40.0,
//                vertical: 120.0,
//              ),
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Text(
//                    "Sign in",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontFamily: "OpenSans",
//                      fontSize: 30.0,
//                      fontWeight: FontWeight.bold,
//                    )
//                  ),
//                  SizedBox(height: 30.0),
//                  _buildEmailTF(),
//                  SizedBox(height: 30.0),
//
//                  Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        'Password',
//                        //style: kLabelStyle,
//                      ),
//                      SizedBox(height: 10.0),
//                      Container(
//                          alignment: Alignment.centerLeft,
//                          //decoration: kBoxDecorationStyle,
//                          height: 60.0,
//                          child: TextField(
//                            obscureText: true,
//                            style: TextStyle(
//                                color: Colors.white,
//                              fontFamily: "OpensSans"
//                            ),
//                            decoration: InputDecoration(
//                              border: InputBorder.none,
//                              contentPadding: EdgeInsets.only(top: 14.0),
//                              prefixIcon: Icon(
//                                Icons.lock,
//                                color: Colors.white,
//                              ),
//                              hintText: "Enter your Password",
//                              //hintStyle: "kHintTextStyle",
//                            ),
//                          )
//                      )
//                    ],
//                  )
//                ],
//              )
//            )
//          )
//        ],
//      )
//    );
//  }
//}

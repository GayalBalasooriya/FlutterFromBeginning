import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:ui/animations/fade-animation.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50.0,),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0
                  ))),
                  SizedBox(height: 10.0,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  )))
                ],
              )
            ),

            SizedBox(height: 10.0,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0), topRight: Radius.circular(60.0))
                ),

                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40.0,),

                      Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(225, 95, 27, 3),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)
                            )
                          ]
                        ),

                        child: Column(
                          children: <Widget>[
                            FadeAnimation(1.5, Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(
                                  color: Colors.grey[200],
                                ))
                              ),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "First Name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      )
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Last Name",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email Address",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: "Country",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.add_location,
                                          color: Colors.black,
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10.0,),
//                                  TextField(
//                                    decoration: InputDecoration(
//                                        hintText: "Account Type",
//                                        hintStyle: TextStyle(color: Colors.grey),
//                                        border: InputBorder.none,
//                                        prefixIcon: Icon(
//                                          Icons.category,
//                                          color: Colors.black,
//                                        ),
//                                    ),
//                                  ),
                                  DropdownButton<String> (
                                    items: [
                                      DropdownMenuItem<String> (
                                        value: "1",
                                        child: Center(
                                          child: Text("Tourist")
                                        )
                                      ),
                                      DropdownMenuItem<String> (
                                          value: "2",
                                          child: Center(
                                              child: Text("Guide")
                                          ),
                                      ),
                                    ],
                                    onChanged: (_value) => {
                                      print(_value.toString()),
                                    },
                                    hint: Text("Account Type"),
                                  )
                                ],
                              ),
//                              child: TextField(
//                                decoration: InputDecoration(
//                                  hintText: "Email or phone number",
//                                  hintStyle: TextStyle(color: Colors.grey),
//                                  border: InputBorder.none,
//                                  prefixIcon: Icon(
//                                    Icons.email,
//                                    color: Colors.black,
//                                  )
//                                ),
//                              ),

                            )),

//                            FadeAnimation(1, Container(
//                              padding: EdgeInsets.all(10),
//                              decoration: BoxDecoration(
//                                  border: Border(bottom: BorderSide(
//                                    color: Colors.grey[200],
//                                  ))
//                              ),
//                              child: TextField(
//                                decoration: InputDecoration(
//                                    hintText: "Password",
//                                    hintStyle: TextStyle(color: Colors.grey),
//                                    border: InputBorder.none,
//                                    prefixIcon: Icon(
//                                      Icons.lock,
//                                      color: Colors.black,
//                                    )
//                                ),
//                              ),
//                            ))
                          ],
                        )
                      ),

                      SizedBox(height: 30.0,),
//                      FadeAnimation(1.6, Text("Forgot Password?", style: TextStyle(color: Colors.grey))),
//                      SizedBox(height: 20.0,),
                      FadeAnimation(1.6, Container(
                        height: 50.0,
                        margin: EdgeInsets.symmetric(horizontal: 50.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.orange[200],
                        ),
                        child: FlatButton(
                          child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          onPressed: () => print("Hey"),
                        ),

                      )),
                      SizedBox(height: 20.0,),
//                      FadeAnimation(1.7, Text("Continue with Social Media", style: TextStyle(color: Colors.grey))),
//                      SizedBox(height: 20.0,),

//                      Row(
//                        children: <Widget>[
//                          Expanded(
//                            child: FadeAnimation(1.8, Container(
//                              height: 50.0,
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50.0),
//                                color: Colors.blue,
//                              ),
//                              child: Center(
//                                child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
//                              )
//                            )),
//                          ),
//                          SizedBox(width: 30.0,),
//
//                          Expanded(
//                            child: FadeAnimation(1.9, Container(
//                              height: 50.0,
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50.0),
//                                color: Colors.blue,
//                              ),
//                              child: Center(
//                                child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
//                              )
//                            )),
//                          ),
//                        ],
//                      )
                    ],
                  )
                )
                )
              )

          ],
        )
      ),
    );
  }
}

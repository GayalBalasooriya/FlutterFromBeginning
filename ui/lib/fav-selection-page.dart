import "package:flutter/material.dart";
import 'package:ui/animations/fade-animation.dart';

class FavSelectionPage extends StatefulWidget {
  @override
  _FavSelectionPageState createState() => _FavSelectionPageState();
}

class _FavSelectionPageState extends State<FavSelectionPage> {

  Map<String, bool> values = {
    'Water and Sports': false,
    'Adventure and Hiking': false,
    'Ecotourism': false,
    'Cultural': false,
    'Religious': false,
    'Shopping Markets': false,

  };

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
                      FadeAnimation(1, Text("Travel App", style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0
                      ))),
                      SizedBox(height: 10.0,),
                      FadeAnimation(1.3, Text("Select your favourites", style: TextStyle(
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
                                          children: values.keys.map((String key) {
                                            return CheckboxListTile(
                                              title: Text(key),
                                              value: values[key],
                                              onChanged: (bool value) {
                                                setState(() {
                                                  values[key] = value;
                                                });
                                              }
                                            );
                                          }).toList()
                                        )
                                      )),
                                    ],
                                  )
                              ),

                              SizedBox(height: 30.0,),
//
                              FadeAnimation(1.6, Container(
                                  height: 50.0,
                                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.orange[200],
                                  ),
                                  child: FlatButton(
                                    child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    onPressed: () => print("Hey"),
                                  )
                              )),
                              SizedBox(height: 20.0,),
//
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

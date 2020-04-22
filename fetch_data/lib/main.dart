import 'dart:async';
import 'dart:convert';

import 'package:fetch_data/home.dart';
import 'package:fetch_data/register.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
      )
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Click me'),
            onPressed: () {
              userRegistered();
            },
          ),
        ),
      ),
    );
  }

  Future<void> userRegistered() async {
    try {
      final response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/posts'),
        headers: {
          "Accept" : "application/json"
        }
      );

      print(response.statusCode);

      if (response.statusCode == 200) {

        var registeredUser = response.body;
        print(registeredUser);

        if(registeredUser != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        }
        // If the server did return a 200 OK response,
        // then parse the JSON.
        //return Album.fromJson(json.decode(response.body));

      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load data');
      }

    } catch(e) {
      print(e.message);
    }

  }
}

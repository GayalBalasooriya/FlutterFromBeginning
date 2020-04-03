import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  List _data = await getJson();
  print(_data[0]['title']);

//  for(int i = 0; i < _data.length; i++ ) {
//    print(_data[i]['title']);
//  }

  runApp(new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('JSON Parse'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: new Center(
          //child: new Text('Parsing..${_data[0]['title']}'),
          child: new ListView.builder(
              itemCount: _data.length,
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (BuildContext context, int position) {

                final index = position ~/ 2;

                //divider
                if(position.isOdd)
                  return new Divider();

                return new ListTile(

                  title: new Text("${_data[index]['title']}",
                    style: new TextStyle(fontSize: 14.9),
                  ),

                  subtitle: new Text("${_data[index]['body']}",
                    style: new TextStyle(fontSize: 13.4,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic)
                  ),

                  leading: new CircleAvatar(
                    backgroundColor: Colors.green,
                    child: new Text("${_data[index]['title'][0].toString().toUpperCase()}",
                        style: new TextStyle(
                            fontSize: 19.4,
                            color: Colors.orangeAccent
                        )
                    )
                  ),

                  onTap: () => debugPrint("${_data[index]['id']}"),
                );
              }
          )
        ),
      )
  ));
}

Future<List> getJson() async {
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}
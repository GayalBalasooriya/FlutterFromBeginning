import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            const Text("Hello there"),
            const Text("Hey again"),
            const Text("12")
          ]
        )

//        child: new Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//                new Text("Item 1", textDirection: TextDirection.ltr, style: new TextStyle(fontSize: 15)),
//                new Text("Item 2", textDirection: TextDirection.ltr, style: new TextStyle(fontSize: 15)),
//                new Text("Item 3", textDirection: TextDirection.ltr, style: new TextStyle(fontSize: 15)),
//                const Expanded(
//                  child: const Text("Item 4"),
//                )
//            ]
//        )

//        child: new Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              new Text(
//                "First item",
//                textDirection: TextDirection.ltr,
//                style: new TextStyle(color: Colors.white),
//              ),
//              new Text(
//                "Second item",
//                textDirection: TextDirection.ltr,
//                style: new TextStyle(color: Colors.blue),
//              ),
//              new Container(
//                  color: Colors.deepOrange.shade50,
//                  alignment: Alignment.bottomLeft,
//                  child: new Text(
//                    "Third item",
//                    textDirection: TextDirection.ltr,
//                    style: new TextStyle(color: Colors.blue, fontSize: 10.1),
//                  ))
//            ])

//      child: new Text(
//        "Hello container", textDirection: TextDirection.ltr, style: new TextStyle(
//          color: Colors.white, fontWeight: FontWeight.w900
//      ),
//      ),
        );
    return null;
  }
}

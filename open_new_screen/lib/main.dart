import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Screens",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _nameFieldController = new TextEditingController();

  Future _gotToNextScreen(BuildContext context) async {
    Map results = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return NextScreen(name: _nameFieldController.text);
        }
      )
    );

    if(results != null && results.containsKey("info")) {
      print(results['info'].toString());
      _nameFieldController.text = results['info'].toString();
    } else {
      print('Nothing');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("First Screen"),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _nameFieldController,
              decoration: new InputDecoration(
                labelText: 'Enter your name',
              )
            )
          ),

          ListTile(
            title: RaisedButton(
              child: Text("Send to Next Screen"),
              onPressed: () {
                _gotToNextScreen(context);
              },
            )
          ),


        ],
      )
    );
  }
}

class NextScreen extends StatefulWidget {

  final String name;

  const NextScreen({Key key, this.name}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {

  var _backTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Second Screen"),
        centerTitle: true,
      ),

      body: new Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text("${widget.name}")
            ),

            ListTile(
              title: TextField(
                controller: _backTextFieldController,
              ),
            ),

            ListTile(
              title: FlatButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'info': _backTextFieldController.text,
                  });
                },
                child: Text("Send data back"),
              )
            )
          ]
        )
      )
//      body: ListTile(
//        title: Text("${widget.name}"),
//      )
    );
  }
}


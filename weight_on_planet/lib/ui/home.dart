import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home> {

  /* Mercury: 0.38
    Venus: 0.91
    Mars: 0.38
    Pluto: 0.06
   */

  final TextEditingController _weightController = new TextEditingController();
  double _finalResult = 0.0;
  int radioValue = 0;
  String _formattedText = "";

  void handleRadioValueChanged (int value) {
    setState(() {
      radioValue = value;
//      print(radioValue);
      switch(radioValue) {
        case 0:
          _finalResult = calculateWeight(_weightController.text, 0.06);
          _formattedText = "Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 1:
          _finalResult = calculateWeight(_weightController.text, 0.38);
          _formattedText = "Your weight on Mars is ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calculateWeight(_weightController.text, 0.91);
          _formattedText = "Your weight on Venus is ${_finalResult.toStringAsFixed(1)}";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text("Weight On Planet X"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget> [
            new Image.asset('images/planet.png', height: 133.8, width: 200.0),

            new Container(
              margin: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget> [
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration (
                      labelText: "Your weight on Earth",
                      hintText: "In Pounds",
                      icon: new Icon(Icons.person_outline),
                    )
                  ),
                  new Padding (
                    padding: new EdgeInsets.all(5.0),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //buttons
                      new Radio(
                          activeColor: Colors.brown,
                          value: 0,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged
                      ),
                      new Text("Pluto", style: TextStyle(color: Colors.white30)),

                      new Radio(
                          activeColor: Colors.red,
                          value: 1,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged
                      ),
                      new Text("Mars", style: TextStyle(color: Colors.white30)),

                      new Radio(
                          activeColor: Colors.orangeAccent,
                          value: 2,
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged
                      ),
                      new Text("Venus", style: TextStyle(color: Colors.white30)),

                    ],
                  ),

                  new Padding(
                    padding: new EdgeInsets.all(15.6),
                  ),

                  //Result Text
                  new Text(
                    _weightController.text.isEmpty ? "Please enter weight" : _formattedText + "lbs",
//                      "$_formattedText lbs",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w500,
                    )
                  )
                ]
              ),
            )

//                  new TextField(
//                    controller: null,
//                    keyboardType: TextInputType.number,
//                    decoration: new InputDecoration (
//                      labelText: "Your weight on Earth",
//                      hintText: "In Pounds",
//                      icon: new Icon(Icons.person_outline),
//                    )
//                  )



          ]
        )
      )
    );
  }

  double calculateWeight(String weight, double multiplyer) {
    if(weight.isNotEmpty && int.parse(weight) > 0) {
      return int.parse(weight) * multiplyer;
    } else {
      print("Wrong");
      return int.parse("180") * 0.38;
    }
  }


}
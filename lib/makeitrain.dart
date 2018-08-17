import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  _MakeItRainState createState() => _MakeItRainState();
}

class _MakeItRainState extends State<MakeItRain> {

  int _moneyCounter = 0;

  void _rainMoney(){
    setState(() {
      _moneyCounter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "MakeItRain!",
          style: new TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
                child: new Text(
              "Get Rich!",
              style: new TextStyle(
                  color: Colors.tealAccent,
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0),
            ),),
            new Expanded(child: new Center(
              child: new Text('\$$_moneyCounter',
              style: new TextStyle(
                color: _moneyCounter >= 10000 ? Colors.teal : Colors.tealAccent,
                fontSize: 47.0,
                fontWeight: FontWeight.w800,
              ),),
            )),
            new Expanded(child: new Center(
              child: new FlatButton(onPressed: _rainMoney, child: new Text("Let It Rain!",
              style: new TextStyle(
                fontSize: 20.0
              ),)),
            ))
          ],
        ),
      ),
    );
  }
}

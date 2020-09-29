import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: "Title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test Application'),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
        body: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
              ),
              Center(
                child: Text(
                  'Hey there',
                  style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
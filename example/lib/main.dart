import 'package:flutter/material.dart';
import 'package:circular_progress_gauge_odo/odo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Odo Demo',
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Odo(
                size: 300.0,
                inputValue: _value,
              ),
              Slider(value: _value,min: 0.0,max: 1.0, onChanged: (sliderInput){
                setState(() {
                  _value = sliderInput;
                });
              })
            ],
          )
      ),
    );
  }
}


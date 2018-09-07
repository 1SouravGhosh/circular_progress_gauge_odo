# circular_progress_gauge_odo

Introducing the new &quot;odo&quot; widget in flutter. It simulates a odometer or a speedometer style gauge in mobile application.

## Getting Started

all you need to do is include below code:
 Odo( inputValue: _value ),

Here, _value will come as input which can have a range from 0 to 1.0. 
To display custom range on Odo, give values to rangeMinValue and rangeMaxValue parameters.

## Odo widget attributes and sample values.

size = 300.0,
minRangeColor = Colors.green,
midRangeColor = Colors.amberAccent,
maxRangeColor = Colors.red,
bottomCircleColor = Colors.black,
innerCircleColor = Colors.white,
displayBackgroundColor= Colors.blueGrey,
indicatorColor = Colors.black,
displayColor = Colors.white70 ,
displayBorderColor = Colors.black,
inputValue = _value,
rangeMinValue = 0.0,
rangeMaxValue = 100.0


For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).
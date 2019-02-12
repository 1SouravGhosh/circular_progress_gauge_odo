import 'package:flutter/material.dart';
import 'package:circular_progress_gauge_odo/resources/background_circle.dart';
import 'package:circular_progress_gauge_odo/resources/indicator.dart';

class Odo extends StatelessWidget {
  Odo({
    this.size = 300.0,
    this.minRangeColor = Colors.green,
    this.midRangeColor = Colors.amberAccent,
    this.maxRangeColor = Colors.red,
    this.bottomCircleColor = Colors.black,
    this.innerCircleColor = Colors.white,
    this.displayBackgroundColor = Colors.blueGrey,
    this.indicatorColor = Colors.black,
    this.displayColor = Colors.white70,
    this.displayBorderColor = Colors.black,
    this.inputValue = 0.0,
    this.rangeMinValue = 0.0,
    this.rangeMaxValue = 1.0,
    this.displayTextSuffix = "",
  });

  final double size;
  final Color minRangeColor;
  final Color midRangeColor;
  final Color maxRangeColor;
  final Color bottomCircleColor;
  final Color innerCircleColor;
  final Color displayBackgroundColor;
  final Color indicatorColor;
  final Color displayColor;
  final Color displayBorderColor;
  final double inputValue;
  final double rangeMinValue;
  final double rangeMaxValue;
  final String displayTextSuffix;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        BackgroundCircle(
          size: size,
          minRangeColor: minRangeColor,
          midRangeColor: midRangeColor,
          maxRangeColor: maxRangeColor,
          bottomCircleColor: bottomCircleColor,
          innerCircleColor: innerCircleColor,
          displayBorderColor: displayBorderColor,
          displayColor: displayColor,
          displayBackgroundColor: displayBackgroundColor,
          displayText:
              (rangeMinValue + (rangeMaxValue - rangeMinValue) * inputValue)
                      .toStringAsFixed(2) +
                  this.displayTextSuffix,
        ),
        Indicator(
            size: size * 0.9,
            indicatorColor: indicatorColor,
            inputValue: inputValue),
      ],
    );
  }
}

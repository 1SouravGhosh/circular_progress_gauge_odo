import 'package:flutter/material.dart';

class Indicator extends StatelessWidget  {
  Indicator({this.size = 300.0,this.indicatorColor = Colors.black, this.inputValue = 0.0});

  final double size;
  final Color indicatorColor  ;
  final double inputValue;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      origin: Offset(0.0, 0.0),
      angle: -1.97 + (2*1.97*inputValue),
      child: ClipPath(
        clipper: IndicatorClipper(),
        child: Container(
          width: size/20,
          height: size*0.9,
          color: indicatorColor,
        ),
      ),
    );
  }
}

class IndicatorClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, 0.0);
    path.lineTo(size.width/1, size.height/2);
    path.lineTo(-size.width/2, size.height/2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }

}
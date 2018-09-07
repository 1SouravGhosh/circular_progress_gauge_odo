import 'package:flutter/material.dart';

class BackgroundCircle extends StatelessWidget{
  BackgroundCircle(
      {this.size = 300.0,
        this.minRangeColor = Colors.green,
        this.midRangeColor = Colors.amberAccent,
        this.maxRangeColor = Colors.red,
        this.bottomCircleColor = Colors.black,
        this.innerCircleColor = Colors.white,
        this.displayBackgroundColor = Colors.blueGrey,
        this.displayColor = Colors.white70,
        this.displayBorderColor = Colors.black,
        this.displayText,
      }
  );
  final double size;
  final Color minRangeColor;
  final Color midRangeColor;
  final Color maxRangeColor;
  final Color bottomCircleColor;
  final Color innerCircleColor;
  final Color displayBackgroundColor;
  final Color displayColor;
  final Color displayBorderColor;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular((size/2)+1.0),
          child: Container(
            height: size+1.0,
            width: size+1.0,
            color: Colors.blueGrey,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(size/2),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              CustomContainer1(size: size,rangeColor: minRangeColor,),
              CustomContainer2(size: size,rangeColor: maxRangeColor,),
              CustomContainer3(size: size,rangeColor: midRangeColor,),
              CustomContainer4(size: size,rangeColor: bottomCircleColor,),
              CustomContainer5(size: size,rangeColor: innerCircleColor,),
              CustomContainer6(size: size,rangeColor: displayBackgroundColor, displayColor: displayColor,displayBorderColor: displayBorderColor,displayText: displayText,),
            ],
          ),
        ),
      ],
    );
  }
  
}


class CustomContainer1 extends StatelessWidget{
  CustomContainer1({this.size,this.rangeColor});
  final double size;
  final Color rangeColor;
  @override
  Widget build(BuildContext context) {
     return ClipPath(
          clipper: MyClipper1(),
          child: Container(
            height: size,
            width: size,
            color: rangeColor,
          ),
        );
  }

}

class MyClipper1 extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width,size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class CustomContainer2 extends StatelessWidget{
  CustomContainer2({this.size,this.rangeColor});
  final double size;
  final Color rangeColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper2(),
      child: Container(
        height: size,
        width: size,
        color: rangeColor,
      ),
    );
  }

}

class MyClipper2 extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class CustomContainer3 extends StatelessWidget{
  CustomContainer3({this.size,this.rangeColor});
  final double size;
  final Color rangeColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper3(),
      child: Container(
        height: size,
        width: size,
        color: rangeColor,
      ),
    );
  }

}

class MyClipper3 extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, size.height/2);
    path.lineTo(size.width*2,-size.height);
    path.lineTo(-size.width,-size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class CustomContainer4 extends StatelessWidget{
  CustomContainer4({this.size,this.rangeColor});
  final double size;
  final Color rangeColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper4(),
      child: Container(
        height: size,
        width: size,
        color: rangeColor,
      ),
    );
  }

}

class MyClipper4 extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, size.height/2);
    path.lineTo(0.0,size.height/1.4);
    path.lineTo(0.0,size.height);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width,size.height/1.4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}


class CustomContainer5 extends StatelessWidget{
  CustomContainer5({this.size,this.rangeColor});
  final double size;
  final Color rangeColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((size*.75)/2),
      child: Container(
        alignment: Alignment.center,
        height: size*.75,
        width: size*.75,
        color: rangeColor,
      ),
    );
  }

}

class CustomContainer6 extends StatelessWidget{
  CustomContainer6({this.size,this.rangeColor,this.displayColor,this.displayBorderColor,this.displayText});
  final double size;
  final Color rangeColor,displayColor,displayBorderColor;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ClipPath(
          clipper: MyClipper6(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size/2),
            child: Container(
              alignment: Alignment.center,
              height: size*0.75,
              width: size*0.75,
              color: rangeColor,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(size/100),
          child: Container(
            decoration: BoxDecoration(
              color: displayColor,
              border: Border.all(color: displayBorderColor,width: 2.0)
            ),
            margin: EdgeInsets.only(bottom: size/15),
            height: size/6,
            width: size/3,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(displayText, style: TextStyle(fontSize: 30.0),),
            ),
          ),
        )
      ],
    );
  }

}

class MyClipper6 extends CustomClipper<Path>{

  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/2, size.height/2);
    path.lineTo(0.0,size.height/2);
    path.lineTo(0.0,size.height);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width,size.height/2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}


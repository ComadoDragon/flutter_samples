import 'package:flutter/material.dart';

class CustomClipperDemo8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Clipper8 Demo"),
      ),
      body: ClipPath(
        clipper: MyCustomClipper(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue,
            width: double.infinity,
            height: 300.0,
          ),
        ),
      ),
    );

  }
}

class MyCustomClipper extends CustomClipper<Path> {

  double radius = 20.0;

  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(radius, 0.0);
    path.arcToPoint(Offset(0.0, radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(0.0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width, radius);
    path.arcToPoint(Offset(size.width - radius, 0.0),
        clockwise: true, radius: Radius.circular(radius));

    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;

}

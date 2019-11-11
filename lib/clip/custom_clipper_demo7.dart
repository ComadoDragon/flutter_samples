import 'package:flutter/material.dart';

class CustomClipperDemo7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Clipper7 Demo"),
      ),
      body: ClipPath(
        clipper: MyCustomClipper(),
        child: Container(
          color: Colors.blue,
          width: double.infinity,
          height: 300.0,
        ),
      ),
    );

  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 20;
    while (curXPos < size.width) {
      curXPos += increment;
      path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
    }
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;

}

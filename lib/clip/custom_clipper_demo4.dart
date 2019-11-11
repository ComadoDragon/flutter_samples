import 'package:flutter/material.dart';

class CustomClipperDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Clipper4 Demo"),
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
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => false;

}

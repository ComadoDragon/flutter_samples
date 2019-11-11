import 'package:flutter/material.dart';

class ClipRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRect Demo"),
      ),
      body: Center(
        child: ClipRect(
          child: Container(
            color: Colors.blue,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

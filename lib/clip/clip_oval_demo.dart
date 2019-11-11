import 'package:flutter/material.dart';

class ClipOvalDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval Demo"),
      ),
      body: Center(
        child: ClipOval(
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

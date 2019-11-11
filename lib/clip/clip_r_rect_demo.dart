import 'package:flutter/material.dart';

class ClipRReactDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Demo"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          ),
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

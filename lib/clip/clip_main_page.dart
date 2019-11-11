import 'package:flutter/material.dart';
import 'package:flutter_samples/clip/clip_oval_demo.dart';
import 'package:flutter_samples/clip/clip_r_rect_demo.dart';
import 'package:flutter_samples/clip/clip_rect_demo.dart';
import 'package:flutter_samples/clip/custom_clipper_demo.dart';
import 'package:flutter_samples/clip/custom_clipper_demo2.dart';

class ClipMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Main Page"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ClipRectDemo()),),
            child: Text("ClipRect Demo"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ClipOvalDemo()),),
            child: Text("ClipOval Demo"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ClipRReactDemo()),),
            child: Text("ClipRReact Demo"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CustomClipperDemo()),),
            child: Text("Custom Clipper Demo"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CustomClipperDemo2()),),
            child: Text("Custom Clipper2 Demo"),
          ),
        ],
      ),
    );
  }
}

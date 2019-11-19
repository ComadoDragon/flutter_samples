import 'package:flutter/material.dart';
import 'package:flutter_samples/animation/animation_main_page.dart';
import 'package:flutter_samples/clip/clip_main_page.dart';
import 'package:flutter_samples/main.dart';

class Routes {
  static final routes = <String, WidgetBuilder> {
    '/' : (BuildContext context) => MyHomePage(title: 'Flutter Demo Home Page'),
    '/clippage' : (BuildContext context) => ClipMainPage(),
    '/animationpage' : (BuildContext context) => AnimationMainPage(),

  };
}
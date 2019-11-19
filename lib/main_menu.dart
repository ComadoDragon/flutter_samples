import 'package:flutter/material.dart';
import 'package:flutter_samples/animation/animation_main_page.dart';
import 'package:flutter_samples/clip/clip_main_page.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: _raisedButton(context, '1. Clip Demo', '/clippage'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: _raisedButton(context, '2. Animation Demo', '/animationpage'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _raisedButton(BuildContext context, String text, String routeName) {
    return RaisedButton(
      onPressed: () {
        return Navigator.pushNamed(context, routeName);
      },
      color: Colors.red,
      textColor: Colors.white,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      splashColor: Colors.redAccent,
      colorBrightness: Brightness.light,
      shape: StadiumBorder(),
      child: Text(text),
    );
  }
}

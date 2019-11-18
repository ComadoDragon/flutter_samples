import 'package:flutter/material.dart';
import 'package:flutter_samples/animation/animation_a_page_route_transition_page.dart';
import 'package:flutter_samples/animation/fade_a_widget_in_and_out.dart';
import 'package:flutter_samples/animation/menu_dashboard.dart';
import 'package:flutter_samples/animation/physics_card_drag_demo.dart';

class AnimationMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Main Page"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AnimationAPageRouteTransitionPage()),),
            child: Text("Animate a page route transition"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PhysicsCardDragDemo()),),
            child: Text("Physics Card Drag Demo"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AnimatedContainer()),),
            child: Text("Animated Container App"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => FadeAWidgetInAndOut(title: "Fade a widget in and out",)),),
            child: Text("Fade a widget in and out"),
          ),
          FlatButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MenuDashboard()),),
            child: Text("Menu DashBoard"),
          ),
        ],
      ),
    );
  }
}

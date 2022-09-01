import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final child;
  final function;
  static bool holdingbutton = false;
  button({this.child, this.function});

  bool isholdingButton() {
    return holdingbutton;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTapDown: (details) {
        holdingbutton = true;
        function();
      },
      onTapUp: (details) {
        holdingbutton = false;
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(12),
          color: Colors.brown[300],
          child: child,
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyMario extends StatelessWidget {
  final direction;
  final run;
  final size;
  MyMario({this.direction, this.run, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (direction == "right") {
      return Container(
        height: size,
        width: size,
        child: run
            ? Image.asset(
                'lib/images/position_mario.png',
              )
            : Image.asset(
                'lib/images/running_mario.png',
              ),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          height: size,
          width: size,
          child: run
              ? Image.asset(
                  'lib/images/position_mario.png',
                )
              : Image.asset(
                  'lib/images/running_mario.png',
                ),
        ),
      );
    }
  }
}

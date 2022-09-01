import 'dart:math';

import 'package:flutter/material.dart';

class jumpingMario extends StatelessWidget {
  final direction;
  final size;
  jumpingMario({this.direction, this.size});
  @override
  Widget build(BuildContext context) {
    if (direction == "right") {
      return Container(
        height: size,
        width: size,
        child: Image.asset('lib/images/jumping_mario.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          height: size,
          width: size,
          child: Image.asset('lib/images/jumping_mario.png'),
        ),
      );
    }
  }
}

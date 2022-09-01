import 'package:flutter/material.dart';

class cloud extends StatelessWidget {
  final size;
  cloud({this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: size,
      width: size,
      child: Image.asset('lib/images/cloud.png'),
    );
  }
}

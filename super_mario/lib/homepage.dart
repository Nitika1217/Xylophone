import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.brown,
              )),
        ],
      ),
    );
  }
}

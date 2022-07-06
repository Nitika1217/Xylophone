// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 32, 10, 92),
              centerTitle: true,
              title: (Text('My First App'))),
          body: Ink(
            color: Color.fromARGB(255, 216, 171, 186),
            child: Column(children: const <Widget>[
              Text(
                  'Hello! My name is Nitika and this is the first app i have made.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 43, 21, 82),
                      fontSize: 30,
                      fontFamily: 'Raleway')),
              SizedBox(
                height: 80,
              ),
              Image(
                image: AssetImage('assets/images/smiley.jfif'),
                width: 300,
                height: 300,
              ),
            ]),
          )),
    );
  }
}

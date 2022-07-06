// ignore_for_file: camel_case_types, prefer_const_constructors, await_only_futures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kwiz_app/landing.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  nextPage() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => landing_page()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Container(
                height: 500,
                padding: EdgeInsets.only(left: 35, right: 35),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.yellow, width: 6),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/Kwiz_logo.png'),
                      radius: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('KWIZ APP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                            fontSize: 40)),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Test Your IQ',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.yellow)),
                  ],
                ),
              ),
            )));
  }
}

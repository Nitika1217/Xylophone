// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_mario/homepage.dart';
import 'package:delayed_display/delayed_display.dart';

class gameOverPage extends StatelessWidget {
  int score = 0;
  gameOverPage({required this.score});

  var gameFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(fontSize: 22, color: Colors.white));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                ("lib/images/gameOver.gif"),
              ),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 205),
                    child: Row(
                      children: [
                        Text("Your Score is :", style: gameFont),
                        SizedBox(height: 20),
                        Text(score.toString(), style: gameFont),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 280),
                DelayedDisplay(
                  delay: Duration(seconds: 3),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: TextButton(
                          onPressed: () => exit(0),
                          child: Text('Exit', style: gameFont),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 140),
                      child: TextButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          }),
                          child: Text('Try Again', style: gameFont),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent)),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}

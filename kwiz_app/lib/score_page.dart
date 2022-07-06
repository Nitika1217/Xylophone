// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kwiz_app/landing.dart';

class Score extends StatelessWidget {
  int score = 0;
  Score({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.yellow,
          leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Kwiz_logo.png')),
          title: Text(
            'Kwiz App',
            style: TextStyle(
                color: Colors.blue, fontSize: 34, fontFamily: 'Lobster'),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => exit(0),
              icon: Icon(Icons.close_rounded),
              color: Colors.blue,
              iconSize: 44,
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'SCORE BOARD !!!',
              style: TextStyle(
                  color: Colors.orange, fontFamily: 'Lobster', fontSize: 40),
            ),
            SizedBox(
              height: 20,
            ),
            (score >= 4)
                ? Image(
                    image: AssetImage('assets/images/happy emoji.gif'),
                    height: 180,
                    width: 250,
                  )
                : Image(
                    image: AssetImage('assets/images/cry emoji.gif'),
                    height: 180,
                    width: 250,
                  ),
            SizedBox(
              height: 24,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 36, right: 36),
                child: Container(
                    height: 200,
                    padding: EdgeInsets.only(left: 38, right: 38),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.yellow, width: 8),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(children: [
                      SizedBox(
                        height: 20,
                      ),
                      (score >= 4)
                          ? Text(
                              'Good Score!!',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Lobster',
                                  fontSize: 28),
                            )
                          : Text('Better Luck Next Time!!',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'Lobster',
                                  fontSize: 28)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Your Score is :',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Lobster',
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        score.toString(),
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Lobster',
                            fontSize: 28),
                      )
                    ]))),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => landing_page()));
                }),
                child: Text('Try Again',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lobster',
                        fontSize: 28)),
                style: TextButton.styleFrom(backgroundColor: Colors.red)),
          ],
        ),
      ),
    );
  }
}

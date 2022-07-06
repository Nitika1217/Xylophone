// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/xylophone.png')),
        backgroundColor: Color.fromARGB(255, 43, 39, 39),
        title: Text(
          'Xylophone',
          style: TextStyle(
              color: Color.fromARGB(255, 243, 240, 241),
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              fontSize: 28),
        ),
        actions: [
          IconButton(
              onPressed: () => exit(0),
              icon: Icon(
                Icons.close_rounded,
                size: 45,
              ))
        ],
      ),
      body: Column(
        children: [
          Xylokey(1, Colors.blue),
          Xylokey(2, Colors.red),
          Xylokey(3, Colors.orange),
          Xylokey(4, Colors.yellow),
          Xylokey(5, Colors.green),
          Xylokey(6, Colors.purple),
          Xylokey(7, Colors.pink),
        ],
      ),
    ));
  }

  Expanded Xylokey(int note, Color color) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        playSound(note);
      },
      child: Container(
        color: color,
      ),
    ));
  }
}

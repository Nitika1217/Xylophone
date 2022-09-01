// ignore_for_file: camel_case_types, prefer_const_constructors, await_only_futures, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:super_mario/homepage.dart';
import 'package:audioplayers/audioplayers.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  void playSound(String s) {
    final player = AudioCache();
    player.play(s);
  }

  @override
  void initState() {
    super.initState();
    playSound("audios/mario_song.mp3");
    nextPage();
  }

  nextPage() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Image.asset(
              'lib/images/mario_image.png',
              height: 400,
              width: 400,
            ),
          ),
        ),
      ),
    );
  }
}

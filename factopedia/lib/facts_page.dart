// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:math';

class facts_page extends StatefulWidget {
  @override
  State<facts_page> createState() => _facts_pageState();
}

class _facts_pageState extends State<facts_page> {
  int factNumber = 1;
  void generate_facts() {
    setState(() {
      factNumber = Random().nextInt(10) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 39, 92),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: Hero(
          tag: 'logo',
          child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/factoLogo.jpg')),
        ),
        centerTitle: true,
        title: Text(
          'Factopedia',
          style: TextStyle(fontSize: 26, fontFamily: 'Lobster'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout_rounded))
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage('assets/images/fact$factNumber.jpg'),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(14.0),
              child: ElevatedButton(
                  onPressed: () {
                    generate_facts();
                  },
                  child: Text(
                    'Next Fact!!',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

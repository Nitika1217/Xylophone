// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, camel_case_types, unused_import, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unrelated_type_equality_checks
import 'dart:developer';
import 'package:flutter/material.dart';
import 'facts_page.dart';

void main() {
  runApp(Factopedia());
}

class Factopedia extends StatelessWidget {
  Factopedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Factopedia',
      home: loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SnackBar snackBar = SnackBar(
    backgroundColor: Colors.white,
    content: Text(
      'Invalid Username or Password!! Try Again',
      style: TextStyle(color: Colors.black, fontSize: 22),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 39, 92),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 60,
            ),
            Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('assets/images/factoLogo.jpg'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 45,
                child: ListTile(
                  leading: Icon(Icons.domain_rounded),
                  trailing: Text(
                    'Made By Nitika',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        fontFamily: 'Lobster'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  )),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.white,
                    width: 2,
                  )),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (usernameController.text == "Nitika_17" &&
                    passwordController.text == "122000") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => facts_page()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Text('Sign in'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 53, 103, 211)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 26, vertical: 12)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            ),
          ]),
        )),
      ),
    );
  }
}

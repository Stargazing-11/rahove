// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rahove/Screens/LogIn.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Rahove',
        style: TextStyle(
            color: Color.fromARGB(255, 151, 71, 255),
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    ));
  }
}

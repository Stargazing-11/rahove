import 'package:flutter/material.dart';
import 'package:rahove/Screens/Home.dart';
import 'package:rahove/Screens/LogIn.dart';
import 'package:rahove/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Poppin",
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

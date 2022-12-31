// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rahove/Screens/Register.dart';
import 'package:rahove/Screens/helpers/button.dart';
import 'package:rahove/Screens/helpers/field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove/Screens/helpers/iconButton.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Get started',
            style: TextStyle(
                color: Color.fromARGB(255, 151, 71, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.poppins().toString()),
          ),
          SizedBox(height: 10),
          Text('become a member of our platform'),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                field('Email'),
                SizedBox(
                  height: 25,
                ),
                field('Password'),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget password',
                    style: TextStyle(color: Colors.black38),
                  ),
                  onHover: (value) {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          button('Log in'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 1,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Text('Log in With'),
              SizedBox(
                width: 9,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 5),
                  height: 1,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconButton(FontAwesomeIcons.google, Colors.green),
              SizedBox(
                width: 50,
              ),
              iconButton(FontAwesomeIcons.facebook, Colors.blue),
              SizedBox(
                width: 50,
              ),
              iconButton(FontAwesomeIcons.apple, Colors.black),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 151, 71, 255),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
